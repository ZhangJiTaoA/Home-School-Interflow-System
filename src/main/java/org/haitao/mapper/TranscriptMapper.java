package org.haitao.mapper;

import java.util.HashMap;
import java.util.List;

import org.haitao.entity.Transcript;

public interface TranscriptMapper {
	
	int creatTranscritpTable(HashMap hashMap);
	
	List<Transcript> queryAllTranscript(String tableName);
	
	Transcript queryTranscriptByStuNo(HashMap hashMap);

	int addTranscript(HashMap hashMap);
	
	int deleteTranscriptTable(String tableName);
	
	int updateTranscript(HashMap hashMap);
	
	Integer getRankByStuNo(HashMap hashMap);
	
	Double queryAverage(String tableName);
	
	Double queryAverageSingleObject(HashMap hashMap);
	
}
