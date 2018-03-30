package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.CityDTO;

@Repository
public class CityDAO {

	@Autowired
	SqlSessionTemplate template;
	
	public List<CityDTO> getCityListByCityname(String word) {
		return template.selectList("getCityListByCityname", word);
	}
	
	public List<CityDTO> getCityListByCityename(String word) {
		return template.selectList("getCityListByCityename", word);
	}
	
	public List<CityDTO> getCityListByContinent(String continent) {
		return template.selectList("getCityListByContinent", continent);
	}
}
