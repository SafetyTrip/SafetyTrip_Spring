package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.HotelDAO;
import com.dto.HotelDTO;

@Service
public class HotelService {

	@Autowired
	HotelDAO dao;
	
	public List<HotelDTO> getHotelList(String couno) {
		return dao.getHotelList(couno);
	}
	
	public List<HotelDTO> getHotelListByCityno(String cityno) {
		return dao.getHotelListByCityno(cityno);
	}
}
