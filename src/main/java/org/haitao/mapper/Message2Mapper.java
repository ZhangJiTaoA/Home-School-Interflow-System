package org.haitao.mapper;

import java.util.Date;
import java.util.List;

import org.haitao.entity.Message2;

public interface Message2Mapper {
	
	List<Message2> queryMessage2ByTeaNo(String teaNo);
	
	List<Message2> queryMessage2ByPersonInfo(String personInfo);
	
	int addMessage2(Message2 message2);
	
	int deleteMessage2ByDate(Date messagedate);

}
