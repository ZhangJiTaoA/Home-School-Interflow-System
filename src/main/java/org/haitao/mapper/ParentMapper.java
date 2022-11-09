package org.haitao.mapper;

import java.util.HashMap;
import java.util.List;

import org.haitao.entity.Parent;

public interface ParentMapper {
	
	List<Parent> queryAllInfo(String tableName);
	List<Parent> queryParentBystuNo(HashMap hashMap);
	List<Parent> queryParentByName(HashMap hashMap);
	List<Parent> queryParentByPhoneno(HashMap hashMap);
	
	int creatTable(String tablePrefix);

	int addParent(HashMap hashMap);
	
	int updateParent(HashMap hashMap);
	
	int deleteParent(HashMap hashMap);

}
