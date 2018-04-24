package com.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ReviewDAO;
import com.dto.ReviewDTO;

@Service
public class ReviewService {

	@Autowired
	ReviewDAO rDAO;
	
	
	
	//Review 글쓰기
	public Boolean reviewWrite(ReviewDTO rDTO) {
		boolean result = false;
		int n = rDAO.reviewWrite(rDTO);
		if(n>0) {
			result = true;
		}
		return result;

	}
}
