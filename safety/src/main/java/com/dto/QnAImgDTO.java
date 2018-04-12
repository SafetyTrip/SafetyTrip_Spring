package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("QnAImgDTO")
public class QnAImgDTO {
	
	private int qino;
	private int qno;
	
	
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
		// TODO Auto-generated method stub
		return super.toString();
	}
	@Override
	protected void finalize() throws Throwable {
		// TODO Auto-generated method stub
		super.finalize();
	}
	public QnAImgDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public QnAImgDTO(int qino, int qno) {
		super();
		this.qino = qino;
		this.qno = qno;
	}
	public int getQino() {
		return qino;
	}
	public void setQino(int qino) {
		this.qino = qino;
	}
	public int getQno() {
		return qno;
	}
	public void setQno(int qno) {
		this.qno = qno;
	}

	
	
	
}
