package com.happyhouse.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.happyhouse.dto.Commercial;
import com.happyhouse.dto.HouseInfo;
import com.happyhouse.mapper.CommercialMapper;

@Repository
public class CommercialDaoImpl implements CommercialDao {

	@Autowired
	CommercialMapper mapper;
	
	
	@Override
	public ArrayList<Commercial> searchShop(String condition, String word, String lat, String lng, String dong) throws SQLException {
		// TODO Auto-generated method stub
		return mapper.searchShop(condition, word, lat, lng, dong);
	}


	@Override
	public HouseInfo selectOne(String no) throws SQLException {
		// TODO Auto-generated method stub
		return mapper.selectOne(no);
	}


	@Override
	public ArrayList<Commercial> searchCode(String condition, String word, String lat, String lng, String dong)
			throws SQLException {
		// TODO Auto-generated method stub
		return mapper.searchCode(condition, word, lat, lng, dong);
	}

}
