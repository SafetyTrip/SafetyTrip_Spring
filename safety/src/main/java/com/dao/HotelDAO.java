package com.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.HotelDTO;
import com.dto.HotelPageDTO;

@Repository
public class HotelDAO {

	@Autowired
	SqlSessionTemplate template;
	
	public List<HotelDTO> getHotelList(HashMap<String, Integer> map) {
		return template.selectList("HotelMapper.getHotelList", map);
	}
	
	//목록보기
	public HotelPageDTO getDetailHotelList(HashMap<String, Integer> map){
		int curPage = map.get("curPage");
		HotelPageDTO pageDTO = new HotelPageDTO();
		
		int start = (curPage-1)*pageDTO.getPerPage();	
		List<HotelDTO> list=  template.selectList("HotelMapper.getHotelList", map,
				new RowBounds(start, pageDTO.getPerPage()));
		
		pageDTO.setList(list);
		pageDTO.setCurPage(curPage);
		pageDTO.setTotalCount(getCountHotel(map));
		
		return pageDTO;
	}
	
	public int getCountHotel(HashMap<String, Integer> map) {
		return template.selectOne("HotelMapper.getCountHotel", map);
	}
}
