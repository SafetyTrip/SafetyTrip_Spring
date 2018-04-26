package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.QnADAO;
import com.dto.QnADTO;


@Service
public class QnAService {

	
	@Autowired
	QnADAO dao;
			
	//QnA List 불러오기
			public List<QnADTO> qna(){
			    return dao.qna();
			}//qna
			
	//QnA Write 쓰기
			public void qnawrite(QnADTO dto) {			
				dao.qnawrite(dto);
			}//qnawrite
		
	//QnA Retrieve 		
			public QnADTO qnaretrieve(int qno) {	
				return dao.qnaretrieve(qno);		
			}//qnaretrieve
			 
	//QnA Delete
			 public void qnadelete(int qno) {
				 dao.qnadelete(qno);
			 }//qnadelete
			 
	//QnA Update 		 
			 public void qnaupdate(QnADTO dto) {
				 dao.qnaupdate(dto);
			 }//qnaupdate	
			 
			 
			 
	
}
