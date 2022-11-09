package org.haitao.mapper;

import org.haitao.entity.Admin;

public interface AdminMapper {
	Admin queryAdminByPhoneNo(String phoneNo);
	
	int updatePassword(Admin admin);
}
