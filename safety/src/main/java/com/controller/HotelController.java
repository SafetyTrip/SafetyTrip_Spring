package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.service.HotelService;

public class HotelController {

	@Autowired
	HotelService hotelService;
	
	@RequestMapping(value = "/hotel/{couno}/{cityename}", method = RequestMethod.GET)
	public ModelAndView hotelByCouno(@PathVariable String cityename, @PathVariable String couno) {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("hotel");
		mav.addObject("cityename", cityename);
		mav.addObject("hList", hotelService.getHotelList(couno));
		
		return mav;
	}
	
	@RequestMapping(value = "/hotel/{couno}/{cityename}/{cityno}", method = RequestMethod.GET)
	public ModelAndView hotelByCityno(@PathVariable String couno, @PathVariable String cityno, @PathVariable String cityename) {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("hotel");
		mav.addObject("cityename", cityename);
		mav.addObject("hList", hotelService.getHotelListByCityno(cityno));
		
		return mav;
	}
	
	@RequestMapping(value = "/hotel/{couno}/{cityename}/{cityno}/{hno}", method = RequestMethod.GET)
	public ModelAndView hotelByhno(@PathVariable String couno, @PathVariable String cityno, @PathVariable String cityename) {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("hotel");
		mav.addObject("cityename", cityename);
		
		
		return mav;
	}
}
