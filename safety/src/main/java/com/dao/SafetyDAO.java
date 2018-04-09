package com.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.PageDTO;
import com.dto.SafetyDTO;

@Repository
public class SafetyDAO {

	@Autowired
	SqlSessionTemplate template;
	
	public List<SafetyDTO> getSafetyListByCouno(int couno) {
		return template.selectList("SafetyMapper.getSafetyListByCouno", couno, new RowBounds(0, 5));
	}
	
	//목록보기
	public PageDTO<SafetyDTO> getDetailSafetyList(HashMap<String, Integer> map){
		PageDTO<SafetyDTO> dto = new PageDTO<>();
		
		int curPage = map.get("curPage");
		int perPage = dto.getPerPage();
		int start = (curPage-1)*perPage;
		int couno = map.get("couno");
		
		List<SafetyDTO> list = template.selectList("SafetyMapper.getSafetyListByCouno", couno, new RowBounds(start, perPage));
		
		int sno = (map.get("sno") == 0? list.get(0).getSno():map.get("sno"));
		SafetyDTO sDto = template.selectOne("SafetyMapper.getSafetyOneBySno", sno);
		
		dto.setList(list);
		dto.setDto(sDto);
		dto.setCurPage(curPage);
		dto.setTotalCount(getCountSafety(map.get("couno")));
		
		return dto;
	}
	
	public int getCountSafety(int couno) {
		return template.selectOne("SafetyMapper.getCountSafety", couno);
	}
}
