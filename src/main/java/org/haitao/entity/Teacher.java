package org.haitao.entity;

public class Teacher {
	private String teaNo;
	private String name;
	private Integer sex;	     // 男1，女0
	private String phoneNo;	
	private String password;	
	private String course;	
	private Integer grade1;
	private Integer class1;
	private Integer grade2;
	private Integer class2;
	private Integer isCharge;    // 如果是班主任置为1
	public String getTeaNo() {
		return teaNo;
	}
	public void setTeaNo(String teaNo) {
		this.teaNo = teaNo;
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
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public Integer getGrade1() {
		return grade1;
	}
	public void setGrade1(Integer grade1) {
		this.grade1 = grade1;
	}
	public Integer getClass1() {
		return class1;
	}
	public void setClass1(Integer class1) {
		this.class1 = class1;
	}
	public Integer getGrade2() {
		return grade2;
	}
	public void setGrade2(Integer grade2) {
		this.grade2 = grade2;
	}
	public Integer getClass2() {
		return class2;
	}
	public void setClass2(Integer class2) {
		this.class2 = class2;
	}
	public Integer getIsCharge() {
		return isCharge;
	}
	public void setIsCharge(Integer isCharge) {
		this.isCharge = isCharge;
	}
	@Override
	public String toString() {
		return "Teacher [teaNo=" + teaNo + ", name=" + name + ", sex=" + sex + ", phoneNo=" + phoneNo + ", password="
				+ password + ", course=" + course + ", grade1=" + grade1 + ", class1=" + class1 + ", grade2=" + grade2
				+ ", class2=" + class2 + ", isCharge=" + isCharge + "]";
	}
	
	
}
