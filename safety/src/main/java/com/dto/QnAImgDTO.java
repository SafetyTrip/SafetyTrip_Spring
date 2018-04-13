package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("QnAImgDTO")
public class QnAImgDTO {
	
	private int qino;
	private int qno;
	
	
	@Override
	public String toString() {
		return "QnAImgDTO [qino=" + qino + ", qno=" + qno + "]";
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
