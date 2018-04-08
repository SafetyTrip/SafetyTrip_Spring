package com.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.service.HotelService;

@Controller
public class HotelController {

	@Autowired
	HotelService hotelService;
	
	@RequestMapping(value = "/hotel/{couno}/{cename}", method = RequestMethod.GET)
	public ModelAndView hotelByCouno(@PathVariable String cename, @PathVariable int couno, @RequestParam int curPage) {
		ModelAndView mav = new ModelAndView();
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("couno", couno);
		map.put("curPage", curPage);
		
		mav.setViewName("hotel");
		mav.addObject("ename", cename);
		mav.addObject("hpDTO", hotelService.getDetailHotelList(map));
		
		return mav;
	}	
	
	@RequestMapping(value = "/hotel/{couno}/{cityename}/{cityno}", method = RequestMethod.GET)
	public ModelAndView hotelByCityno(@PathVariable int couno, @PathVariable String cityename, @PathVariable int cityno, @RequestParam int curPage) {
		ModelAndView mav = new ModelAndView();
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("cityno", cityno);
		map.put("curPage", curPage);
		
		mav.setViewName("hotel");
		mav.addObject("ename", cityename);
		mav.addObject("hpDTO", hotelService.getDetailHotelList(map));
		
		return mav;
	}
}
