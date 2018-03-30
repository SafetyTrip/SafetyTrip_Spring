package com.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dto.CountryDTO;
import com.service.CountryService;
import com.service.HotelService;
import com.service.SafetyService;

@Controller
public class CountryController {

	@Autowired
	CountryService countryService;
	
	@Autowired
	HotelService hotelService;
	
	@Autowired
	SafetyService safetyService;
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	@ModelAttribute("search")
	public List<CountryDTO> search(@RequestParam HashMap<String, String> map) {
		
		String continent =  map.get("continent");
		List<CountryDTO> list = null;
		
		if(continent != null) {
			list = countryService.getCountryListByContinent(continent);
		} else {
			list = countryService.getCountryList(map.get("word").toLowerCase());
		}

		return list;
	}
	
	@RequestMapping(value = "/country/{couno}/{cname}", method = RequestMethod.GET)
	public ModelAndView country(@PathVariable String couno, @PathVariable String cname) {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("country");
		mav.addObject("couno", couno);
		mav.addObject("cname", cname);
		mav.addObject("hList", hotelService.getHotelList(couno));
		mav.addObject("sList", safetyService.getSafetyListByCouno(couno));
		
		return mav;
	}
}
