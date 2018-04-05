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
		HotelPageDTO dto = new HotelPageDTO();
		
		int curPage = map.get("curPage");
		int perPage = dto.getPerPage();
		int start = (curPage-1)*perPage;	
		
		List<HotelDTO> list = template.selectList("HotelMapper.getHotelList", map, new RowBounds(start, perPage));
		
		dto.setList(list);
		dto.setCurPage(curPage);
		dto.setTotalCount(getCountHotel(map));
		
		return dto;
	}
	
	public int getCountHotel(HashMap<String, Integer> map) {
		return template.selectOne("HotelMapper.getCountHotel", map);
	}
}
