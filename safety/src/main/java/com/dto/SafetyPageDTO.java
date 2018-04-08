package com.dto;

import java.util.List;

public class SafetyPageDTO extends PageDTO {

	private List<SafetyDTO> list; // 호텔 게시판 목록
	private SafetyDTO dto; // 현재 보여주고자 하는 page
	
	public SafetyPageDTO() { super(); };
	
	public List<SafetyDTO> getList() {
		return list;
	}
	public void setList(List<SafetyDTO> list) {
		this.list = list;
	}

	public SafetyDTO getDto() {
		return dto;
	}
	public void setDto(SafetyDTO dto) {
		this.dto = dto;
	}
}
