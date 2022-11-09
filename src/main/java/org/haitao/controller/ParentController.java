package org.haitao.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.haitao.entity.Admin;
import org.haitao.entity.Message;
import org.haitao.entity.Message2;
import org.haitao.entity.Parent;
import org.haitao.entity.Student;
import org.haitao.entity.Teacher;
import org.haitao.entity.Transcript;
import org.haitao.entity.TranscriptRecord;
import org.haitao.service.impl.AnalyzeExcel;
import org.haitao.service.impl.ParentService;
import org.haitao.service.impl.StudentService;
import org.haitao.service.impl.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.BadSqlGrammarException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;


@RequestMapping(value = "parentController")
@SessionAttributes(types = { Transcript.class,TranscriptRecord.class, Parent.class, Student.class, ArrayList.class, String.class, Message.class,Integer.class })
@Controller
public class ParentController {
	@Autowired
	@Qualifier("studentService")
	private StudentService studentService;
	@Autowired
	@Qualifier("parentService")
	private ParentService parentService;
	@Autowired
	@Qualifier("teacherService")
	private TeacherService teacherService;

	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}

	public void setParentService(ParentService parentService) {
		this.parentService = parentService;
	}

	public void setTeacherService(TeacherService teacherService) {
		this.teacherService = teacherService;
	}



	private int mygrade;
	private int myclass;
	private Teacher teacher;
	private Parent parent;
	private Student student;
	// -------------------------------实现方法-----------------------

	@RequestMapping(value = "parentLogin", method = RequestMethod.POST)
	public String parentLogin(ModelMap modelMap, @RequestParam(value = "phone") String phoneNo,
			@RequestParam(value = "password") String password,@RequestParam(value = "grade") int mygrade,@RequestParam(value = "myclass")int myclass ) {
		this.mygrade = mygrade; this.myclass=myclass;
		String tableName = String.valueOf(mygrade)+"l"+String.valueOf(myclass)+"l"+"parent";
		modelMap.put("pTableName", tableName);
		HashMap<String,Object> hashMap = new HashMap();
		hashMap.put("tableName", tableName);
		hashMap.put("phoneno", phoneNo);
		List<Parent> par = new ArrayList<Parent>();
		try {
			par = parentService.queryParentByPhoneno(hashMap);
		}catch(BadSqlGrammarException e) {
			modelMap.put("parValid", "false");
			System.out.println("登录失败");
			return "login";
		}
		if(par.size()<1) {
			modelMap.put("parValid", "false");
			System.out.println("登录失败");
			return "login";
		}else if (!par.get(0).getPassword().equals(password.trim())) {
			modelMap.put("parValid", "false");
			System.out.println("登录失败");
			return "login";
		} else {
			parent = par.get(0);
			modelMap.put("account", parent);
			String tableName2 = String.valueOf(mygrade)+"l"+String.valueOf(myclass)+"l"+"student";
			HashMap<String,Object> hashMap2 = new HashMap();
			hashMap2.put("tableName", tableName2);
			hashMap2.put("stuNo", parent.getStuNo());
			List<Student> students = studentService.queryStudentByStuNo(hashMap2);
			this.student = students.get(0);
			modelMap.put("student", student);
			System.out.println("登录成功！");
			
			// 获取班主任
			HashMap<String,Object> hashMap3 = new HashMap();
			hashMap3.put("grade", mygrade);
			hashMap3.put("class",myclass);
			this.teacher = teacherService.queryChargeTeacher(hashMap3); 
			System.out.println(teacher);
			// 查询任务。。。。。
			List<Message> messages = parentService.queryMessageByTeaNo(teacher.getTeaNo());
			for(int i=0;i<messages.size();i++) {
				String stunoTemp=messages.get(i).getStuNo();
				if(stunoTemp.equals("0")||stunoTemp.equals(student.getStuNo())) {
				}else {
					messages.remove(i);
				}
			}
			System.out.println(messages);
			modelMap.put("messages", messages);
			modelMap.put("messageLength", messages.size());
			modelMap.put("messageIndex",0);
			
			return "parentPage";
		}
	}
	@RequestMapping(value = "leaveMessage", method = RequestMethod.POST)
	public String addMessage(Message2 message2) {
		System.out.println("开始添加消息");
		message2.setTeaNo(teacher.getTeaNo());
		String personInfo = student.getName()+"的家长:"+parent.getName();
		message2.setPersonInfo(personInfo);
		message2.setMessageDate(new Date());
		message2.setIsOpen(0);
		
		if (parentService.addMessage2(message2) != 0) {
			System.out.println("添加消息成功");
		};
		return "html/parentframe/leave-message";
	}
	
	@RequestMapping(value = "queryTR", method = RequestMethod.GET)
	public ModelAndView queryTR() {
		List<TranscriptRecord> transcriptRecords = teacherService.queryTranscriptRecordByteaNo(teacher.getTeaNo());
		System.out.println(transcriptRecords);
		ModelAndView modelAndView = new ModelAndView("html/parentframe/get-transcript");
		modelAndView.addObject("transcriptRecords", transcriptRecords);
		modelAndView.addObject("TRLength", transcriptRecords.size() - 1);
		modelAndView.addObject("TRIndex", 0); // 第一页
		modelAndView.addObject("TRPages", (transcriptRecords.size() - 1) / 10 + 1);

		return modelAndView;
	}
	@RequestMapping(value = "openMyTranscript/{tableName}")
	public String openMyTranscript(@PathVariable("tableName") String tableName,ModelMap modelMap) {
		HashMap hashMap = new HashMap();
		hashMap.put("tableName", tableName);
		hashMap.put("stuNo", student.getStuNo());
		Transcript transcript = teacherService.queryTranscriptByStuNo(hashMap);
		modelMap.put("transcript", transcript);
		modelMap.put("transcriptName", tableName.split("l")[3]);
		return "forward:/html/parentframe/myTranscript.jsp";
	}
	
	
	
	
	
	@RequestMapping(value = "analyzeTest/{stuno}/{flag}", method = RequestMethod.GET)
	public ModelAndView analyzeTest(@PathVariable("stuno") String stuNo, @PathVariable("flag") String flag) {
		// 通过前缀找到该班级对应的测试类型的成绩单名
		String prefix = null;	
		List<TranscriptRecord> TRs = null;
		if (flag.equals("day")) {
			System.out.println("day");
			prefix = teacher.getGrade1()+"l"+teacher.getClass1()+"l"+"day";
			TRs = teacherService.queryTRByPrefix(prefix);
		} else if (flag.equals("week")) {
			System.out.println("week");
			prefix = teacher.getGrade1()+"l"+teacher.getClass1()+"l"+ "week";
			TRs = teacherService.queryTRByPrefix(prefix);
		} else {
			TRs = teacherService.queryTRMME(teacher.getGrade1()+"l"+teacher.getClass1()+"l");
		}
		
		// 成绩单过少，无法分析
		if(TRs.size()<=2) {
			ModelAndView modelAndView = new ModelAndView("html/parentframe/get-transcript");
			modelAndView.addObject("err","theLess" );
			return modelAndView;
		}
		int num = 0;
		if (TRs.size() < 10) {
			num = TRs.size();
		} else {
			num = 10;
		}

		List<Transcript> perTranscripts = new ArrayList<Transcript>();
		HashMap hashMap = new HashMap();
		hashMap.put("stuNo", stuNo);
		for (int i = 0; i < num; i++) {
			hashMap.put("tableName", TRs.get(i).getTranscriptName()); // 成绩单名
			Transcript transcript = teacherService.queryTranscriptByStuNo(hashMap);
			perTranscripts.add(transcript);
		}
		ModelAndView modelAndView = new ModelAndView("html/echarts/personLineChart");
		modelAndView.addObject("perTranscripts", perTranscripts);
		modelAndView.addObject("perLength", perTranscripts.size() - 1);
		return modelAndView;
	}

	@RequestMapping(value = "analyzeRankTest/{stuno}/{flag}", method = RequestMethod.GET)
	public ModelAndView analyzeRankTest(@PathVariable("stuno") String stuNo, @PathVariable("flag") String flag) {
		// 通过前缀找到该班级对应的测试类型的成绩单名
		String prefix = null;
		System.out.println("flag="+flag);
		List<TranscriptRecord> TRs = null;
		if (flag.equals("day")) {
			prefix = teacher.getGrade1()+"l"+teacher.getClass1()+"l" + "day";
			TRs = teacherService.queryTRByPrefix(prefix);
			
		} else if (flag.equals("week")) {
			prefix = teacher.getGrade1()+"l"+teacher.getClass1()+"l" + "week";
			TRs = teacherService.queryTRByPrefix(prefix);
		} else {
			TRs = teacherService.queryTRMME(teacher.getGrade1()+"l"+teacher.getClass1()+"l");
		}
		
		if(TRs.size()<=2) {
			ModelAndView modelAndView = new ModelAndView("html/parentframe/get-transcript");
			modelAndView.addObject("err","theLess" );
			return modelAndView;
		}
		
		int num = 0;
		if (TRs.size() < 10) {
			num = TRs.size();
		} else {
			num = 10;
		}
		HashMap hashMap = new HashMap();
		hashMap.put("stuNo", stuNo);
		List<Integer> ranks = new ArrayList<Integer>();
		for (int i = 0; i < num; i++) {
			hashMap.put("tableName", TRs.get(i).getTranscriptName()); // 成绩单名
			Integer rank = teacherService.getRankByStuNo(hashMap);
			ranks.add(rank);
		}

		ModelAndView modelAndView = new ModelAndView("html/echarts/personRankLineChart");
		modelAndView.addObject("ranks", ranks);
		modelAndView.addObject("perLength", ranks.size() - 1);
		System.out.println(ranks);
		return modelAndView;
	}
}
