package com.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.dto.HotelPageDTO;
import com.service.HotelService;

@RestController
public class HotelController {

	@Autowired
	HotelService hotelService;
	
	@RequestMapping(value = "/hotel/{couno}/{cename}", method = RequestMethod.GET)
	public ModelAndView hotelByCouno(@PathVariable String cename, @PathVariable int couno) {
		ModelAndView mav = new ModelAndView();
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("couno", couno);
		map.put("curPage", 1);
		
		mav.setViewName("hotel");
		mav.addObject("ename", cename);
		mav.addObject("curPage", 1);
		mav.addObject("hpDTO", hotelService.getDetailHotelList(map));
		
		return mav;
	}
	
	@RequestMapping(value = "/hotelList", method = RequestMethod.POST)
	public HotelPageDTO hotelList(@RequestBody HashMap<String, Integer> rMap) {
		System.out.println(rMap);
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("cityno", rMap.get("cityno"));
		map.put("couno", rMap.get("couno"));
		map.put("curPage", rMap.get("curPage"));
		
		HotelPageDTO hpDTO = hotelService.getDetailHotelList(map);
		
		return hpDTO;
	}
	
	
	@RequestMapping(value = "/hotel/{couno}/{cityename}/{cityno}", method = RequestMethod.GET)
	public ModelAndView hotelByCityno(@PathVariable int couno, @PathVariable String cityename, @PathVariable int cityno) {
		ModelAndView mav = new ModelAndView();
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("cityno", cityno);
		map.put("curPage", 1);
		
		mav.setViewName("hotel");
		mav.addObject("ename", cityename);
		mav.addObject("curPage", 1);
		mav.addObject("hpDTO", hotelService.getDetailHotelList(map));
		
		return mav;
	}
}
