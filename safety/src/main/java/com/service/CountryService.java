package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.CountryDAO;
import com.dto.CountryDTO;

@Service
public class CountryService {

	@Autowired
	CountryDAO dao;
	
	public List<CountryDTO> getCountryList(String word) {
		List<CountryDTO> list = dao.getCountryListByCname(word);
		
		if(list == null) {
			list = dao.getCountryListByCename(word);
		}
		
		return list;
	}
	
	public List<CountryDTO> getCountryListByContinent(String continent) {
		return dao.getCountryListByContinent(continent);
	}
}
