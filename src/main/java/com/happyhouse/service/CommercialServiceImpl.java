package com.happyhouse.service;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.happyhouse.dao.CommercialDao;
import com.happyhouse.dto.Commercial;
import com.happyhouse.dto.HouseInfo;

@Service
public class CommercialServiceImpl implements CommercialService {

	@Autowired
	CommercialDao dao;
	
	@Override
	public ArrayList<Commercial> searchShop(String condition, String word, String lat, String lng, String dong) throws SQLException {
		// TODO Auto-generated method stub
		return dao.searchShop(condition, word, lat, lng, dong);
	}

	@Override
	public HouseInfo selectOne(String no) throws SQLException {
		// TODO Auto-generated method stub
		return dao.selectOne(no);
	}

	@Override
	public ArrayList<Commercial> searchCode(String condition, String word, String lat, String lng, String dong)
			throws SQLException {
		// TODO Auto-generated method stub
		return dao.searchCode(condition, word, lat, lng, dong);
	}

}
