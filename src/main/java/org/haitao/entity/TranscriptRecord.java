package org.haitao.entity;

import java.util.Date;

public class TranscriptRecord {
	private String teaNo;
	private String transcriptName;
	private Date uploadDate;
	
	
	
	public TranscriptRecord(String teaNo, String transcriptName, Date uploadDate) {
		super();
		this.teaNo = teaNo;
		this.transcriptName = transcriptName;
		this.uploadDate = uploadDate;
	}
	public String getTeaNo() {
		return teaNo;
	}
	public void setTeaNo(String teaNo) {
		this.teaNo = teaNo;
	}
	public String getTranscriptName() {
		return transcriptName;
	}
	public void setTranscriptName(String transcriptName) {
		this.transcriptName = transcriptName;
	}
	public Date getUploadDate() {
		return uploadDate;
	}
	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}
	@Override
	public String toString() {
		return "TranscriptRecord [teaNo=" + teaNo + ", transcriptName=" + transcriptName + ", uploadDate=" + uploadDate
				+ "]";
	}
	
	
}
