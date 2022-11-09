package org.haitao.service;

import org.haitao.entity.Admin;
import org.haitao.entity.Teacher;

public interface IAdminService {
	Admin queryAdminByPhoneNo(String phoneNo);
	int updatePassword(Admin admin);
}
