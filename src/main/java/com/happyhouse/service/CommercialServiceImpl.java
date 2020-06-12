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
	public ArrayList<Commercial> search(String condition, String word) throws SQLException {
		// TODO Auto-generated method stub
		return dao.search(condition, word);
	}

}
