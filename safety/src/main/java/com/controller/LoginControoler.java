package com.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dto.UsersDTO;
import com.service.UsersService;

@Controller
public class LoginControoler {

	@Autowired
	UsersService service;

	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String userslogin(@RequestParam HashMap<String, String> map, Model m, HttpSession session) {
		UsersDTO dto = service.login(map);
		
		String nextPage = null;
		if (dto == null) {
			nextPage = "login";
			m.addAttribute("mesg", "아이디 및 비밀번호 오류 입니다.");
		} else {
			session.setAttribute("login", dto);
			nextPage = "main";
		}

		return nextPage;
	}

	@RequestMapping(value="/snsLogin", method=RequestMethod.POST)
	public String snsLogin(@RequestParam String email, Model m, HttpSession session) {
		UsersDTO dto = service.snsLogin(email);
		
		String nextPage = null;
		if (dto == null) {
			nextPage = "users";
			m.addAttribute("email", email);
		} else {
			session.setAttribute("login", dto);
			nextPage = "main";
		}

		return nextPage;
	}
	
	@RequestMapping(value="/loginAfter/logout", method=RequestMethod.GET)
	public String logout( Model m, HttpSession session) {

		  session.invalidate();
		//  m.addAttribute("mesg", "정상적으로 로그아웃 되었습니다.");
		return "redirect:/";
	}

}
