package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dto.UsersDTO;
import com.service.UsersService;

@Controller
public class UsersController {
	
	@Autowired
	UsersService service;
	
	@RequestMapping(value="/usersAdd", method=RequestMethod.POST)
	public String usersAdd(UsersDTO dto) {
		System.out.println(dto);
		service.usersAdd(dto);
		return "main";
	}
	
	@RequestMapping(value="/IdCheck", method=RequestMethod.GET , produces="application/text; charset=UTF-8")
	public @ResponseBody String usersIdCheck( @RequestParam String userid) {
	
		int count = service.usersIdCheck(userid);
		
		String mesg = "사용 가능한 아이디 입니다.";
		if(count == 1 ) mesg = "사용 불가능한 아이디 입니다.";

		return mesg;
	}
	
	@RequestMapping(value="/EmailCheck", method=RequestMethod.GET , produces="application/text; charset=UTF-8")
	public @ResponseBody String usersEmailCheck( @RequestParam String email) {
	
		int count = service.usersEmailCheck(email);
		
		String mesg = "사용 가능한 이메일 입니다.";
		if(count == 1 ) mesg = "사용 불가능한 이메일 입니다.";

		return mesg;
	}
	
	@RequestMapping(value="/Uname", method=RequestMethod.GET , produces="application/text; charset=UTF-8")
	public @ResponseBody String usersUname( @RequestParam String uname) {
	
		int count = service.usersUname(uname);
		
		String mesg = "사용 가능한 닉네임입니다.";
		if(count == 1 ) mesg = "사용 불가능 닉네임입니다. ";

		return mesg;
	}
}
