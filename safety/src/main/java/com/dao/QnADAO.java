package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dto.QnADTO;
import com.dto.QnAImgDTO;

@Repository
public class QnADAO {
	
	@Autowired
	SqlSessionTemplate template;
	
	
	//QnAImg List 불러오기
		public List<QnAImgDTO> qnaImg(){
			return template.selectList("QnAMapper.qnaImgList");
		}//qnaImg
		
	//QnA List 불러오기
		public List<QnADTO> qna(){
			return template.selectList("QnAMapper.qnaList");
		}//qna
	
	//QnAImg Write 쓰기
		public void qnaImgwrite(QnAImgDTO dto) {			
			template.insert("QnAMapper.qnaImgInsert", dto);
		}//qnaImgwrite
		
	//QnA Write 쓰기
		public void qnawrite(QnADTO dto) {			
			template.insert("QnAMapper.qnaInsert", dto);
		}//qnawrite
		

	
		
		
		
		
		
		
		
}
