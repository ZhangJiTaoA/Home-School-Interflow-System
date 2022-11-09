package org.haitao.entity;

public class Parent {
	private String name;
	private String phoneNo;
	private String stuNo;
	private String password;
	private String relation;
	private String address;
	private String workunit;
	
	
	
	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getPhoneNo() {
		return phoneNo;
	}



	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}



	public String getStuNo() {
		return stuNo;
	}



	public void setStuNo(String stuNo) {
		this.stuNo = stuNo;
	}

	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}




	public String getRelation() {
		return relation;
	}



	public void setRelation(String relation) {
		this.relation = relation;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public String getWorkunit() {
		return workunit;
	}



	public void setWorkunit(String workunit) {
		this.workunit = workunit;
	}



	@Override
	public String toString() {
		return "Parent [name=" + name + ", phoneNo=" + phoneNo + ", stuNo=" + stuNo + ", password=" + password
				+ ", relation=" + relation + ", address=" + address + ", workunit=" + workunit + "]";
	}


	
	
}
