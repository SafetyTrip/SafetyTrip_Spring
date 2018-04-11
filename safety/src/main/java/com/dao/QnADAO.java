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
		
	//QnAImg Retrieve 			
		public QnAImgDTO qnaImgretrieve(int qno) {	
			return template.selectOne("QnAMapper.qnaImgRetrieve",qno);		
		}//qnaImgretrieve	
				
	//QnA Retrieve 			
		public QnADTO qnaretrieve(int qno) {	
			return template.selectOne("QnAMapper.qnaRetrieve",qno);		
		}//qnaretrieve
			
	//QnAImg Delete
		 public void qnaImgdelete(int qno) {
			template.selectOne("QnAMapper.qnaImgDelete",qno);
		}//qnaImgdelete
				  
	//QnA Delete
		 public void qnadelete(int qno) {
			template.selectOne("QnAMapper.qnaDelete",qno);
		}//qnadelete
				  
	//QnAImg Update 
		 public void qnaImgupdate(QnAImgDTO dto) {
			template.update("QnAMapper.qnaImgUpdate",dto);
		}//qnaImgupdate	  
				  
	//QnA Update 
		 public void qnaupdate(QnADTO dto) {
			template.update("QnAMapper.qnaUpdate",dto);
		}//qnaupdate	
						

	
		
		
		
		
		
		
		
}
