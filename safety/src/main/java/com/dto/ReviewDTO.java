package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("ReviewDTO")
public class ReviewDTO {

	private int revno;
	private String userid;
	private int cityno;
	private String title;
	private String content;
	private int viewscount;
	private int good;
	private String createdate;
	public int getRevno() {
		return revno;
	}
	public void setRevno(int revno) {
		this.revno = revno;
	}
	
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
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
	public String getCreatedate() {
		return createdate;
	}
	public void setCreatedate(String createdate) {
		this.createdate = createdate;
	}
	@Override
	public String toString() {
		return "ReviewDTO [revno=" + revno + ", userid=" + userid + ", cityno=" + cityno + ", title=" + title
				+ ", content=" + content + ", viewscount=" + viewscount + ", good=" + good + ", createdate="
				+ createdate + "]";
	}
	
	
	
	
	
}
