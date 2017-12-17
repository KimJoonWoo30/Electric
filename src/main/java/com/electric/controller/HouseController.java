package com.electric.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.electric.domain.HouseVO;
import com.electric.service.HouseService;

@Controller
@RequestMapping("/detail")
public class HouseController {

	private static Logger logger = LoggerFactory.getLogger(HouseController.class);

	@Inject
	private HouseService service;

	// 어제 그래프, 사용자 정보
	@RequestMapping(value = "/{house_number}", method = RequestMethod.GET)
	public String detailPage(@PathVariable("house_number") String house_number, Model model) throws Exception {
		logger.info("house get");

		// 해당 가구에 대한 어제의 전체 사용량 가져오기
		Calendar cal = new GregorianCalendar();
		cal.add(Calendar.DATE, -1);
		SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd", Locale.KOREA);
		String dTime = formatter.format(cal.getTime());
		ArrayList useList = service.getUseList(house_number, dTime);
		model.addAttribute("houseUse", useList);

		// 해당 가구의 개인 정보 가져오기
		HouseVO vo = service.getHouse(house_number);
		model.addAttribute("house", vo);

		return "/detail";
	}

	// 실시간 전력량 
	@RequestMapping(value = "/current/{house_number}", method = RequestMethod.GET)
	public ResponseEntity currentPage(@PathVariable("house_number") String house_number) throws Exception {
		logger.info("current get");

		ResponseEntity<ArrayList> entity = null;

		try {
			// 해당 가구의 실시간 전력 가져오기(오늘 날짜 기준)
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
			Calendar c1 = Calendar.getInstance();
			String cTime = sdf.format(c1.getTime());
			cTime = "20171222";
			entity = new ResponseEntity<>(service.getCurrentList(house_number, cTime), HttpStatus.OK);

		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<ArrayList>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
}
