package org.haitao.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.haitao.entity.Message;
import org.haitao.entity.Message2;
import org.haitao.entity.Parent;
import org.haitao.mapper.Message2Mapper;
import org.haitao.mapper.MessageMapper;
import org.haitao.mapper.ParentMapper;
import org.haitao.service.IParentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service("parentService")
public class ParentService implements IParentService {
	@Autowired
	@Qualifier("parentMapper")
	private ParentMapper parentMapper;
	
	@Autowired
	@Qualifier("messageMapper")
	private MessageMapper messageMapper;
	@Autowired
	@Qualifier("message2Mapper")
	private Message2Mapper message2Mapper;
	
	public void setParentMapper(ParentMapper parentMapper) {
		this.parentMapper = parentMapper;
	}
	public void setMessageMapper(MessageMapper messageMapper) {
		this.messageMapper = messageMapper;
	}
	public void setMessage2Mapper(Message2Mapper message2Mapper) {
		this.message2Mapper = message2Mapper;
	}
	public int creatTable(String tablePrefix) {
		return parentMapper.creatTable(tablePrefix);
	}
	public int addParent(HashMap hashMap) {
		return parentMapper.addParent(hashMap);
	}
	public List<Parent> queryAllInfo(String tableName) {
		return parentMapper.queryAllInfo(tableName);
	}
	public List<Parent> queryParentBystuNo(HashMap hashMap) {
		return parentMapper.queryParentBystuNo(hashMap);
	}
	public List<Parent> queryParentByName(HashMap hashMap) {
		return parentMapper.queryParentByName(hashMap);
	}
	public List<Parent> queryParentByPhoneno(HashMap hashMap) {
		return parentMapper.queryParentByPhoneno(hashMap);
	}
	public int updateParent(HashMap hashMap) {
		return parentMapper.updateParent(hashMap);
	}
	public int deleteParent(HashMap hashMap) {
		// TODO Auto-generated method stub
		return parentMapper.deleteParent(hashMap);
	}
	public List<Message> queryMessageByTeaNo(String teaNo) {
		return messageMapper.queryMessageByTeaNo(teaNo);
	}
	
	// 留言信息
	public List<Message2> queryMessage2ByPersonInfo(String personInfo) {
		return message2Mapper.queryMessage2ByPersonInfo(personInfo);
	}
	public int addMessage2(Message2 message2) {
		return message2Mapper.addMessage2(message2);
	}
	public int deleteMessage2ByDate(Date messagedate) {
		return message2Mapper.deleteMessage2ByDate(messagedate);
	}
	

}
