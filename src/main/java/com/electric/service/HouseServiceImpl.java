package com.electric.service;

import java.util.ArrayList;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.electric.domain.HouseVO;
import com.electric.persistence.HouseDAO;


@Service
public class HouseServiceImpl implements HouseService{
	
	@Inject
	private HouseDAO dao;
	
	@Override
	public HouseVO getHouse(String houseNumber) throws Exception{
		return dao.getHouse(houseNumber);
		
	}

	@Override
	public ArrayList getUseList(String houseNumber, String dTime) throws Exception {
		// TODO Auto-generated method stub
		return dao.getUseList(houseNumber, dTime);
	}

	@Override
	public ArrayList getCurrentList(String houseNumber, String cTime) throws Exception {
		// TODO Auto-generated method stub
		return dao.getCurrentList(houseNumber, cTime);
	}
}
