package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.QnADAO;
import com.dto.QnADTO;
import com.dto.QnAImgDTO;


@Service
public class QnAService {

	
	@Autowired
	QnADAO dao;
	
	//QnAImg List 불러오기
			public List<QnAImgDTO> qnaImg(){
				return dao.qnaImg();
			}//qnaImg
			
	//QnA List 불러오기
			public List<QnADTO> qna(){
			
				return dao.qna();
			}//qna
	
	//QnAImg Write 쓰기
			public void qnaImgwrite(QnAImgDTO dto) {			
				dao.qnaImgwrite(dto);
			}//qnaImgwrite
			
	//QnA Write 쓰기
			public void qnawrite(QnADTO dto) {			
				dao.qnawrite(dto);
			}//qnawrite
			

	
	
}
