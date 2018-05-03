package com.controller;


import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.dto.QnADTO;
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
		  	public ModelAndView qnawrite(
		  			@RequestParam(required=false , defaultValue="1") int qino1,
		  			@RequestParam(required=false , defaultValue=" ") String theText1,
					@RequestParam(required=false ) CommonsMultipartFile theFile1,
					@RequestParam(required=false , defaultValue="2") int qino2,
					@RequestParam(required=false , defaultValue=" ") String theText2,
					@RequestParam(required=false ) CommonsMultipartFile theFile2,
					@RequestParam(required=false , defaultValue="3") int qino3,
					@RequestParam(required=false , defaultValue=" ") String theText3,
					@RequestParam(required=false ) CommonsMultipartFile theFile3,	
		  			@RequestParam(required=false , defaultValue="1") int qno,
		  			@RequestParam(required=false , defaultValue="1") int uno,
		  			@RequestParam(required=false , defaultValue="1") int hno,
					@RequestParam(required=false , defaultValue="No Title") String title,
					@RequestParam(required=false , defaultValue=" ") String question
					) {
			        
				    System.out.println( "qino1:"+"\t"+ qino1 );
				    System.out.println( "qino2:"+"\t"+ qino2 );
				    System.out.println( "qino3:"+"\t"+ qino3 );
				    
				    System.out.println( "theText1:"+"\t"+ theText1 );
				    System.out.println( "theText2:"+"\t"+ theText2 );
				    System.out.println( "theText3:"+"\t"+ theText3 );
				    
				    
				    QnADTO dto = new QnADTO();
				    dto.setQino1(qino1); 
				    dto.setQino2(qino2);
				    dto.setQino3(qino3);
				    
				    dto.setTheText1(theText1);
				    dto.setTheText2(theText2);
				    dto.setTheText3(theText3);
				    
			        String theFile1Name =  theFile1.getOriginalFilename();
			        String theFile2Name =  theFile2.getOriginalFilename();
			        String theFile3Name =  theFile3.getOriginalFilename();
				
			        System.out.println( "qno:"+"\t"+ qno );
			        System.out.println( "uno:"+"\t"+ uno );
			        System.out.println( "hno:"+"\t"+ hno );
			        System.out.println( "title:"+"\t"+ title );
			        System.out.println( "question:"+"\t"+ question );
			        
			        dto.setQno(qno);
			        dto.setUno(uno);
			        dto.setHno(hno);
			        dto.setTitle(title);
			        dto.setQuestion(question);			        
			        
			        if(theFile1.getSize() != 0) {
			        	dto.setTheFile1(theFile1Name);
			            File save = new File ( "c:\\upload" , theFile1Name );
			            if (!save.isDirectory()) {
			            	save.mkdirs();
			            }
			            try {
							theFile1.transferTo( save );
						} catch (IllegalStateException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
			        }
			        if(theFile2.getSize() != 0) {
			        	dto.setTheFile2(theFile2Name);
			        	File save = new File ( "c:\\upload" , theFile2Name );
			        	if (!save.isDirectory()) {
			            	save.mkdirs();
			            }
			            try {
							theFile2.transferTo( save );
						} catch (IllegalStateException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
			        }
			        if(theFile3.getSize() != 0) {
			        	dto.setTheFile3(theFile3Name);
			        	File save = new File ( "c:\\upload" , theFile3Name );
			        	if (!save.isDirectory()) {
			            	save.mkdirs();
			            }
			            try {
							theFile3.transferTo( save );
						} catch (IllegalStateException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
			        }
			        
			        
			        System.out.println("Filename/size:"+"\t"+theFile1.getOriginalFilename()+"\t"+theFile1.getSize() );
			        System.out.println("Filename/size:"+"\t"+theFile2.getOriginalFilename()+"\t"+ theFile2.getSize());
			        System.out.println("Filename/size:"+"\t"+theFile3.getOriginalFilename()+"\t"+ theFile3.getSize());			        
			          service.qnawrite(dto);				
				
			          long  fileSize1 = theFile1.getSize();
			          
					  String originalName1 = theFile1.getOriginalFilename() ;
			          System.out.println( "theFile1 Storage>>"+"\t"+ theFile1.getStorageDescription() );

			          long  fileSize2 = theFile2.getSize();
					  String originalName2 = theFile2.getOriginalFilename() ;
			          System.out.println( "theFile2 Storage>>"+"\t"+ theFile2.getStorageDescription() );
			          
			          long  fileSize3 = theFile3.getSize();
					  String originalName3 = theFile3.getOriginalFilename() ;
			          System.out.println( "theFile3 Storage>>"+"\t"+ theFile3.getStorageDescription() );
			          
			          String contentType1 = theFile1.getContentType();
			  		  System.out.println("theFile1 contentType>>" +"\t"+ contentType1);
			  		  String contentType2 = theFile2.getContentType();
					  System.out.println("theFile2 contentType>>" +"\t"+ contentType2);
					  String contentType3 = theFile3.getContentType();
			  		  System.out.println("theFile3 contentType>>" +"\t"+ contentType3);   
			        
			  		  
			  		ModelAndView mav = new ModelAndView();
			        mav.setViewName( "redirect:qna" );
					
			        mav.addObject( "qino1" , new Integer( qino1 ));
			        mav.addObject( "theText1" , theText1 );		       		        
			        mav.addObject( "fileSize1" , new Long( fileSize1));
			        mav.addObject( "originalName1" , originalName1);
			        
			        mav.addObject( "qino2" , new Integer( qino2 ));
			        mav.addObject( "theText2" , theText2 );		        
			        mav.addObject( "fileSize2" , new Long( fileSize2));
			        mav.addObject( "originalName2" , originalName2);
			        
			        mav.addObject( "qino3" , new Integer( qino3 ));
			        mav.addObject( "theText3" , theText3 );		        
			        mav.addObject( "fileSize3" , new Long( fileSize3));
			        mav.addObject( "originalName3" , originalName3);      
				
			        
			        mav.addObject( "qno" , new Integer( qno ));
			        mav.addObject( "uno" , new Integer( uno ));
			        mav.addObject( "hno" , new Integer( hno ));
			        mav.addObject( "title" , title );
			        mav.addObject( "question" , question );
			        
			        return mav;			        
			}

		
	//QnA Retrieve 
			@RequestMapping(value = "/qnaretrieve", method = RequestMethod.GET)
			@ModelAttribute("qnaretrieve")
			public QnADTO qnaretrieve(@RequestParam(required=false , defaultValue="1") int qno) {
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
