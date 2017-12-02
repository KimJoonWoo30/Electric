package com.electric.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.electric.domain.HouseVO;

@Controller
@RequestMapping("/detail")
public class HouseController {

	private static Logger logger = LoggerFactory.getLogger(HouseController.class);

	@RequestMapping(value = "/{house_number}", method = RequestMethod.GET)
	public String detailPage(@PathVariable("house_number") String house_number, Model model) {
		logger.info("house get");
		System.out.println(house_number);

		// 가상 데이터 생성
		ArrayList useList = new ArrayList();
		for (int i = 0; i < 288; i++) {
			if (i < 20) {
				useList.add(Integer.toString((int) (Math.random() * 20 + 1200)));
			} else if (i < 30) {
				useList.add(Integer.toString((int) (Math.random() * 20 + 1175)));
			} else if (i < 40) {
				useList.add(Integer.toString((int) (Math.random() * 20 + 1140)));
			} else if (i < 60) {
				useList.add(Integer.toString((int) (Math.random() * 20 + 1115)));
			} else if (i < 67) {
				useList.add(Integer.toString((int) (Math.random() * 20 + 1140)));
			} else if (i < 75) {
				useList.add(Integer.toString((int) (Math.random() * 20 + 1170)));
			} else if (i < 90) {
				useList.add(Integer.toString((int) (Math.random() * 20 + 1215)));
			} else if (i < 100) {
				useList.add(Integer.toString((int) (Math.random() * 20 + 1240)));
			} else if (i < 110) {
				useList.add(Integer.toString((int) (Math.random() * 20 + 1275)));
			} else if (i < 130) {
				useList.add(Integer.toString((int) (Math.random() * 20 + 1320)));
			} else if (i < 150) {
				useList.add(Integer.toString((int) (Math.random() * 20 + 1300)));
			} else if (i < 160) {
				useList.add(Integer.toString((int) (Math.random() * 20 + 1280)));
			} else if (i < 170) {
				useList.add(Integer.toString((int) (Math.random() * 20 + 1300)));
			} else if (i < 180) {
				useList.add(Integer.toString((int) (Math.random() * 20 + 1280)));
			} else if (i < 190) {
				useList.add(Integer.toString((int) (Math.random() * 20 + 1260)));
			} else if (i < 200) {
				useList.add(Integer.toString((int) (Math.random() * 20 + 1240)));
			} else if (i < 210) {
				useList.add(Integer.toString((int) (Math.random() * 20 + 1230)));
			} else if (i < 220) {
				useList.add(Integer.toString((int) (Math.random() * 20 + 1220)));
			} else if (i < 230) {
				useList.add(Integer.toString((int) (Math.random() * 20 + 1210)));
			} else if (i < 250) {
				useList.add(Integer.toString((int) (Math.random() * 20 + 1200)));
			} else {
				useList.add(Integer.toString((int) (Math.random() * 20 + 1190)));
			}
			// System.out.print(useList[i]+" ");
		}

		// house_number에 대한 use 가져오기
		model.addAttribute("houseUse", useList);

		// 가상 가구 생성
		HouseVO vo = new HouseVO();
		vo.setHouse_number("GAA0001");
		vo.setDoubt(44);
		vo.setName("김코인");
		vo.setRegion("광산구");
		vo.seteType("농업용");
		// 해당 집에 대한 마스터 정보 가져오기
		model.addAttribute("house", vo);

		return "/detail";
	}

}
