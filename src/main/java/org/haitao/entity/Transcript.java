package org.haitao.entity;

public class Transcript {
	private String stuNo;
	private String name;
	private Double chinese; // 语文
	private Double math; // 数学
	private Double english; // 英语
	private Double physical; // 物理
	private Double chemical; // 化学
	private Double biological;// 生物
	private Double history; // 历史
	private Double geographic;// 地理
	private Double political; // 政治
	private Double sport; // 体育
	private Double average; // 平均成绩

	public String getStuNo() {
		return stuNo;
	}

	public void setStuNo(String stuNo) {
		this.stuNo = stuNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Double getChinese() {
		return chinese;
	}

	public void setChinese(Double chinese) {
		this.chinese = chinese;
	}

	public Double getMath() {
		return math;
	}

	public void setMath(Double math) {
		this.math = math;
	}

	public Double getEnglish() {
		return english;
	}

	public void setEnglish(Double english) {
		this.english = english;
	}

	public Double getPhysical() {
		return physical;
	}

	public void setPhysical(Double physical) {
		this.physical = physical;
	}

	public Double getChemical() {
		return chemical;
	}

	public void setChemical(Double chemical) {
		this.chemical = chemical;
	}

	public Double getBiological() {
		return biological;
	}

	public void setBiological(Double biological) {
		this.biological = biological;
	}

	public Double getHistory() {
		return history;
	}

	public void setHistory(Double history) {
		this.history = history;
	}

	public Double getGeographic() {
		return geographic;
	}

	public void setGeographic(Double geographic) {
		this.geographic = geographic;
	}

	public Double getPolitical() {
		return political;
	}

	public void setPolitical(Double political) {
		this.political = political;
	}

	public Double getSport() {
		return sport;
	}

	public void setSport(Double sport) {
		this.sport = sport;
	}

	public Double getAverage() {
		return average;
	}

	public void setAverage(Double average) {
		this.average = average;
	}

	public Double calculateAverage() {
		Double sum = 0.0;
		int count = 0;
		sum = ((chinese != -1) ? chinese : 0) + ((math != -1) ? math : 0) + ((english != -1) ? english : 0)
				+ ((physical != -1) ? physical : 0) + ((chemical != -1) ? chemical : 0)
				+ ((biological != -1) ? biological : 0) + ((history != -1) ? history : 0)
				+ ((geographic != -1) ? geographic : 0) + ((political != -1) ? political : 0)
				+ ((sport != -1) ? sport : 0);
		count = ((chinese != -1) ? 1 : 0) + ((math != -1) ? 1 : 0) + ((english != -1) ? 1 : 0)
				+ ((physical != -1) ? 1 : 0) + ((chemical != -1) ? 1 : 0) + ((biological != -1) ? 1 : 0)
				+ ((history != -1) ? 1 : 0) + ((geographic != -1) ? 1 : 0) + ((political != -1) ? 1 : 0)
				+ ((sport != -1) ? 1 : 0);
		return sum/count;
	}

	@Override
	public String toString() {
		return "Transcript [stuNo=" + stuNo + ", name=" + name + ", chinese=" + chinese + ", math=" + math
				+ ", english=" + english + ", physical=" + physical + ", chemical=" + chemical + ", biological="
				+ biological + ", history=" + history + ", geographic=" + geographic + ", political=" + political
				+ ", sport=" + sport + ", average=" + average + "]";
	}

}
