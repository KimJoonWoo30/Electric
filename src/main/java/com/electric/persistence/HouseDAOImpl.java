package com.electric.persistence;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.electric.domain.HouseVO;

@Repository
public class HouseDAOImpl implements HouseDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "com.electric.mapper.HouseMapper";

	@Override
	public HouseVO getHouse(String houseNumber) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".getHouse", houseNumber);

	}

	@Override
	public ArrayList getUseList(String houseNumber, String dTime) throws Exception {
		// TODO Auto-generated method stub

		Map<String, Object> paramMap = new HashMap<String, Object>();

		paramMap.put("houseNumber", houseNumber);
		paramMap.put("dTime", dTime);
		return (ArrayList) session.selectList(namespace + ".getUseList", paramMap);

	}

	@Override
	public ArrayList getCurrentList(String houseNumber, String cTime) throws Exception {
		// TODO Auto-generated method stub

		Map<String, Object> paramMap = new HashMap<String, Object>();

		paramMap.put("houseNumber", houseNumber);
		paramMap.put("cTime", cTime);
		return (ArrayList) session.selectList(namespace + ".getCurrentList", paramMap);
	}

}
