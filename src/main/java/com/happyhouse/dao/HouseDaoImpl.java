package com.happyhouse.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.happyhouse.dto.HouseInfo;
import com.happyhouse.dto.SidoCode;
import com.happyhouse.mapper.HouseMapper;

@Repository
public class HouseDaoImpl implements HouseDao{

	@Autowired
	HouseMapper mapper;
	
	
	@Override
	public ArrayList<SidoCode> selectSido() throws SQLException {
		// TODO Auto-generated method stub
		return mapper.selectSido();
	}

	@Override
	public ArrayList<SidoCode> selectGuGun(int sido) throws SQLException {
		// TODO Auto-generated method stub
		return mapper.selectGuGun(sido);
	}

	@Override
	public ArrayList<HouseInfo> selectDong(int gugun) throws SQLException {
		// TODO Auto-generated method stub
		return mapper.selectDong(gugun);
	}

	@Override
	public ArrayList<HouseInfo> selectApt(String dong) throws SQLException {
		// TODO Auto-generated method stub
		return mapper.selectApt(dong);
	}

}
