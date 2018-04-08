package com.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dto.SafetyPageDTO;
import com.service.CountryService;
import com.service.SafetyService;

@Controller
public class SafetyController {

	@Autowired
	SafetyService safetyService;
	
	@Autowired
	CountryService countryService;
	
	@RequestMapping(value = "/safety/{couno}", method = RequestMethod.GET)
	public ModelAndView safety(@PathVariable int couno, @RequestParam HashMap<String, String> params) {
		ModelAndView mav = new ModelAndView();
		
		HashMap<String, Integer> map = new HashMap<>();
		map.put("couno", couno);
		
		int curPage = (params.get("curPage") == null? 1:Integer.parseInt(params.get("curPage")));
		map.put("curPage", curPage);
		
		int sno = (params.get("sno") == null? 0:Integer.parseInt(params.get("sno")));
		map.put("sno", sno);
		
		mav.setViewName("safety");
		mav.addObject("cename", countryService.getCountryOneByCouno(couno));
		SafetyPageDTO dto = safetyService.getDetailSafetyList(map);
		mav.addObject("spDTO", dto);
		mav.addObject("sno", dto.getDto().getSno());
		
		return mav;
	}
	
}
