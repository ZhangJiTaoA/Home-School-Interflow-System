package org.haitao.entity;

import java.util.Date;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

public class Message2 {
	private Date messageDate;
	private String personInfo;
	private String teaNo;
	private String title;
	private String content;
	private Integer isOpen;  // 老师是否查看过
	
	public Integer getIsOpen() {
		return isOpen;
	}
	public void setIsOpen(Integer isOpen) {
		this.isOpen = isOpen;
	}
	public Date getMessageDate() {
		return messageDate;
	}
	public void setMessageDate(Date messageDate) {
		this.messageDate = messageDate;
	}
	
	public String getPersonInfo() {
		return personInfo;
	}
	public void setPersonInfo(String personInfo) {
		this.personInfo = personInfo;
	}
	public String getTeaNo() {
		return teaNo;
	}
	public void setTeaNo(String stuNo) {
		this.teaNo = stuNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "Message2 [messageDate=" + messageDate + ", personInfo=" + personInfo + ", teaNo=" + teaNo + ", title="
				+ title + ", content=" + content + ", isOpen=" + isOpen + "]";
	}
	
}
