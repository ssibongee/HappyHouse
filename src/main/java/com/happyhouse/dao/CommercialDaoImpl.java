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
	public ArrayList<Commercial> search(String condition, String word) throws SQLException {
		// TODO Auto-generated method stub
		return mapper.search(condition, word);
	}

}
