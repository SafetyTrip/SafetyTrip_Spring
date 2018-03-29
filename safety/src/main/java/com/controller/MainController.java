package com.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dto.CountryDTO;
import com.service.CountryService;

@Controller
public class MainController {

	@Autowired
	CountryService service;
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	@ModelAttribute("search")
	public List<CountryDTO> search(@RequestParam HashMap<String, String> map) {
		
		String continent =  map.get("continent");
		List<CountryDTO> list = null;
		
		if(continent != null) {
			list = service.getCountryListByContinent(continent);
		} else {
			list = service.getCountryList(map.get("word").toLowerCase());
		}

		return list;
	}
}
