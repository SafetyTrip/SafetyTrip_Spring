package com.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.HotelDAO;
import com.dto.HotelDTO;
import com.dto.PageDTO;

@Service
public class HotelService {

	@Autowired
	HotelDAO dao;
	
	public List<HotelDTO> getHotelList(HashMap<String, Integer> map) {
		return dao.getHotelList(map);
	}
	
	public PageDTO<HotelDTO> getDetailHotelList(HashMap<String, Integer> map){
		return dao.getDetailHotelList(map);
	}
}
