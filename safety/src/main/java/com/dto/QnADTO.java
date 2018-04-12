package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("QnADTO")
public class QnADTO {
	
	private int qno;
	private int uno=8;
	private int hno=1;
	private String question;
	private int qopen;
	private String createDate;
	
	
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return super.hashCode();
	}
	@Override
	public boolean equals(Object obj) {
		// TODO Auto-generated method stub
		return super.equals(obj);
	}
	@Override
	protected Object clone() throws CloneNotSupportedException {
		// TODO Auto-generated method stub
		return super.clone();
	}

	@Override
	public String toString() {
		return "QnADTO [qno=" + qno + ", uno=" + uno + ", hno=" + hno + ", question=" + question + ", qopen=" + qopen
				+ ", createDate=" + createDate + "]";
	}
	@Override
	protected void finalize() throws Throwable {
		// TODO Auto-generated method stub
		super.finalize();
	}
	
	
	public QnADTO() {
	}
	public QnADTO(int qno, int uno, int hno, String question, int qopen, String createDate) {
		super();
		this.qno = qno;
		this.uno = uno;
		this.hno = hno;
		this.question = question;
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

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
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
