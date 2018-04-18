package com.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UsersDAO;
import com.dto.UsersDTO;

@Service
public class UsersService {

	@Autowired
	UsersDAO dao;	
	
	public void usersAdd(UsersDTO dto) {
		dao.usersAdd(dto);
	}
	public int usersIdCheck(String userid) {
		return dao.usersIdCheck(userid);
	}
	public int usersEmailCheck(String email) {
		return dao.usersEmailCheck(email);
	}
	public int usersUname(String uname) {
		return dao.usersUname(uname);
	}
	public UsersDTO login(HashMap<String, String> map) {
		return dao.login(map);
	}
	public UsersDTO snsLogin(String email) {
		return dao.snsLogin(email);
	}
}
