package org.haitao.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.haitao.entity.Message;
import org.haitao.entity.Message2;
import org.haitao.entity.Parent;

public interface IParentService {
	
	List<Parent> queryAllInfo(String tableName);
	List<Parent> queryParentBystuNo(HashMap hashMap);
	List<Parent> queryParentByName(HashMap hashMap);
	List<Parent> queryParentByPhoneno(HashMap hashMap);
	
	int creatTable(String tablePrefix);

	int addParent(HashMap hashMap);
	
	int updateParent(HashMap hashMap);
	
	int deleteParent(HashMap hashMap);

	
// 获得教师信息
	List<Message> queryMessageByTeaNo(String teaNo);
	
	
	// 留言信息
	List<Message2> queryMessage2ByPersonInfo(String parentPhone);
	
	int addMessage2(Message2 message2);
	
	int deleteMessage2ByDate(Date messagedate);
	
	
}
