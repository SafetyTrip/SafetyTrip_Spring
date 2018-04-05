package com.dto;

public class PageDTO {

	private int perPage = 5;  // 페이지 당 보여줄 갯수
	private int totalCount;   // 전체 레코드 갯수
	private int curPage;      // 현재 페이지 번호
	private int couno;
	private int cityno;
	
	public PageDTO() {}
	
	public int getPerPage() {
		return perPage;
	}
	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}
	
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	
	public int getCouno() {
		return couno;
	}
	public void setCouno(int couno) {
		this.couno = couno;
	}
	
	public int getCityno() {
		return cityno;
	}
	public void setCityno(int cityno) {
		this.cityno = cityno;
	}
}
