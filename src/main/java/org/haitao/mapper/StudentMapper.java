package org.haitao.mapper;

import java.util.HashMap;
import java.util.List;

import org.haitao.entity.Student;

public interface StudentMapper {

	List<Student> queryAllInfo(String tableName);
	List<Student> queryStudentByName(HashMap hashMap);
	List<Student> queryStudentByStuNo(HashMap hashMap);
	List<Student> queryStudentBySex(HashMap hashMap);
	List<Student> queryStudentByBornYear(HashMap hashMap);
	List<String> queryStudentName(String tableName);
	
	int creatTable(String tableName);

	int addStudent(HashMap hashMap);
	
	int updateStudent(HashMap hashMap);
	
	int deleteStudent(HashMap hashMap);
	

}
