package com.dao;


import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.PageDTO;
import com.dto.ReviewDTO;

@Repository
public class ReviewDAO {

	@Autowired
	SqlSessionTemplate template;
	
	//Review글쓰기
	public int reviewWrite(ReviewDTO rDTO) {
		int n = template.insert("ReviewMapper.reviewWrite",rDTO);
		return n;
	}
	
	//Review 리스트
	public PageDTO<ReviewDTO> reviewList(HashMap<String,Integer> map){
		
		reviewCount(map.get("revno"));
		
		PageDTO<ReviewDTO> pDTO = new PageDTO<ReviewDTO>();
		
		int curPage = map.get("curPage");
		int start = (curPage - 1) * pDTO.getPerPage();
		int end = pDTO.getPerPage();
		
		List<ReviewDTO> rList = template.selectList("ReviewMapper.reviewList",map,
													new RowBounds(start, end));
		
		int revno = (map.get("revno") == 0 ) ? rList.get(0).getRevno() : map.get("revno");
		ReviewDTO rDTO = template.selectOne("ReviewMapper.reviewListByRevno",revno);
		pDTO.setList(rList);
		pDTO.setCurPage(curPage);
		pDTO.setDto(rDTO);
		pDTO.setTotalCount(reviewTotalCount(map.get("cityno")));
		
		return pDTO;
		
	}
	
	private int reviewTotalCount(int cityno) {
		return template.selectOne("ReviewMapper.reviewListCount",cityno);
	}
	private void reviewCount(int revno) {
		template.update("ReviewMapper.reviewCount",revno);
	}
	
	public List<ReviewDTO> getReviewList(HashMap<String,Integer> map){
		return  template.selectList("ReviewMapper.reviewList",map);
	}
	
}
