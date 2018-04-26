package com.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dto.UsersDTO;
import com.service.HotelService;

@Controller
public class HotelController {

	@Autowired
	HotelService hotelService;
	
	@RequestMapping(value = "/hotel/{couno}/{cename}", method = RequestMethod.GET)
	public ModelAndView hotelByCouno(@PathVariable String cename, @PathVariable int couno, @RequestParam int curPage, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		HashMap<String, Integer> map = new HashMap<>();
		
		map.put("couno", couno);
		map.put("curPage", curPage);
		
		if(session.getAttribute("login") != null) {
			UsersDTO dto = (UsersDTO) session.getAttribute("login");
			map.put("uno", dto.getUno());
		} else {
			map.put("uno", 0);
		}
		
		mav.setViewName("hotel");
		mav.addObject("ename", cename);
		mav.addObject("hpDTO", hotelService.getDetailHotelList(map));
		
		return mav;
	}	
	
	@RequestMapping(value = "/hotel/{couno}/{cityename}/{cityno}", method = RequestMethod.GET)
	public ModelAndView hotelByCityno(@PathVariable int couno, @PathVariable String cityename, @PathVariable int cityno, @RequestParam int curPage, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		HashMap<String, Integer> map = new HashMap<>();
		
		if(session.getAttribute("login") != null) {
			UsersDTO dto = (UsersDTO) session.getAttribute("login");
			map.put("uno", dto.getUno());
		} else {
			map.put("uno", 0);
		}
		
		UsersDTO dto = (UsersDTO) session.getAttribute("login");
		map.put("uno", dto.getUno());
		
		mav.setViewName("hotel");
		mav.addObject("ename", cityename);
		mav.addObject("hpDTO", hotelService.getDetailHotelList(map));
		
		return mav;
	}
	
	@RequestMapping(value = "/hotel/good", method = RequestMethod.GET)
	@ResponseBody
	public HashMap<String,String> hotelClickGood(@RequestParam int hno, @RequestParam int uno) {
		HashMap<String, Integer> map = new HashMap<>();

		map.put("hno", hno);
		map.put("uno",uno);
		
		HashMap<String,String> result = hotelService.clickGood(map);
		
		return result;
	}
}
