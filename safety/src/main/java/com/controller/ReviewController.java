package com.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dto.ReviewDTO;
import com.service.ReviewService;

@Controller
public class ReviewController {

	@Autowired
	ReviewService rService;
	
	//Review글쓰기
	@RequestMapping(value="/reviewWrite")
	@ResponseBody
	public Boolean reviewWrite(ReviewDTO rDTO) {
		return rService.reviewWrite(rDTO);
	}
	
}
