package com.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.CityDTO;
import com.dto.PageDTO;
import com.dto.ReviewDTO;

@Repository
public class CityDAO {

	@Autowired
	SqlSessionTemplate template;
	
	public List<CityDTO> getCityListByCityname(String word) {
		return template.selectList("CityMapper.getCityListByCityname", word);
	}
	
	public List<CityDTO> getCityListByCityename(String word) {
		return template.selectList("CityMapper.getCityListByCityename", word);
	}
	
	public List<CityDTO> getCityListByContinent(String continent) {
		return template.selectList("CityMapper.getCityListByContinent", continent);
	}
	
	public PageDTO getReviewList(int curPage, int cityno){
		
		PageDTO pDTO = new PageDTO();
		
		
		int start = (curPage - 1) * pDTO.getPerPage();
		int end = pDTO.getPerPage();
		List<ReviewDTO> reviewList = template.selectList("ReviewMapper.reviewList",cityno,
										new RowBounds(start, end));
		
		pDTO.setList(reviewList);
		pDTO.setCurPage(curPage);
		pDTO.setTotalCount(getReviewListCount(cityno));
		
		
		return pDTO;
	}
	
	private int getReviewListCount(int cityno) {
		return template.selectOne("ReviewMapper.reviewListCount",cityno);
	}
}
