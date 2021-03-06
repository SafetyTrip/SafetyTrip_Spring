package com.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.UsersDTO;

@Repository
public class UsersDAO {

	@Autowired
	SqlSessionTemplate template;
	
	public void usersAdd(UsersDTO dto) {
		template.insert("UsersMapper.usersAdd",dto);
	}
	public int usersIdCheck(String userid) {
		return template.selectOne("UsersMapper.usersIdCheck", userid);
	}
	public int usersEmailCheck(String email) {
		return template.selectOne("UsersMapper.usersEmailCheck", email);
	}
	public int usersUname(String uname) {
		return template.selectOne("UsersMapper.usersUname", uname);
	}	
	
	public UsersDTO login(HashMap<String, String> map) {
		return template.selectOne("UsersMapper.login", map);
	}
	public UsersDTO myPage(String userid) {
		return template.selectOne("UsersMapper.myPage",userid);
	}
	
	public void mypageupdate(UsersDTO dto) {
		template.selectOne("UsersMapper.mypageupdate",dto);
	}
	
	public UsersDTO snsLogin(String email) {
		return template.selectOne("UsersMapper.snsLogin", email);
	}
}
