package org.haitao.service.impl;

import org.haitao.entity.Admin;
import org.haitao.entity.Teacher;
import org.haitao.mapper.AdminMapper;
import org.haitao.service.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service("adminService")
public class AdminService implements IAdminService{
	@Autowired
	@Qualifier("adminMapper")
	private AdminMapper adminMapper;
	
	public void setAdminMapper(AdminMapper adminMapper) {
		this.adminMapper = adminMapper;
	}
	
	public AdminMapper getAdminMapper() {
		return adminMapper;
	}
// --------------------------------实现增删查改方法-------------------
	public Admin queryAdminByPhoneNo(String phoneNo) {
		return adminMapper.queryAdminByPhoneNo(phoneNo);
	}

	public int updatePassword(Admin admin) {
		return adminMapper.updatePassword(admin);
	}
}
