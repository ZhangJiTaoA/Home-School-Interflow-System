package org.haitao.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.haitao.entity.Message;
import org.haitao.entity.Message2;
import org.haitao.entity.Teacher;
import org.haitao.entity.Transcript;
import org.haitao.entity.TranscriptRecord;

public interface ITeacherService {

	int addTeacherInfo(Teacher tea);

	List<Teacher> queryTeachers();

	List<Teacher> queryTeachersByteaNo(String teaNo);

	List<Teacher> queryTeachersByteaName(String name);

	// 通过电话查找
	List<Teacher> queryTeachersByteaPhone(String phoneno);

	// 通过课程查找
	List<Teacher> queryTeachersByCourse(String course);

	// 通过班级，年级查找
	List<Teacher> queryTeachersByGradeAndClass(HashMap hashMap);

	// 查找班主任
	List<Teacher> queryTeachersByCharge(int isCharge);
	
	// 查找指定班级的班主任
	Teacher queryChargeTeacher(HashMap hashMap);
	
	
	List<String> queryTableName(String str);
	
	
	int updateTeacher(Teacher tea);

	int deleteTeacher(String teaNo);


//-------------消息相关--------------

	List<Message> queryMessageByTeaNo(String teaNo);
	
	int addMessage(Message message);
	
	int deleteMessageByDate(Date date);
	
	//留言信息
	List<Message2> queryMessage2ByTeaNo(String teaNo);
	
	List<Message2> queryMessage2ByPersonInfo(String personInfo);
	
	int deleteMessage2ByDate(Date messagedate);
	
	
	
//-----------------成绩管理相关------------
	int creatTranscritpTable(HashMap hashMap);
	
	List<Transcript> queryAllTranscript(String tableName);
	
	Transcript queryTranscriptByStuNo(HashMap hashMap);

	int addTranscript(HashMap hashMap);
	
	int deleteTranscriptTable(String tableName);
	
	int updateTranscript(HashMap hashMap);
	
	
	String queryTranscriptName(Date uploadDate);
	
	List<TranscriptRecord> queryAllTranscriptRecord();
	
	List<TranscriptRecord> queryTranscriptRecordByteaNo(String teaNo);
	
	List<TranscriptRecord> queryTRByPrefix(String prefix);	
	
	int addTranscriptRecord(TranscriptRecord transcriptRecord);
	
	int deleteTranscriptRecord(Date uploadDate);
	
	Integer getRankByStuNo(HashMap hashMap);
	
	List<TranscriptRecord> queryTRMME(String claGra);
	
	Double queryAverage(String tableName);
	
	Double queryAverageSingleObject(HashMap hashMap);
}
