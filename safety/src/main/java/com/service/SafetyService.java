package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.SafetyDAO;
import com.dto.SafetyDTO;

@Service
public class SafetyService {

	@Autowired
	SafetyDAO dao;
	
	public List<SafetyDTO> getSafetyListByCouno(int couno) {
		return dao.getSafetyListByCouno(couno);
	}
}
