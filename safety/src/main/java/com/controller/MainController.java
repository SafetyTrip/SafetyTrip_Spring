package com.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dto.CityDTO;
import com.dto.CountryDTO;
import com.service.CityService;
import com.service.CountryService;
import com.service.HotelService;
import com.service.ReviewService;
import com.service.SafetyService;

@Controller
public class MainController {

	@Autowired
	CountryService countryService;
	
	@Autowired
	CityService cityService;
	
	@Autowired
	HotelService hotelService;
	
	@Autowired
	SafetyService safetyService;
	
	@Autowired
	ReviewService reviewService;
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public ModelAndView search(@RequestParam HashMap<String, String> map) {
		
		ModelAndView mav = new ModelAndView();
		String continent =  map.get("continent");
		String word = map.get("word");
		
		List<CountryDTO> countryList = null;
		List<CityDTO> cityList = null;
		
		if(continent != null) {
			countryList = countryService.getCountryListByContinent(continent);
			cityList = cityService.getCityListByContinent(continent);
		} else {
			countryList = countryService.getCountryList(word);
			cityList = cityService.getCityList(word);
		}

		mav.setViewName("search");
		mav.addObject("word", word);
		mav.addObject("countryList", countryList);
		mav.addObject("cityList", cityList);
		
		return mav;
	}
	
	@RequestMapping(value = "/country/{couno}/{cename}", method = RequestMethod.GET)
	public ModelAndView country(@PathVariable int couno, @PathVariable String cename) {
		ModelAndView mav = new ModelAndView();
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("couno", couno);
		map.put("num", 5);
		
		mav.setViewName("country");
		mav.addObject("cename", cename);
		mav.addObject("hList", hotelService.getHotelList(map));
		mav.addObject("sList", safetyService.getSafetyListByCouno(couno));
		mav.addObject("tList",reviewService.getReviewTotalList(cename));
		
		return mav;
	}
	
	@RequestMapping(value = "/city/{couno}/{cityename}/{cityno}", method = RequestMethod.GET)
	public ModelAndView city(@PathVariable int couno, @PathVariable String cityename, @PathVariable int cityno) {
		ModelAndView mav = new ModelAndView();
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("cityno", cityno);
		
		mav.setViewName("city");
		mav.addObject("cityename", cityename);
		mav.addObject("hList", hotelService.getHotelList(map));
		mav.addObject("sList", safetyService.getSafetyListByCouno(couno));
		mav.addObject("rList",reviewService.getReviewList(map));
		return mav;
	}
}
