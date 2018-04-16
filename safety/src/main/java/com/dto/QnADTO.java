package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("QnADTO")
public class QnADTO {
	
	private int qno;
	private int uno=1;
	private int hno=1;
	private String title;
	private String question;
	private String answer;
	private int qopen;
	private String createDate;
	
	
	@Override
	public String toString() {
		return "QnADTO [qno=" + qno + ", uno=" + uno + ", hno=" + hno + ", title=" + title + ", question=" + question
				+ ", answer=" + answer + ", qopen=" + qopen + ", createDate=" + createDate + "]";
	}
	public QnADTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public QnADTO(int qno, int uno, int hno, String title, String question, String answer, int qopen,
			String createDate) {
		super();
		this.qno = qno;
		this.uno = uno;
		this.hno = hno;
		this.title = title;
		this.question = question;
		this.answer = answer;
		this.qopen = qopen;
		this.createDate = createDate;
	}
	public int getQno() {
		return qno;
	}
	public void setQno(int qno) {
		this.qno = qno;
	}
	public int getUno() {
		return uno;
	}
	public void setUno(int uno) {
		this.uno = uno;
	}
	public int getHno() {
		return hno;
	}
	public void setHno(int hno) {
		this.hno = hno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public int getQopen() {
		return qopen;
	}
	public void setQopen(int qopen) {
		this.qopen = qopen;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	
	
	
	
	
}
