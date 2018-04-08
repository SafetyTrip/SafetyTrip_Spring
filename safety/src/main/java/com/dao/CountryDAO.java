package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.CountryDTO;

@Repository
public class CountryDAO {

	@Autowired
	SqlSessionTemplate template;
	
	public List<CountryDTO> getCountryListByCname(String word) {
		return template.selectList("CountryMapper.getCountryListByCname", word);
	}
	
	public List<CountryDTO> getCountryListByCename(String word) {
		return template.selectList("CountryMapper.getCountryListByCename", word);
	}
	
	public List<CountryDTO> getCountryListByContinent(String continent) {
		return template.selectList("CountryMapper.getCountryListByContinent", continent);
	}
	
	public String getCountryOneByCouno(int couno) {
		return template.selectOne("CountryMapper.getCountryOneByCouno", couno);
	}
}
