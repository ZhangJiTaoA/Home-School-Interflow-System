package org.haitao.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.haitao.entity.Message;
import org.haitao.entity.Message2;
import org.haitao.entity.Teacher;
import org.haitao.entity.Transcript;
import org.haitao.entity.TranscriptRecord;
import org.haitao.mapper.Message2Mapper;
import org.haitao.mapper.MessageMapper;
import org.haitao.mapper.TeacherMapper;
import org.haitao.mapper.TranscriptMapper;
import org.haitao.mapper.TranscriptRecordMapper;
import org.haitao.service.ITeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;


@Service("teacherService")
public class TeacherService implements ITeacherService{
	@Autowired
	@Qualifier("teacherMapper")
	private TeacherMapper teacherMapper;
	@Autowired
	@Qualifier("messageMapper")
	private MessageMapper messageMapper;
	@Autowired
	@Qualifier("transcriptMapper")
	private TranscriptMapper transcriptMapper;
	@Autowired
	@Qualifier("transcriptRecordMapper")
	private TranscriptRecordMapper transcriptRecordMapper;
	@Autowired
	@Qualifier("message2Mapper")
	private Message2Mapper message2Mapper;
	

	public void setMessage2Mapper(Message2Mapper message2Mapper) {
		this.message2Mapper = message2Mapper;
	}

	public void setTeacherMapper(TeacherMapper teacherMapper) {
		this.teacherMapper = teacherMapper;
	}
	
	public void setMessageMapper(MessageMapper messageMapper) {
		this.messageMapper = messageMapper;
	}

	public void setTranscriptMapper(TranscriptMapper transcriptMapper) {
		this.transcriptMapper = transcriptMapper;
	}

	public void setTranscriptRecordMapper(TranscriptRecordMapper transcriptRecordMapper) {
		this.transcriptRecordMapper = transcriptRecordMapper;
	}

	// --------------------------------实现增删查改方法-------------------
	public int addTeacherInfo(Teacher tea) {
		return teacherMapper.addTeacherInfo(tea);
	}

	public List<Teacher> queryTeachers() {
		List<Teacher> teachers = new ArrayList<Teacher>();
		teachers = teacherMapper.queryTeachers();
		return teachers;
	}

	public int updateTeacher(Teacher tea) {
		return teacherMapper.updateTeacher(tea);
	}

	public int deleteTeacher(String teaNo) {
		return teacherMapper.deleteTeacher(teaNo);
	}

	public List<Teacher> queryTeachersByteaNo(String teaNo) {

		return teacherMapper.queryTeachersByteaNo(teaNo);
	}

	public List<Teacher> queryTeachersByteaName(String name) {
		return teacherMapper.queryTeachersByteaName(name);
	}

	public List<Teacher> queryTeachersByteaPhone(String phoneno) {
		return teacherMapper.queryTeachersByteaPhone(phoneno);
	}

	public List<Teacher> queryTeachersByCourse(String course) {
		return teacherMapper.queryTeachersByCourse(course);
	}

	public List<Teacher> queryTeachersByGradeAndClass(HashMap hashMap) {
		List<Teacher> teachers = teacherMapper.queryTeachersByGradeAndClass1(hashMap);
		List<Teacher> teachertemp = teacherMapper.queryTeachersByGradeAndClass2(hashMap);
		teachers.addAll(teachertemp);
		return teachers;
	}

	public List<Teacher> queryTeachersByCharge(int isCharge) {
		return teacherMapper.queryTeachersByCharge(isCharge);
	}

	public List<String> queryTableName(String str){
		return teacherMapper.queryTableName(str);
	}

	
	//--------------------消息传递相关-----------------
	public List<Message> queryMessageByTeaNo(String teaNo) {
		return messageMapper.queryMessageByTeaNo(teaNo);
	}

	public int addMessage(Message message) {
		return messageMapper.addMessage(message);
	}

	public int deleteMessageByDate(Date date) {
		return messageMapper.deleteMessageByDate(date);
	}

	public Teacher queryChargeTeacher(HashMap hashMap) { 
		return teacherMapper.queryChargeTeacher(hashMap);
	}
//------------------------------成绩管理------------------------
	
	public int creatTranscritpTable(HashMap hashMap) {
		System.out.println("新建一个表");
		return transcriptMapper.creatTranscritpTable(hashMap);
	}

	public List<Transcript> queryAllTranscript(String tableName) {
		return transcriptMapper.queryAllTranscript(tableName);
	}

	public Transcript queryTranscriptByStuNo(HashMap hashMap) {
		return transcriptMapper.queryTranscriptByStuNo(hashMap);
	}

	public int addTranscript(HashMap hashMap) {
		return transcriptMapper.addTranscript(hashMap);
	}

	public int deleteTranscriptTable(String tableName) {
		return transcriptMapper.deleteTranscriptTable(tableName);
	}

	public int updateTranscript(HashMap hashMap) {
		return transcriptMapper.updateTranscript(hashMap);
	}

	public int addTranscriptRecord(TranscriptRecord transcriptRecord) {
		return transcriptRecordMapper.addTranscriptRecord(transcriptRecord);
	}

	public int deleteTranscriptRecord(Date uploadDate) {
		return transcriptRecordMapper.deleteTranscriptRecord(uploadDate);
	}

	public List<TranscriptRecord> queryAllTranscriptRecord() {
		return transcriptRecordMapper.queryAllTranscriptRecord();
	}

	public List<TranscriptRecord> queryTranscriptRecordByteaNo(String teaNo) {
		return transcriptRecordMapper.queryTranscriptRecordByteaNo(teaNo);
	}

	public String queryTranscriptName(Date uploadDate) {
		return transcriptRecordMapper.queryTranscriptName(uploadDate);
	}

	
	// 留言信息
	public List<Message2> queryMessage2ByTeaNo(String teaNo) {
		return message2Mapper.queryMessage2ByTeaNo(teaNo);
	}

	public List<Message2> queryMessage2ByPersonInfo(String personInfo) {
		return message2Mapper.queryMessage2ByPersonInfo(personInfo);
	}

	public int deleteMessage2ByDate(Date messagedate) {
		return message2Mapper.deleteMessage2ByDate(messagedate);
	}

	public List<TranscriptRecord> queryTRByPrefix(String prefix) {
		return transcriptRecordMapper.queryTRByPrefix(prefix);
	}

	public Integer getRankByStuNo(HashMap hashMap) {
		return transcriptMapper.getRankByStuNo(hashMap);
	}
	
	public List<TranscriptRecord> queryTRMME(String claGra){
		return transcriptRecordMapper.queryTRMME(claGra);
	}

	public Double queryAverage(String tableName) {
		return transcriptMapper.queryAverage(tableName);
	}

	public Double queryAverageSingleObject(HashMap hashMap) {
		return transcriptMapper.queryAverageSingleObject(hashMap);
	}
}


