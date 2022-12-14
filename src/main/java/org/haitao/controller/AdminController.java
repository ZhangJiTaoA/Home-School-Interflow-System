package org.haitao.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.haitao.entity.Admin;
import org.haitao.entity.Parent;
import org.haitao.entity.Teacher;
import org.haitao.service.impl.AdminService;
import org.haitao.service.impl.AnalyzeExcel;
import org.haitao.service.impl.ParentService;
import org.haitao.service.impl.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping(value = "adminController")
@SessionAttributes(types = { Admin.class, Teacher.class, ArrayList.class, String.class})
@Controller
public class AdminController {
	@Autowired
	@Qualifier("adminService")
	private AdminService adminService;
	@Autowired
	@Qualifier("teacherService")
	private TeacherService teacherService;
	@Autowired
	@Qualifier("parentService")
	private ParentService parentService;
	@Autowired
	@Qualifier("analyzeExcel")
	private AnalyzeExcel analyzeExcel;

	public void setAnalyzeExcel(AnalyzeExcel analyzeExcel) {
		this.analyzeExcel = analyzeExcel;
	}

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	public void setTeacherService(TeacherService teacherService) {
		this.teacherService = teacherService;
	}

	private Admin admin;

	// -----------------------------------??????????????????-------------------------------
	@RequestMapping(value = "adminLogin", method = RequestMethod.POST)
	public String adminLogin(ModelMap modelMap, @RequestParam(value = "phone") String phoneNo,
			@RequestParam(value = "password") String password) {

		admin = adminService.queryAdminByPhoneNo(phoneNo);
		// ??????????????????
		if (admin == null || !admin.getPassword().equals(password.trim())) {
			modelMap.put("valid", "false");
			System.out.println("????????????");
			return "login";
		} else {
			System.out.println(admin);
			modelMap.put("account", admin);
			System.out.println("????????????");
			return "adminPage";
		}
	}

	@RequestMapping(value = "addTeacher", method = RequestMethod.POST)
	public ModelAndView addTeacher(Teacher tea) {
		ModelAndView modelAndView = new ModelAndView("html/adminframe/input-teacherinfo");
		if (tea.getIsCharge() == null) {
			tea.setIsCharge(0);
		}
		try {
			teacherService.addTeacherInfo(tea); // ???????????????
		} catch (DuplicateKeyException e) {
			System.out.println(tea.getName() + ":??????");
			modelAndView.addObject("tea", tea);
			modelAndView.addObject("valid", "false");
			System.out.println("????????????");
			return modelAndView;
		}
		modelAndView.addObject("valid", "true");
		System.out.println("????????????");
		return modelAndView;
	}

	@RequestMapping(value = "upload", consumes = "multipart/form-data")
	public ModelAndView upload(@RequestParam("teacherFile") MultipartFile file) {
		ModelAndView modelAndView = new ModelAndView("html/adminframe/upload-teacherinfo");
		System.out.println("??????????????????");
		InputStream input;
		OutputStream output;
		byte[] bs;
		try {
			input = file.getInputStream();
			output = new FileOutputStream("D:\\aExcel\\teacher.xlsx");
			bs = new byte[1024];
			int len = -1;
			while ((len = input.read(bs)) != -1) {
				output.write(bs, 0, len);
			}
			output.close();
			input.close();
		} catch (IOException e1) {
			System.out.println("??????excel??????!");
			e1.printStackTrace();
		}

		// ???excel???????????????
		List<Teacher> teacherList = analyzeExcel.readTeacherExcel("D:\\aExcel\\teacher.xlsx");
		List<Teacher> repeatTeachers = new ArrayList<Teacher>();
		// ???????????????
		for (Teacher tea : teacherList) {
			if (tea.getIsCharge() == null) {
				tea.setIsCharge(0);
			}
			try {
				teacherService.addTeacherInfo(tea); // ???????????????
			} catch (DuplicateKeyException e) {
				modelAndView.addObject("err", "repeatErr");
				repeatTeachers.add(tea);
				System.out.println(tea.getName() + ":??????");
			} catch (DataIntegrityViolationException e) {
				System.out.println("excel??????????????????");
				modelAndView.addObject("err", "formErr");
				return modelAndView;
			}
		}

		// modelAndView.addObject("",??????);
		modelAndView.addObject("repeatTeachers", repeatTeachers);
		modelAndView.addObject("repeatLength", repeatTeachers.size());
		if (repeatTeachers.size() == 0) {
			modelAndView.addObject("err", "null");
			System.out.println("???????????????????????????");
		}

		return modelAndView;
	}

	@RequestMapping(value = "queryTeacher", method = RequestMethod.POST)
	public ModelAndView queryTeacher(@RequestParam("point") String point,
			@RequestParam("searchContent") String content) {
		List<Teacher> teachers = new ArrayList<Teacher>();
		if (point.equals("allInfo")) {
			teachers = teacherService.queryTeachers();
		} else if (point.equals("teaNo")) {
			teachers = teacherService.queryTeachersByteaNo(content);
		} else if (point.equals("teaName")) {
			teachers = teacherService.queryTeachersByteaName(content);
		} else if (point.equals("teaPhone")) {
			teachers = teacherService.queryTeachersByteaPhone(content);
		} else if (point.equals("course")) {
			teachers = teacherService.queryTeachersByCourse(content);
		} else if (point.equals("gradeAndClass")) {// 1-2
			String[] strs = content.split("-");
			if (strs.length < 2) {
				System.out.println("????????????????????????");
			} else {
				try {
					int grade = Integer.valueOf(strs[0]);
					int myclass = Integer.valueOf(strs[1]);
					HashMap hashMap = new HashMap();
					hashMap.put("grade", grade);
					hashMap.put("class", myclass);
					teachers = teacherService.queryTeachersByGradeAndClass(hashMap);
				} catch (NumberFormatException e) {
					System.out.println("????????????????????????");
				}

			}

		} else if (point.equals("charge")) {
			if (content.equals("")) {
				content = "1";
			} else {
				content = "0";
			}
			teachers = teacherService.queryTeachersByCharge(Integer.valueOf(content));
		}
		ModelAndView modelAndView = new ModelAndView("html/adminframe/admin-teacherinfo");
		modelAndView.addObject("teachers", teachers);
		modelAndView.addObject("length", teachers.size() - 1);
		modelAndView.addObject("index", 0); // ?????????
		modelAndView.addObject("pages", (teachers.size() - 1) / 10 + 1);
		return modelAndView;
	}

	@RequestMapping(value = "updateTeacher", method = RequestMethod.POST)
	public ModelAndView updateTeacher(Teacher teacher) {
		System.out.println(teacher);

		if (teacher.getIsCharge() == null)
			teacher.setIsCharge(0);

		if (teacherService.updateTeacher(teacher) != 0) {
			System.out.println("????????????");
		}
		ModelAndView modelAndView = new ModelAndView("html/adminframe/admin-teacherinfo");
		// ???????????????????????????????????????????????????
		teacher.setIsCharge(null);
		return modelAndView;
	}

	@RequestMapping(value = "deleteTeachers", method = RequestMethod.POST)
	public ModelAndView deleteTeachers(String[] deleteNo) {
		ModelAndView modelAndView = new ModelAndView("html/adminframe/admin-teacherinfo");
		if (deleteNo == null) {
			modelAndView.addObject("err", "onSelect");
			return modelAndView;
		}
		for (String teaNo : deleteNo) {
			if (teacherService.deleteTeacher(teaNo) != 0)
				System.out.println("??????" + teaNo + "??????");
		}

		return modelAndView;
	}

	@RequestMapping(value = "changePassword", method = RequestMethod.POST)
	public ModelAndView changePassword(@RequestParam("type") String type,
			@RequestParam(value = "phoneno", defaultValue = " ") String phoneno,
			@RequestParam(value = "pTableName", defaultValue = " ") String pTableName,
			@RequestParam("originalPassword") String oPasswrod, @RequestParam("changedPassword") String cPassword) {
		
		ModelAndView modelAndView = new ModelAndView("changePassword");
		if (type.equals("admin")) {
			if (admin.getPassword().equals(oPasswrod)) {
				admin.setPassword(cPassword);
				adminService.updatePassword(admin);
				modelAndView.addObject("err", "no");
			} else {
				System.out.println("???????????????");
				modelAndView.addObject("err", "1");
			}
		} else if (type.equals("teacher")) {
			List<Teacher> teacher = teacherService.queryTeachersByteaPhone(phoneno);
			if (teacher.get(0) == null) {
				System.out.println("????????????????????????");
				modelAndView.addObject("err", "2");
			} else if (teacher.get(0).getPassword().equals(oPasswrod)) {
				teacher.get(0).setPassword(cPassword);
				teacherService.updateTeacher(teacher.get(0));
				modelAndView.addObject("err", "no");
			} else {
				System.out.println("???????????????");
				modelAndView.addObject("err", "1");
			}
		} else if (type.equals("parent")) {
			HashMap hashMap = new HashMap();
			hashMap.put("tableName", pTableName);
			hashMap.put("phoneno", phoneno);
			List<Parent> parent = parentService.queryParentByPhoneno(hashMap);
			if (parent.get(0) == null) {
				System.out.println("????????????????????????");
				modelAndView.addObject("err", "2");
			} else if (parent.get(0).getPassword().equals(oPasswrod)) {
				parent.get(0).setPassword(cPassword);
				hashMap.put("parent", parent.get(0));
				parentService.updateParent(hashMap);
				modelAndView.addObject("err", "no");
			} else {
				System.out.println("???????????????");
				modelAndView.addObject("err", "1");
			}
		}
		
		modelAndView.addObject("flagg","1");
		return modelAndView;
	}
}
