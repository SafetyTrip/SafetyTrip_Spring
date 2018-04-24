package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.CityDAO;
import com.dto.CityDTO;
import com.dto.PageDTO;

@Service
public class CityService {

	@Autowired
	CityDAO dao;
	
	public List<CityDTO> getCityList(String word) {
		List<CityDTO> list = dao.getCityListByCityname(word);
		
		if(list == null) {
			list = dao.getCityListByCityename(word);
		}
		
		return list;
	}
	
	public List<CityDTO> getCityListByContinent(String continent) {
		return dao.getCityListByContinent(continent);
	}
	
	public PageDTO getReviewList(int curPage,int cityno){
		return dao.getReviewList(curPage, cityno);
	}
}
