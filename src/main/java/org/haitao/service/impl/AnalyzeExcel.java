package org.haitao.service.impl;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import org.haitao.entity.Parent;
import org.haitao.entity.Student;
import org.haitao.entity.Teacher;
import org.haitao.entity.Transcript;
import org.haitao.service.IAnalyzeExcel;
import org.springframework.stereotype.Service;

@Service("analyzeExcel")
public class AnalyzeExcel implements IAnalyzeExcel {
	public Workbook readExcel(String path) {
		if(path==null)return null;
		String extString = path.substring(path.lastIndexOf('.'));
		try {
			FileInputStream fs = new FileInputStream(path);
			if(".xls".equals(extString)) {
				return new HSSFWorkbook(fs);
			}else if(".xlsx".equals(extString)) {
				return new XSSFWorkbook(fs);
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	// 无论什么类型，返回字符串，否则返回null
	private String getStringCellValue(Cell cell) {
		String cellValue = null;
		if(cell!=null) {
			cell.setCellType(CellType.STRING);
			cellValue =cell.getStringCellValue();
		}else {
			return null;
		}
		return cellValue;
	}
	// 如果是数字类型，返回Integer，否则返回null
	private Integer getIntegerCellValue(Cell cell) {
		Integer cellValue=null;
		if(cell!=null) {
			// 如果是数字类型，返回Integer否则返回null
			if(cell.getCellType().equals(CellType.NUMERIC)) {
				cellValue = (int)cell.getNumericCellValue();
			} 
		}
		return cellValue;
	}
	// 如果是数字类型，返回Double,否则返回null
	private Double getDoubleCellValue(Cell cell) {
		Double cellValue = null;
		if(cell!=null) {
			try {
				cell.setCellType(CellType.NUMERIC);
				cellValue = cell.getNumericCellValue();
			}catch (IllegalStateException e) {
				cellValue = (double) -1;
			}
			
		}
		return cellValue;
	}
	// 如果是日期类型，返回Date，否则返回null
	private Date getDateCellValue(Cell cell) {
		Date date = null;
		if(cell!=null) {
			cell.setCellType(CellType.FORMULA);
			date = cell.getDateCellValue();
		}
		return date;
	}
	
	// 读取教师的excel
	public List<Teacher> readTeacherExcel(String path) {
		List<Teacher> teachers = new ArrayList<Teacher>();
		// 通过写的函数获得文件操作实例对象
		Workbook excelFile = readExcel(path);
		// 获得sheet
		Sheet sheet = excelFile.getSheetAt(0);
		// 获得最大行数
		int rownum = sheet.getPhysicalNumberOfRows();
		// 获取第二行
		Row row = sheet.getRow(1);
		// 获取最大列数
		int colnum = row.getPhysicalNumberOfCells();
		// 从第三行开始遍历
		for(int i=2;i<rownum;i++) {
			row = sheet.getRow(i);
			if(row != null) {
			Teacher teacher = new Teacher();
			
			teacher.setTeaNo(getStringCellValue(row.getCell(0)));
			teacher.setName(getStringCellValue(row.getCell(1)));
			teacher.setSex(getIntegerCellValue(row.getCell(2)));
			teacher.setPhoneNo(getStringCellValue(row.getCell(3)));
			teacher.setPassword(getStringCellValue(row.getCell(4)));
			teacher.setCourse(getStringCellValue(row.getCell(5)));
			teacher.setGrade1(getIntegerCellValue(row.getCell(6)));
			teacher.setClass1(getIntegerCellValue(row.getCell(7)));
			teacher.setGrade2(getIntegerCellValue(row.getCell(8)));
			teacher.setClass2(getIntegerCellValue(row.getCell(9)));
			teacher.setIsCharge(getIntegerCellValue(row.getCell(10)));
			
			teachers.add(teacher);
			}else {
				break;
			}
		}
		
		try {
			excelFile.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return teachers;
	}
	// 读取学生的excel
	public List<Student> readStudentExcel(String path){
		List<Student> students = new ArrayList<Student>();
		
		Workbook excelFile = readExcel(path);
		
		Sheet sheet = excelFile.getSheetAt(0);
		int rownum = sheet.getPhysicalNumberOfRows();
		Row row = sheet.getRow(1);
		int colnum = row.getPhysicalNumberOfCells();
		
		for(int i=2;i<rownum;i++) {
			row = sheet.getRow(i);
			if(row!=null) {
				Student stu = new Student();
				stu.setStuNo(getStringCellValue(row.getCell(0)));
				stu.setName(getStringCellValue(row.getCell(1)));
				stu.setSex(getIntegerCellValue(row.getCell(2)));
				stu.setBornDate(getDateCellValue(row.getCell(3)));
				
				students.add(stu);
			}else {
				break;
			}
		}
		try {
			excelFile.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return students;
	}
	// 读取家长的excel
	public List<Parent> readParentExcel(String path){
		List<Parent> parents = new ArrayList<Parent>();
		
		Workbook excelFile = readExcel(path);
		
		Sheet sheet = excelFile.getSheetAt(0);
		int rownum = sheet.getPhysicalNumberOfRows();
		Row row = sheet.getRow(1);
		int colnum = row.getPhysicalNumberOfCells();
		
		for(int i=2;i<rownum;i++) {
			row = sheet.getRow(i);
			if(row!=null) {
				Parent parent = new Parent();
				
				parent.setName(getStringCellValue(row.getCell(0)));
				parent.setPhoneNo(getStringCellValue(row.getCell(1)));
				parent.setStuNo(getStringCellValue(row.getCell(2)));
				parent.setPassword(getStringCellValue(row.getCell(3)));
				parent.setRelation(getStringCellValue(row.getCell(4)));
				parent.setAddress(getStringCellValue(row.getCell(5)));
				parent.setWorkunit(getStringCellValue(row.getCell(6)));
				
				parents.add(parent);
			}else {
				break;
			}
		}
		try {
			excelFile.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return parents;	
	}
	// 读取成绩的excel
	public List<Transcript> readTranscriptExcel(String path) {
		List<Transcript> transcripts = new ArrayList<Transcript>();
		
		Workbook excelFile = readExcel(path);
		
		Sheet sheet = excelFile.getSheetAt(0);
		int rownum = sheet.getPhysicalNumberOfRows();
		Row row = sheet.getRow(1);
		int colnum = row.getPhysicalNumberOfCells();
		
		for(int i=2;i<rownum;i++) {
			row = sheet.getRow(i);
			if(row!=null) {
				Transcript transcript = new Transcript();
				
				transcript.setName(getStringCellValue(row.getCell(0)));
				transcript.setStuNo(getStringCellValue(row.getCell(1)));
				
				transcript.setChinese(getDoubleCellValue(row.getCell(2)));
				transcript.setMath(getDoubleCellValue(row.getCell(3)));
				transcript.setEnglish(getDoubleCellValue(row.getCell(4)));
				transcript.setPhysical(getDoubleCellValue(row.getCell(5)));
				transcript.setChemical(getDoubleCellValue(row.getCell(6)));
				transcript.setBiological(getDoubleCellValue(row.getCell(7)));
				transcript.setHistory(getDoubleCellValue(row.getCell(8)));
				transcript.setGeographic(getDoubleCellValue(row.getCell(9)));
				transcript.setPolitical(getDoubleCellValue(row.getCell(10)));
				transcript.setSport(getDoubleCellValue(row.getCell(11)));
				Double average = transcript.calculateAverage();
				transcript.setAverage(average);
				
				transcripts.add(transcript);
			}else {
				break;
			}
		}
		try {
			excelFile.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return transcripts;	
	}

	
}
