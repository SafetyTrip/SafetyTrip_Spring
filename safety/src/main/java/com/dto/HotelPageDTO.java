package com.dto;

import java.util.List;

public class HotelPageDTO extends PageDTO {

	private List<HotelDTO> list; // 호텔 게시판 목록
	
	public HotelPageDTO() { super(); };
	
	public List<HotelDTO> getList() {
		return list;
	}
	public void setList(List<HotelDTO> list) {
		this.list = list;
	}
}
