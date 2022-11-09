package org.haitao.service.impl;

import java.util.HashMap;
import java.util.List;

import org.haitao.entity.Student;
import org.haitao.mapper.StudentMapper;
import org.haitao.service.IStudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
@Service("studentService")
public class StudentService implements IStudentService {

	@Autowired
	@Qualifier("studentMapper")
	private StudentMapper studentMapper;

	public StudentMapper getStudentMapper() {
		return studentMapper;
	}
	public void setStudentMapper(StudentMapper studentMapper) {
		this.studentMapper = studentMapper;
	}

	public int creatTable(String tableName) {
		return studentMapper.creatTable(tableName);
	}
	public int addStudent(HashMap hashMap) {
		return studentMapper.addStudent(hashMap);
	}
	public List<Student> queryAllInfo(String tableName) {
		return studentMapper.queryAllInfo(tableName);
	}
	public List<Student> queryStudentByName(HashMap hashMap) {
		return studentMapper.queryStudentByName(hashMap);
	}
	public List<Student> queryStudentByStuNo(HashMap hashMap) {
		return studentMapper.queryStudentByStuNo(hashMap);
	}
	public List<Student> queryStudentBySex(HashMap hashMap) {
		return studentMapper.queryStudentBySex(hashMap);
	}
	public List<Student> queryStudentByBornYear(HashMap hashMap) {
		return studentMapper.queryStudentByBornYear(hashMap);
	}
	public int updateStudent(HashMap hashMap) {
		return studentMapper.updateStudent(hashMap);
	}
	public int deleteStudent(HashMap hashMap) {
		return studentMapper.deleteStudent(hashMap);
	}
	public List<String> queryStudentName(String tableName) {
		return studentMapper.queryStudentName(tableName);
	}

}
