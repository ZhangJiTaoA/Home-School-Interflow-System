package org.haitao.service;

import java.util.List;

import org.apache.poi.ss.usermodel.Workbook;

import org.haitao.entity.Parent;
import org.haitao.entity.Student;
import org.haitao.entity.Teacher;
import org.haitao.entity.Transcript;

public interface IAnalyzeExcel {
	// 为了区分xls和xlsx两种格式
	Workbook readExcel(String path);
		
	List<Teacher> readTeacherExcel(String path);
		
	List<Student> readStudentExcel(String path);
		
	List<Parent> readParentExcel(String path);
		
	List<Transcript> readTranscriptExcel(String path);
}
