package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.SafetyDTO;

@Repository
public class SafetyDAO {

	@Autowired
	SqlSessionTemplate template;
	
	public List<SafetyDTO> getSafetyListByCouno(String couno) {
		return template.selectList("getSafetyListByCouno", couno);
	}
}
