package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("ReviewDTO")
public class ReviewDTO {

	private int revno;
	private int uno;
	private int cityno;
	private String title;
	private String content;
	private int viewscount;
	private int good;
	private int createdate;
	public int getRevno() {
		return revno;
	}
	public void setRevno(int revno) {
		this.revno = revno;
	}
	public int getUno() {
		return uno;
	}
	public void setUno(int uno) {
		this.uno = uno;
	}
	public int getCityno() {
		return cityno;
	}
	public void setCityno(int cityno) {
		this.cityno = cityno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getViewscount() {
		return viewscount;
	}
	public void setViewscount(int viewscount) {
		this.viewscount = viewscount;
	}
	public int getGood() {
		return good;
	}
	public void setGood(int good) {
		this.good = good;
	}
	public int getCreatedate() {
		return createdate;
	}
	public void setCreatedate(int createdate) {
		this.createdate = createdate;
	}
	
	@Override
	public String toString() {
		return "ReviewDTO [revno=" + revno + ", uno=" + uno + ", cityno=" + cityno + ", title=" + title + ", content="
				+ content + ", viewscount=" + viewscount + ", good=" + good + ", createdate=" + createdate + "]";
	}
	
	
}
