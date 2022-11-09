package org.haitao.mapper;

import java.util.HashMap;
import java.util.List;

import org.haitao.entity.Teacher;

public interface TeacherMapper {
	// 向教师添加一条信息
	int addTeacherInfo(Teacher tea);
	// 查询全体教师的信息
	List<Teacher> queryTeachers();
	// 通过教师号查询
	List<Teacher> queryTeachersByteaNo(String teaNo);
	// 通过姓名查找
	List<Teacher> queryTeachersByteaName(String name);
	// 通过电话查找
	List<Teacher> queryTeachersByteaPhone(String phoneno);
	// 通过课程查找
	List<Teacher> queryTeachersByCourse(String course);
	// 通过班级，年级查找
	List<Teacher> queryTeachersByGradeAndClass1(HashMap hashMap);
	List<Teacher> queryTeachersByGradeAndClass2(HashMap hashMap);
	// 查找班主任
	List<Teacher> queryTeachersByCharge(int isCharge);
	// 查找指定班级的班主任
	Teacher queryChargeTeacher(HashMap hashMap);
	// 查找指定结尾的表名
	List<String> queryTableName(String str);
	
	
	// 更新修改一条信息
	int updateTeacher(Teacher tea);
	
	// 删除一条信息
	int deleteTeacher(String teaNo);
	
}
