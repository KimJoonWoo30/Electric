package com.electric.persistence;

import java.util.ArrayList;

import com.electric.domain.HouseVO;

public interface HouseDAO {

	public HouseVO getHouse(String houseNumber) throws Exception;
	
	public ArrayList getUseList(String houseNumber, String dTime) throws Exception;
	
	public ArrayList getCurrentList(String houseNumber, String cTime) throws Exception;
}
