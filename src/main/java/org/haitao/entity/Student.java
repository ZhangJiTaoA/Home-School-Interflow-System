package org.haitao.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Student {
	private String stuNo;
	private String name;
	private Integer sex;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date bornDate;
	
	public String getStuNo() {
		return stuNo;
	}

	public void setStuNo(String stuNo) {
		this.stuNo = stuNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public Date getBornDate() {
		return bornDate;
	}

	public void setBornDate(Date bornDate) {
		this.bornDate = bornDate;
	}

	@Override
	public String toString() {
		return "Student [stuNo=" + stuNo + ", name=" + name + ", sex=" + sex + ", bornDate=" + bornDate + "]";
	}
	
}
