package com.dao;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.ReviewDTO;

@Repository
public class ReviewDAO {

	@Autowired
	SqlSessionTemplate template;
	
	
	
	//Review글쓰기
	public int reviewWrite(ReviewDTO rDTO) {
		int n = template.insert("ReviewMapper.reviewWrite",rDTO);
		return n;
	}
	
}
