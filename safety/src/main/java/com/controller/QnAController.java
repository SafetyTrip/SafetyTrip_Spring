package com.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import com.dto.CountryDTO;
import com.dto.QnADTO;
import com.dto.QnAImgDTO;
import com.service.CountryService;
import com.service.QnAService;

@Controller
public class QnAController {

	
	@Autowired
	QnAService service;
	
	
	//QnA List 불러오기 void
	@RequestMapping(value = "/qna", method = RequestMethod.GET)
	public void qna( Model m ) { 
		System.out.println("qna"); 
		ArrayList<QnADTO> list = (ArrayList<QnADTO>)service.qna();
		System.out.println(">>"+list.size());
		m.addAttribute("qna", list);
	}//qna
	

	//QnA Write 쓰기
	@RequestMapping(value = "/qnawrite", method = RequestMethod.POST)
	public String qnawrite(QnADTO dto) {
		System.out.println("qnawrite"); 
		service.qnawrite(dto);
		return "redirect:qna";
	}//qnawrite
	
	//QnA Retrieve 
			@RequestMapping(value = "/qnaretrieve", method = RequestMethod.GET)
			@ModelAttribute("qnaretrieve")
			public QnADTO qnaretrieve(@RequestParam(required=false , defaultValue="14") int qno) {
				System.out.println("qnaretrieve>>>>>>>"); 
				QnADTO dto = service.qnaretrieve(qno);
				return dto;
			}//qnaretrieve
			
	//QnA Delete
			@RequestMapping(value="/qnadelete" , method=RequestMethod.GET)
			public String qnadelete(@RequestParam int qno) {
					service.qnadelete(qno);
					return  "redirect:qna";
			}//qnadelete	
			
	
	//QnA Update 
			@RequestMapping(value="/qnaupdate" , method=RequestMethod.POST)
			public String qnaupdate(QnADTO dto) {
				service.qnaupdate(dto);
				return  "redirect:qna";
			}//qnaupdate
	
	
	

	

	
	
}//QnAController
