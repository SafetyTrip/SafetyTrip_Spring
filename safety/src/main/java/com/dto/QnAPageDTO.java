package com.dto;
import com.dto.QnADTO;

import java.util.List;
import org.apache.ibatis.type.Alias;

@Alias("QnAPageDTO")
public class QnAPageDTO {
	
	private List<QnADTO> list; // QnA List
	private int perPage = 3;  // Page 갯수
	private int totalCount;   // Total
	private int curPage;      // Current
	
	
	@Override
	public String toString() {
		return "QnAPageDTO [list=" + list + ", perPage=" + perPage + ", totalCount=" + totalCount + ", curPage="
				+ curPage + "]";
	}
	public QnAPageDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public QnAPageDTO(List<QnADTO> list, int perPage, int totalCount, int curPage) {
		super();
		this.list = list;
		this.perPage = perPage;
		this.totalCount = totalCount;
		this.curPage = curPage;
	}
	public List<QnADTO> getList() {
		return list;
	}
	public void setList(List<QnADTO> list) {
		this.list = list;
	}
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
	
	
	
	
}
