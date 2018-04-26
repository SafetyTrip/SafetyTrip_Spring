package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dto.QnADTO;


@Repository
public class QnADAO {
	
	@Autowired
	SqlSessionTemplate template;
	
		
	//QnA List 불러오기
		public List<QnADTO> qna(){
			return template.selectList("QnAMapper.qnaList");
		}//qna
		
	//QnA Write 쓰기
		public void qnawrite(QnADTO dto) {			
			template.insert("QnAMapper.qnaInsert", dto);
		}//qnawrite	
				
	//QnA Retrieve 			
		public QnADTO qnaretrieve(int qno) {	
			return template.selectOne("QnAMapper.qnaRetrieve",qno);		
		}//qnaretrieve
				  
	//QnA Delete
		 public void qnadelete(int qno) {
			template.selectOne("QnAMapper.qnaDelete",qno);
		}//qnadelete  
				  
	//QnA Update 
		 public void qnaupdate(QnADTO dto) {
			template.update("QnAMapper.qnaUpdate",dto);
		}//qnaupdate	
						

	
		
		
		
		
		
		
		
}
