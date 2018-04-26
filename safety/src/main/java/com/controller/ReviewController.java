package com.controller;


import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	
	@RequestMapping(value="/review/{couno}/{cityename}/{cityno}")
	public void reviewRetrieve(@PathVariable String cityename, @PathVariable int cityno,
			                   @RequestParam int curPage) {
	
		HashMap<String,Integer> map = new HashMap<String,Integer>();
		map.put("cityno", cityno);
		map.put("curPage",curPage);
		
		
		
	}
	
}
