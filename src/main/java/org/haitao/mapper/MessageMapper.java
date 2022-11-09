package org.haitao.mapper;

import java.util.Date;
import java.util.List;

import org.haitao.entity.Message;

public interface MessageMapper {

	List<Message> queryMessageByTeaNo(String teaNo);
	
	int addMessage(Message message);
	
	int deleteMessageByDate(Date date);
	
	
}
