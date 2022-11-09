package org.haitao.entity;

public class Admin {
	private String phoneNo;
	private String name;
	private String password;
	

	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Admin [phone=" + phoneNo + ", name=" + name + ", password=" + password + "]";
	}
	
}
