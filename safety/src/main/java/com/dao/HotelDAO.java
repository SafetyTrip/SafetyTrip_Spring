package com.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.HotelDTO;
import com.dto.PageDTO;

@Repository
public class HotelDAO {

	@Autowired
	SqlSessionTemplate template;
	
	public List<HotelDTO> getHotelList(HashMap<String, Integer> map) {
		return template.selectList("HotelMapper.getHotelList", map, new RowBounds(0, 5));
	}
	
	//목록보기
	public PageDTO<HotelDTO> getDetailHotelList(HashMap<String, Integer> map){
		PageDTO<HotelDTO> dto = new PageDTO<>();
		
		int curPage = map.get("curPage");
		int perPage = dto.getPerPage();
		int start = (curPage-1)*perPage;
		
		List<HotelDTO> list = template.selectList("HotelMapper.getHotelList", map, new RowBounds(start, perPage));
		
		
		for(HotelDTO hDTO: list) {
			if(map.get("uno") != 0) {
				map.put("hno", hDTO.getHno());
				int count = template.selectOne("HotelMapper.countHotelGood", map);
				
				if(count == 1) {
					hDTO.setClickGood(true);
				} else {
					hDTO.setClickGood(false);
				}
			} else {
				hDTO.setClickGood(false);
			}
		}
		
		dto.setList(list);
		dto.setCurPage(curPage);
		dto.setTotalCount(getCountHotel(map));
		
		return dto;
	}
	
	public int getCountHotel(HashMap<String, Integer> map) {
		return template.selectOne("HotelMapper.getCountHotel", map);
	}
	
	public HashMap<String,String> clickGood(HashMap<String, Integer> map) {
		HashMap<String,String> result = new HashMap<>();
		
		int count1 = template.selectOne("HotelMapper.countHotelGood", map);
		int count2;
		
		if(count1 == 0) {
			count2 = template.insert("HotelMapper.hotelGoodInsert", map);
			
			if(count2 != 0)
				result.put("result","추가");
		} else {
			count2 = template.delete("HotelMapper.hotelGoodDelete", map);
			
			if(count2 != 0)
				result.put("result","삭제");
		}
		
		if(count2 != 0) {
			int count3 = template.update("HotelMapper.hotelUpdateGood", map);
			
			if(count3 != 0) {
				result.put("good", Integer.toString(template.selectOne("HotelMapper.countGood", map)));
			} else {
				result.put("result","에러");
			}
		} else {
			result.put("result","에러");
		}
		
		return result;
	}
}
