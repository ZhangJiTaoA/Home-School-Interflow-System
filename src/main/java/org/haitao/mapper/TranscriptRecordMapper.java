package org.haitao.mapper;

import java.util.Date;
import java.util.List;

import org.haitao.entity.TranscriptRecord;

public interface TranscriptRecordMapper {
	int addTranscriptRecord(TranscriptRecord transcriptRecord);
	
	int deleteTranscriptRecord(Date uploadDate);
	
	String queryTranscriptName(Date uploadDate);
	
	List<TranscriptRecord> queryAllTranscriptRecord();
	
	List<TranscriptRecord> queryTranscriptRecordByteaNo(String teaNo);
	
	List<TranscriptRecord> queryTRByPrefix(String prefix);
	
	List<TranscriptRecord> queryTRMME(String claGra);
}
