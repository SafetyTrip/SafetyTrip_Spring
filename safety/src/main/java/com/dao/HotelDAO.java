package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.HotelDTO;

@Repository
public class HotelDAO {

	@Autowired
	SqlSessionTemplate template;
	
	public List<HotelDTO> getHotelList(String couno) {
		return template.selectList("getHotelList", couno);
	}
}
