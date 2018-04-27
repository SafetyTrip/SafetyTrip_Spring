package com.service;


import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ReviewDAO;
import com.dto.PageDTO;
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
		} else {
			
		}
		return result;
	}
	
	//Review 리스트
	public PageDTO<ReviewDTO> reviewRetrieve(HashMap<String,Integer> map){
		return rDAO.reviewList(map);
	}
	
	public List<ReviewDTO> getReviewList(HashMap<String,Integer> map){
		return rDAO.getReviewList(map);
	}
	
	public List<ReviewDTO> getReviewTotalList(String cename){
		return rDAO.getReviewTotalList(cename);
	}
}
