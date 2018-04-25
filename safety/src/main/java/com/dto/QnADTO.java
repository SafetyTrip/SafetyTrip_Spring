package com.dto;


import org.springframework.web.multipart.commons.CommonsMultipartFile;

//@Alias("QnADTO")
public class QnADTO {
	
	private int qino1;
    private String theText1; 
    private CommonsMultipartFile theFile1;
	
    private int qino2;
    private String theText2; 
    private CommonsMultipartFile theFile2;
    
    private int qino3;
    private String theText3; 
    private CommonsMultipartFile theFile3;
    
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
		return "QnADTO [qino1=" + qino1 + ", theText1=" + theText1 + ", theFile1=" + theFile1 + ", qino2=" + qino2
				+ ", theText2=" + theText2 + ", theFile2=" + theFile2 + ", qino3=" + qino3 + ", theText3=" + theText3
				+ ", theFile3=" + theFile3 + ", qno=" + qno + ", uno=" + uno + ", hno=" + hno + ", title=" + title
				+ ", question=" + question + ", answer=" + answer + ", qopen=" + qopen + ", createDate=" + createDate
				+ "]";
	}
	public QnADTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public QnADTO(int qino1, String theText1, CommonsMultipartFile theFile1, int qino2, String theText2,
			CommonsMultipartFile theFile2, int qino3, String theText3, CommonsMultipartFile theFile3, int qno, int uno,
			int hno, String title, String question, String answer, int qopen, String createDate) {
		super();
		this.qino1 = qino1;
		this.theText1 = theText1;
		this.theFile1 = theFile1;
		this.qino2 = qino2;
		this.theText2 = theText2;
		this.theFile2 = theFile2;
		this.qino3 = qino3;
		this.theText3 = theText3;
		this.theFile3 = theFile3;
		this.qno = qno;
		this.uno = uno;
		this.hno = hno;
		this.title = title;
		this.question = question;
		this.answer = answer;
		this.qopen = qopen;
		this.createDate = createDate;
	}
	public int getQino1() {
		return qino1;
	}
	public void setQino1(int qino1) {
		this.qino1 = qino1;
	}
	public String getTheText1() {
		return theText1;
	}
	public void setTheText1(String theText1) {
		this.theText1 = theText1;
	}
	public CommonsMultipartFile getTheFile1() {
		return theFile1;
	}
	public void setTheFile1(CommonsMultipartFile theFile1) {
		this.theFile1 = theFile1;
	}
	public int getQino2() {
		return qino2;
	}
	public void setQino2(int qino2) {
		this.qino2 = qino2;
	}
	public String getTheText2() {
		return theText2;
	}
	public void setTheText2(String theText2) {
		this.theText2 = theText2;
	}
	public CommonsMultipartFile getTheFile2() {
		return theFile2;
	}
	public void setTheFile2(CommonsMultipartFile theFile2) {
		this.theFile2 = theFile2;
	}
	public int getQino3() {
		return qino3;
	}
	public void setQino3(int qino3) {
		this.qino3 = qino3;
	}
	public String getTheText3() {
		return theText3;
	}
	public void setTheText3(String theText3) {
		this.theText3 = theText3;
	}
	public CommonsMultipartFile getTheFile3() {
		return theFile3;
	}
	public void setTheFile3(CommonsMultipartFile theFile3) {
		this.theFile3 = theFile3;
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
