package org.haitao.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//import javax.websocket.Session;

import org.apache.ibatis.annotations.Param;
import org.haitao.entity.Message;
import org.haitao.entity.Message2;
import org.haitao.entity.Parent;
import org.haitao.entity.Student;
import org.haitao.entity.Teacher;
import org.haitao.entity.Transcript;
import org.haitao.entity.TranscriptRecord;
import org.haitao.mapper.StudentMapper;
import org.haitao.service.impl.AnalyzeExcel;
import org.haitao.service.impl.ParentService;
import org.haitao.service.impl.StudentService;
import org.haitao.service.impl.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.http.HttpRequest;
import org.springframework.jdbc.BadSqlGrammarException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping(value = "teacherController")
@SessionAttributes(types = { Parent.class, Student.class, Teacher.class, ArrayList.class, Message.class, Integer.class,
		Transcript.class, TranscriptRecord.class, String.class, Double.class })
@Controller
public class TeacherController {
	@Autowired
	@Qualifier("teacherService")
	private TeacherService teacherService;
	@Autowired
	@Qualifier("parentService")
	private ParentService parentService;
	@Autowired
	@Qualifier("studentService")
	private StudentService studentService;
	@Autowired
	@Qualifier("analyzeExcel")
	private AnalyzeExcel analyzeExcel;

	private Teacher teacher;

	// ???????????????????????????
	private String openingTranscriptTableName;

	public String getOpeningTranscriptTableName() {
		return openingTranscriptTableName;
	}

	public void setOpeningTranscriptTableName(String openingTranscriptTableName) {
		this.openingTranscriptTableName = openingTranscriptTableName;
	}

	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public void setTeacherService(TeacherService teacherService) {
		this.teacherService = teacherService;
	}

	public void setParentService(ParentService parentService) {
		this.parentService = parentService;
	}

	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}

	public void setAnalyzeExcel(AnalyzeExcel analyzeExcel) {
		this.analyzeExcel = analyzeExcel;
	}

	public String getClassName(Teacher teacher) {
		String className = teacher.getGrade1().toString() + "l" + teacher.getClass1().toString() + "l";
		return className;
	}

	// -------------------------????????????--------------------------------
	@RequestMapping(value = "teacherLogin", method = RequestMethod.POST)
	public String teacherLogin(ModelMap modelMap, @RequestParam(value = "phone") String phoneNo,
			@RequestParam(value = "password") String password) {
		List<Teacher> tea = teacherService.queryTeachersByteaPhone(phoneNo);
		if (tea.size() < 1) {
			System.out.println("????????????");
			modelMap.put("valid", "false");
			return "login";
		} else if (!tea.get(0).getPassword().equals(password.trim())) {
			System.out.println("????????????");
			modelMap.put("valid", "false");
			return "login";
		} else {
			teacher = tea.get(0);
			System.out.println(teacher);
			modelMap.put("account", teacher);
			this.setTeacher(teacher);
			queryMessages(modelMap);
			lookMessage2(modelMap);
			System.out.println("???????????????");
			return "teacherPage";
		}
	}

	// ?????????????????????????????????????????????modelMap
	public void queryMessages(ModelMap modelMap) {
		List<Message> messages = teacherService.queryMessageByTeaNo(teacher.getTeaNo());
		System.out.println(messages);
		modelMap.put("messages", messages);
		modelMap.put("messageLength", messages.size() - 1);
		modelMap.put("messageIndex", 0); // ?????????
		modelMap.put("messagePages", (messages.size() - 1) / 10 + 1);

	}

	@RequestMapping(value = "upload", consumes = "multipart/form-data")
	public ModelAndView uploadAndAnalyze(@RequestParam("myfile") MultipartFile file, @RequestParam("id") int id)
			throws IOException {
		ModelAndView modelAndView = new ModelAndView("html/teacherframe/upload-stuparinfo");
		InputStream input = file.getInputStream();
		OutputStream output;
		if (id == 0) {
			// ??????????????????
			output = new FileOutputStream("D:\\aExcel\\parent.xlsx");
		} else {
			// ??????????????????
			output = new FileOutputStream("D:\\aExcel\\student.xlsx");
		}

		byte[] bs = new byte[1024];
		int len = -1;
		while ((len = input.read(bs)) != -1) {
			output.write(bs, 0, len);
		}
		output.close();
		input.close();

		List<Parent> repeatParents = new ArrayList<Parent>();
		List<Student> repeatStudents = new ArrayList<Student>();
		if (id == 0) {
			// ??????????????????
			String tableName = getClassName(teacher) + "parent";
			List<String> tableNames = teacherService.queryTableName("parent");
			if (!tableNames.contains(tableName)) {
				try {
					parentService.creatTable(getClassName(teacher)); // ????????????l??????l
				} catch (DataIntegrityViolationException e) {
					System.out.println("????????????????????????:?????????????????????");
					modelAndView.addObject("err", "noStuTable");
					return modelAndView;
				}
				System.out.println("?????????");
			}
			// ???excel???????????????
			List<Parent> parents = analyzeExcel.readParentExcel("D:\\aExcel\\parent.xlsx");
			// ???????????????
			HashMap hashMap = new HashMap();
			hashMap.put("tableName", tableName);
			for (Parent par : parents) {
				hashMap.put("parent", par);
				try {
					parentService.addParent(hashMap); // ???????????????
				} catch (DuplicateKeyException e) {
					modelAndView.addObject("err", "repeatErr");
					repeatParents.add(par);
					System.out.println(par.getName() + ":??????");
				} catch (DataIntegrityViolationException e) {
					System.out.println("excel??????????????????");
					modelAndView.addObject("err", "formErr");
					return modelAndView;
				}

			}
		} else {
			// ??????????????????

			String tableName = getClassName(teacher) + "student";
			List<String> tableNames = teacherService.queryTableName("student");
			if (!tableNames.contains(tableName)) {
				// ????????????????????????????????????????????????
				try {
					studentService.creatTable(tableName);
				} catch (DataIntegrityViolationException e) {
					System.out.println("why");
					modelAndView.addObject("err", "noStuTable");
					return modelAndView;
				}
				System.out.println("?????????");
			}
			// ???excel???????????????
			List<Student> students = analyzeExcel.readStudentExcel("D:\\aExcel\\student.xlsx");
			// ???????????????
			HashMap<String, Object> hashMap = new HashMap();
			hashMap.put("tableName", tableName);
			for (Student stu : students) {
				hashMap.put("student", stu);
				try {
					studentService.addStudent(hashMap);
				} catch (DuplicateKeyException e) {
					modelAndView.addObject("err", "repeatErr");
					repeatStudents.add(stu);
					System.out.println(stu.getName() + ":??????");
				} catch (DataIntegrityViolationException e) {
					System.out.println("excel??????????????????");
					modelAndView.addObject("err", "formErr");
					return modelAndView;
				}

			}
		}

		// modelAndView.addObject("",??????);
		System.out.println("??????excel??????");
		if (repeatParents.size() != 0) {
			modelAndView.addObject("repeatPersons", repeatParents);
			modelAndView.addObject("repeatLength", repeatParents.size());
		} else if (repeatStudents.size() != 0) {
			modelAndView.addObject("repeatPersons", repeatStudents);
			modelAndView.addObject("repeatLength", repeatStudents.size());
		} else {
			modelAndView.addObject("err", "null");
			System.out.println("?????????????????????");
		}

		return modelAndView;
	}

	@RequestMapping(value = "addParent", method = RequestMethod.POST)
	public ModelAndView addParent(Parent parent) {
		ModelAndView modelAndView = new ModelAndView("html/teacherframe/input-stuparinfo");
		System.out.println(parent);

		HashMap hashMap = new HashMap();

		String tableName = getClassName(teacher) + "parent";
		List<String> tableNames = teacherService.queryTableName("parent");
		if (!tableNames.contains(tableName)) {
			try {
				studentService.creatTable(getClassName(teacher));
			} catch (DataIntegrityViolationException e) {
				System.out.println("????????????????????????:?????????????????????");
				modelAndView.addObject("valid", "noStuTable");
				return modelAndView;
			}
			System.out.println("?????????");
		}
		hashMap.put("tableName", tableName);
		hashMap.put("parent", parent);

		try {
			parentService.addParent(hashMap); // ???????????????
		} catch (DuplicateKeyException e) {
			System.out.println(parent.getName() + ":??????");
			modelAndView.addObject("per", parent);
			modelAndView.addObject("valid", "false");
			System.out.println("????????????");
			return modelAndView;
		} catch (DataIntegrityViolationException e) {
			// ???????????????????????????
			System.out.println("????????????:???????????????????????????");
			modelAndView.addObject("valid", "noStuNo");
			return modelAndView;
		}

		modelAndView.addObject("valid", "true");
		System.out.println("???????????????????????????");

		return modelAndView;
	}

	@RequestMapping(value = "addStudent", method = RequestMethod.POST)
	public ModelAndView addStudent(Student student) {
		ModelAndView modelAndView = new ModelAndView("html/teacherframe/input-stuparinfo");
		System.out.println(student);

		HashMap hashMap = new HashMap();
		String tableName = getClassName(teacher) + "student";
		List<String> tableNames = teacherService.queryTableName("student");
		if (!tableNames.contains(tableName)) {
			// ????????????????????????????????????????????????
			studentService.creatTable(tableName);
			System.out.println("?????????");
		}
		hashMap.put("tableName", tableName);
		hashMap.put("student", student);

		try {
			studentService.addStudent(hashMap); // ???????????????
		} catch (DuplicateKeyException e) {
			System.out.println(student.getName() + ":??????");
			modelAndView.addObject("per", student);
			modelAndView.addObject("valid", "false");
			System.out.println("????????????");
			return modelAndView;
		}

		modelAndView.addObject("valid", "true");
		System.out.println("???????????????????????????");

		return modelAndView;
	}

	@RequestMapping(value = "queryParentInfo", method = RequestMethod.POST)
	public ModelAndView queryParentInfo(@RequestParam("point") String queryFlag,
			@RequestParam("searchContent") String content) {
		// ????????????
		String tableName = getClassName(teacher) + "parent";
		List<Parent> parents = new ArrayList<Parent>();
		try {
			if (queryFlag.equals("allInfo")) {
				parents = parentService.queryAllInfo(tableName);
			} else if (queryFlag.equals("stuNo")) {
				HashMap hashMap = new HashMap();
				hashMap.put("tableName", tableName);
				hashMap.put("stuNo", content);
				parents = parentService.queryParentBystuNo(hashMap);
			} else if (queryFlag.equals("name")) {
				HashMap hashMap = new HashMap();
				hashMap.put("tableName", tableName);
				hashMap.put("name", content);
				parents = parentService.queryParentByName(hashMap);
			} else if (queryFlag.equals("phoneno")) {
				HashMap hashMap = new HashMap();
				hashMap.put("tableName", tableName);
				hashMap.put("phoneno", content);
				parents = parentService.queryParentByPhoneno(hashMap);
			}
		} catch (BadSqlGrammarException e) {
			System.out.println("????????????");
		}
		ModelAndView modelAndView = new ModelAndView("html/teacherframe/admin-parentinfo");
		modelAndView.addObject("parents", parents);
		modelAndView.addObject("length", parents.size() - 1);
		modelAndView.addObject("index", 0); // ?????????
		modelAndView.addObject("pages", (parents.size() - 1) / 10 + 1);
		return modelAndView;
	}

	@RequestMapping(value = "queryStudentInfo", method = RequestMethod.POST)
	public ModelAndView queryStudentInfo(@RequestParam("point") String queryFlag,
			@RequestParam("searchContent") String content) {
		// ????????????
		String tableName = getClassName(teacher) + "student";

		List<Student> students = new ArrayList<Student>();

		try {
			if (queryFlag.equals("allInfo")) {

				students = studentService.queryAllInfo(tableName);

			} else if (queryFlag.equals("stuNo")) {
				HashMap hashMap = new HashMap();
				hashMap.put("tableName", tableName);
				hashMap.put("stuNo", content);
				students = studentService.queryStudentByStuNo(hashMap);
			} else if (queryFlag.equals("stuname")) {
				HashMap hashMap = new HashMap();
				hashMap.put("tableName", tableName);
				hashMap.put("name", content);
				students = studentService.queryStudentByName(hashMap);

			} else if (queryFlag.equals("sex")) {
				HashMap hashMap = new HashMap();
				hashMap.put("tableName", tableName);
				if (content == "") {
					content = "0";
				} else {
					content = "1";
				}
				hashMap.put("sex", content);
				students = studentService.queryStudentBySex(hashMap);

			} else if (queryFlag.equals("bornyear")) {
				HashMap hashMap = new HashMap();
				hashMap.put("tableName", tableName);
				hashMap.put("year", content.trim());
				students = studentService.queryStudentByBornYear(hashMap);
				System.out.println(students);
			}
		} catch (BadSqlGrammarException e) {
			System.out.println("????????????");
		}
		ModelAndView modelAndView = new ModelAndView("html/teacherframe/admin-studentinfo");

		modelAndView.addObject("students", students);
		modelAndView.addObject("length", students.size() - 1);
		modelAndView.addObject("index", 0); // ?????????
		modelAndView.addObject("pages", (students.size() - 1) / 10 + 1);

		return modelAndView;
	}

	@RequestMapping(value = "queryStudentsAndRecords", method = RequestMethod.GET)
	public String queryStudentsAndRecords(ModelMap modelMap) {
		String tableName = getClassName(teacher) + "student";
		List<Student> stus = studentService.queryAllInfo(tableName);
		modelMap.put("stus", stus);
		modelMap.put("stusLength", stus.size() - 1);

		List<TranscriptRecord> records = teacherService.queryTRByPrefix(getClassName(teacher));

		modelMap.put("records", records);
		modelMap.put("recordsLength", records.size() - 1);
		return "html/teacherframe/analyze-transcript";
	}

	@RequestMapping(value = "updateParent", method = RequestMethod.POST)
	public ModelAndView updateParent(Parent parent) {

		String tableName = getClassName(teacher) + "parent";
		HashMap hashMap = new HashMap();
		hashMap.put("tableName", tableName);
		hashMap.put("parent", parent);
		if (parentService.updateParent(hashMap) != 0) {
			System.out.println("????????????");
		}
		ModelAndView modelAndView = new ModelAndView("html/teacherframe/admin-parentinfo");
		return modelAndView;
	}

	@RequestMapping(value = "updateStudent", method = RequestMethod.POST)
	public ModelAndView updateStudent(Student student) {

		String tableName = getClassName(teacher) + "student";
		HashMap hashMap = new HashMap();
		hashMap.put("tableName", tableName);
		hashMap.put("student", student);
		if (studentService.updateStudent(hashMap) != 0) {
			System.out.println("????????????");
		}
		ModelAndView modelAndView = new ModelAndView("html/teacherframe/admin-studentinfo");
		return modelAndView;
	}

	@RequestMapping(value = "deleteParent", method = RequestMethod.POST)
	public ModelAndView deleteParent(String[] deletestuNo) {
		ModelAndView modelAndView = new ModelAndView("html/teacherframe/admin-parentinfo");

		if (deletestuNo == null) {
			modelAndView.addObject("err", "onSelect");
			return modelAndView;
		}
		String tableName = getClassName(teacher) + "parent";
		HashMap hashMap = new HashMap();
		hashMap.put("tableName", tableName);
		for (String stuNo : deletestuNo) {
			hashMap.put("stuNo", stuNo);
			if (parentService.deleteParent(hashMap) != 0) {
				System.out.println("????????????");
			}
		}

		return modelAndView;
	}

	@RequestMapping(value = "deleteStudent", method = RequestMethod.POST)
	public ModelAndView deleteStudent(String[] deletestuNo) {
		ModelAndView modelAndView = new ModelAndView("html/teacherframe/admin-studentinfo");
		if (deletestuNo == null) {
			modelAndView.addObject("err", "onSelect");
			return modelAndView;
		}
		String tableName = getClassName(teacher) + "student";
		HashMap hashMap = new HashMap();
		hashMap.put("tableName", tableName);
		for (String stuNo : deletestuNo) {
			hashMap.put("stuNo", stuNo);
			if (studentService.deleteStudent(hashMap) != 0) {
				System.out.println("??????????????????");
			}
		}

		return modelAndView;
	}

	@RequestMapping(value = "addMessage", method = RequestMethod.POST)
	public String addMessage(Message message, @RequestParam("messageStuNo") String messageStuNo) {
		System.out.println("??????????????????");
		message.setTeaNo(teacher.getTeaNo());
		message.setMessageDate(new Date());
		message.setStuNo(messageStuNo);
		if (teacherService.addMessage(message) != 0) {
			System.out.println("??????????????????");
		}
		;

		if (messageStuNo.equals("0")) {
			return "html/teacherframe/arrange-work";
		} else {
			return "html/teacherframe/transcript";
		}

	}

	@RequestMapping(value = "deleteMessage", method = RequestMethod.POST)
	public ModelAndView deleteMessage(Date[] dates, ModelMap modelMap) {
		ModelAndView modelAndView = new ModelAndView("html/teacherframe/admin-work");
		if (dates == null) {
			modelAndView.addObject("err", "onSelect");
			return modelAndView;
		}
		// ??????????????????????????????14?????????????????????????????????14??????
		System.out.println(dates[0]);
		for (int i = 0; i < dates.length; i++) {
			dates[i].setTime(dates[i].getTime() - 14 * 60 * 60 * 1000);
			teacherService.deleteMessageByDate(dates[i]);
		}
		queryMessages(modelMap);
		return modelAndView;
	}

	@RequestMapping(value = "refreshMessage", method = RequestMethod.GET)
	public String refreshMessages(ModelMap modelMap) {
		List<Message> messages = teacherService.queryMessageByTeaNo(teacher.getTeaNo());
		System.out.println(messages);
		modelMap.put("messages", messages);
		modelMap.put("messageLength", messages.size() - 1);
		modelMap.put("messageIndex", 0); // ?????????
		modelMap.put("messagePages", (messages.size() - 1) / 10 + 1);
		return "html/teacherframe/admin-work";
	}

	@RequestMapping(value = "lookMessage2")
	public void lookMessage2(ModelMap modelMap) {
		List<Message2> message2s = teacherService.queryMessage2ByTeaNo(teacher.getTeaNo());
		modelMap.put("message2s", message2s);
		modelMap.put("message2sLength", message2s.size());

		System.out.println(message2s);
	}

	@RequestMapping(value = "deleteMessage2/{messageDate}")
	public String deleteMessage2(@PathVariable("messageDate") Date messageDate, ModelMap modelMap) {
		messageDate.setTime(messageDate.getTime() - 14 * 60 * 60 * 1000);
		if (teacherService.deleteMessage2ByDate(messageDate) != 0) {
			System.out.println("??????message2??????");
		}
		;
		lookMessage2(modelMap);
		return "teacherPage";
	}

	// -------------------------??????????????????----------------
	@RequestMapping(value = "queryTranscriptRecord", method = RequestMethod.GET)
	public ModelAndView queryTranscriptRecord() {

		List<TranscriptRecord> transcriptRecords = teacherService.queryTranscriptRecordByteaNo(teacher.getTeaNo());

		System.out.println(transcriptRecords);
		ModelAndView modelAndView = new ModelAndView("html/teacherframe/admin-transcript");
		modelAndView.addObject("transcriptRecords", transcriptRecords);
		modelAndView.addObject("TRLength", transcriptRecords.size() - 1);
		modelAndView.addObject("TRIndex", 0); // ?????????
		modelAndView.addObject("TRPages", (transcriptRecords.size() - 1) / 10 + 1);

		return modelAndView;
	}

	@RequestMapping(value = "uploadTranscript", consumes = "multipart/form-data", method = RequestMethod.POST)
	public ModelAndView uploadTranscript(@RequestParam("myfile") MultipartFile file,
			@RequestParam("transcriptType") String transcriptType) throws IOException {
		ModelAndView modelAndView = new ModelAndView("html/teacherframe/admin-transcript");
		if (file.isEmpty()) {
			modelAndView.addObject("err", "noFile");
			return modelAndView;
		}
		Date date = new Date();
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);

		String tableName = getClassName(teacher) + transcriptType + "l" + (cal.get(Calendar.MONTH) + 1) + "???"
				+ cal.get(Calendar.DATE) + "???";

		InputStream input = file.getInputStream();
		OutputStream output = new FileOutputStream("D:\\aExcel\\transcript.xlsx");

		byte[] bs = new byte[1024];
		int len = -1;
		while ((len = input.read(bs)) != -1) {
			output.write(bs, 0, len);
		}
		output.close();
		input.close();

		TranscriptRecord transcriptRecord = new TranscriptRecord(teacher.getTeaNo(), tableName, date);

		try {
			HashMap hashMap = new HashMap();
			hashMap.put("tableName", tableName);
			hashMap.put("refTableName", getClassName(teacher) + "student");
			teacherService.creatTranscritpTable(hashMap); // ????????????
		} 
		catch (BadSqlGrammarException e) {
			modelAndView.addObject("err", "repeatCreatErr");
			System.out.println(tableName + ":??????");
			return modelAndView;
		} 
		catch (DataIntegrityViolationException e) {
			modelAndView.addObject("err", "noStuTable");
			System.out.println("??????????????????:????????????????????????");
			return modelAndView;
		}

		teacherService.addTranscriptRecord(transcriptRecord);

		// ???excel???????????????
		List<Transcript> transcripts = analyzeExcel.readTranscriptExcel("D:\\aExcel\\transcript.xlsx");
		// ???????????????
		HashMap hashMap = new HashMap();
		hashMap.put("tableName", tableName);
		for (Transcript transcript : transcripts) {
			hashMap.put("transcript", transcript);
			teacherService.addTranscript(hashMap); // ???????????????
		}
		modelAndView.addObject("err", "ok");
		System.out.println(tableName + ":????????????");
		return modelAndView;
	}

	@RequestMapping(value = "deleteTranscript", method = RequestMethod.POST)
	public ModelAndView deleteTranscript(Date[] uploadDates) {

		ModelAndView modelAndView = new ModelAndView("html/teacherframe/admin-transcript");
		if (uploadDates == null) {
			modelAndView.addObject("err", "onSelect");
			return modelAndView;
		}

		for (int i = 0; i < uploadDates.length; i++) {
			uploadDates[i].setTime(uploadDates[i].getTime() - 14 * 60 * 60 * 1000);
			String transcriptName = teacherService.queryTranscriptName(uploadDates[i]);
			String tableName = transcriptName;
			System.out.println(tableName);
			teacherService.deleteTranscriptTable(tableName);
			teacherService.deleteTranscriptRecord(uploadDates[i]);
		}

		return modelAndView;
	}

	@RequestMapping(value = "openTranscript/{tableName}")
	public ModelAndView openTranscript(@PathVariable("tableName") String tableName) {

		if(tableName.equals("2333333")) {
			tableName=openingTranscriptTableName;
		}
		List<Transcript> transcripts = teacherService.queryAllTranscript(tableName);
		this.setOpeningTranscriptTableName(tableName);

		ModelAndView modelAndView = new ModelAndView("html/teacherframe/transcript");
		modelAndView.addObject("transcripts", transcripts);
		modelAndView.addObject("transcriptLength", transcripts.size() - 1);
		modelAndView.addObject("transcriptIndex", 0); // ?????????
		modelAndView.addObject("transcriptPages", (transcripts.size() - 1) / 10 + 1);
		return modelAndView;
	}

	@RequestMapping(value = "updateTranscript", method = RequestMethod.POST)
	public ModelAndView updateTranscript(Transcript transcript) {
		HashMap hashMap = new HashMap();
		hashMap.put("tableName", openingTranscriptTableName);
		transcript.setAverage(transcript.calculateAverage());
		hashMap.put("transcript", transcript);
		System.out.println(openingTranscriptTableName);
		System.out.println(transcript);
		if (teacherService.updateTranscript(hashMap) != 0) {
			System.out.println("???????????????");
		};
		return this.openTranscript(this.getOpeningTranscriptTableName());
	}

	// ------------------------????????????-------------------------
	@RequestMapping(value = "analyzeTest/{stuno}/{flag}", method = RequestMethod.GET)
	public ModelAndView analyzeTest(@PathVariable("stuno") String stuNo, @PathVariable("flag") String flag) {
		// ???????????????????????????????????????????????????????????????
		String prefix = null;
		List<TranscriptRecord> TRs = null;
		if (flag.equals("day")) {
			System.out.println("day");
			prefix = getClassName(teacher) + "day";
			TRs = teacherService.queryTRByPrefix(prefix);
		} else if (flag.equals("week")) {
			System.out.println("week");
			prefix = getClassName(teacher) + "week";
			TRs = teacherService.queryTRByPrefix(prefix);
		} else {
			TRs = teacherService.queryTRMME(getClassName(teacher));
		}

		// ??????????????????????????????
		if (TRs.size() <= 2) {
			ModelAndView modelAndView = new ModelAndView("html/teacherframe/analyze-transcript");
			modelAndView.addObject("err", "theLess");
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
			hashMap.put("tableName", TRs.get(i).getTranscriptName()); // ????????????
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
		// ???????????????????????????????????????????????????????????????
		String prefix = null;
		System.out.println("flag=" + flag);
		List<TranscriptRecord> TRs = null;
		if (flag.equals("day")) {
			prefix = getClassName(teacher) + "day";
			TRs = teacherService.queryTRByPrefix(prefix);

		} else if (flag.equals("week")) {
			prefix = getClassName(teacher) + "week";
			TRs = teacherService.queryTRByPrefix(prefix);
		} else {
			TRs = teacherService.queryTRMME(getClassName(teacher));
		}

		if (TRs.size() <= 2) {
			ModelAndView modelAndView = new ModelAndView("html/teacherframe/analyze-transcript");
			modelAndView.addObject("err", "theLess");
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
			hashMap.put("tableName", TRs.get(i).getTranscriptName()); // ????????????
			Integer rank = teacherService.getRankByStuNo(hashMap);
			ranks.add(rank);
		}

		ModelAndView modelAndView = new ModelAndView("html/echarts/personRankLineChart");
		modelAndView.addObject("ranks", ranks);
		modelAndView.addObject("perLength", ranks.size() - 1);
		System.out.println(ranks);
		return modelAndView;
	}

	@RequestMapping(value = "classCompare/{tableName}/{objectName}", method = RequestMethod.GET)
	public ModelAndView classCompare(@PathVariable("tableName") String tableName,
			@PathVariable("objectName") String objectName) {
		String[] str = tableName.split("l");
		String prefix = str[0] + "l%" + str[2] + "l" + str[3];
		List<TranscriptRecord> tableNames = teacherService.queryTRByPrefix(prefix);

		List<Double> scores = new ArrayList<Double>();// ??????
		List<String> grades = new ArrayList<String>();// ???????????????
		if (objectName.equals("average")) {
			for (int i = 0; i < tableNames.size(); i++) {
				Double score = teacherService.queryAverage(tableNames.get(i).getTranscriptName());
				scores.add(score);
				grades.add(tableNames.get(i).getTranscriptName().split("l")[1]);
			}
		} else {
			HashMap hashMap = new HashMap();
			hashMap.put("objectName", objectName);
			for (int i = 0; i < tableNames.size(); i++) {
				hashMap.put("tableName", tableNames.get(i).getTranscriptName());
				Double score = teacherService.queryAverageSingleObject(hashMap);
				scores.add(score);
				grades.add(tableNames.get(i).getTranscriptName().split("l")[1]);

			}
		}
		ModelAndView modelAndView = new ModelAndView("html/echarts/classBarChart");
		modelAndView.addObject("scores", scores);
		modelAndView.addObject("grades", grades);
		modelAndView.addObject("scoresLength", scores.size() - 1);
		modelAndView.addObject("objectName", objectName);
		return modelAndView;
	}

	@RequestMapping(value = "classEveryCompare/{tableName}/{objectName}", method = RequestMethod.GET)
	public ModelAndView classEveryCompare(@PathVariable("tableName") String tableName,
			@PathVariable("objectName") String objectName) {
		String[] str = tableName.split("l");
		List<TranscriptRecord> tableNames = new ArrayList<TranscriptRecord>();
		if (str[2].equals("day") || str[2].equals("week")) {
			String prefix = str[0] + "l" + str[1] + "l" + str[2]; // ??????????????????????????????
			tableNames = teacherService.queryTRByPrefix(prefix);
		} else {
			String prefix = str[0] + "l" + str[1] + "l";
			tableNames = teacherService.queryTRMME(prefix); // '${value}month%'
		}

		List<Double> scores = new ArrayList<Double>();// ??????
		if (objectName.equals("average")) {
			for (int i = 0; i < tableNames.size(); i++) {
				Double score = teacherService.queryAverage(tableNames.get(i).getTranscriptName());
				scores.add(score);
			}
		} else {
			HashMap hashMap = new HashMap();
			hashMap.put("objectName", objectName);
			for (int i = 0; i < tableNames.size(); i++) {
				hashMap.put("tableName", tableNames.get(i).getTranscriptName());
				Double score = teacherService.queryAverageSingleObject(hashMap);
				scores.add(score);

			}
		}
		ModelAndView modelAndView = new ModelAndView("html/echarts/classLineChart");
		modelAndView.addObject("scores", scores);
		modelAndView.addObject("scoresLength", scores.size() - 1);
		modelAndView.addObject("objectName", objectName);
		return modelAndView;
	}

}
