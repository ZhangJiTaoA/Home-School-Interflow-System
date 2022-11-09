package org.haitao.entity;

import java.util.Date;

public class Message {
	private Date messageDate;
	private String teaNo;
	private String stuNo;
	private String title;
	private String content;
	public Date getMessageDate() {
		return messageDate;
	}
	public void setMessageDate(Date messageDate) {
		this.messageDate = messageDate;
	}
	public String getTeaNo() {
		return teaNo;
	}
	public void setTeaNo(String teaNo) {
		this.teaNo = teaNo;
	}
	public String getStuNo() {
		return stuNo;
	}
	public void setStuNo(String stuNo) {
		this.stuNo = stuNo;
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
		return "Message [messageDate=" + messageDate + ", teaNo=" + teaNo + ", stuNo=" + stuNo + ", title=" + title
				+ ", content=" + content + "]";
	}
	
}
