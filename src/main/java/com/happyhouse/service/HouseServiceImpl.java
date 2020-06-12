package com.happyhouse.service;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.happyhouse.dto.BookMark;
import com.happyhouse.dao.HouseDao;
import com.happyhouse.dto.HouseDeal;
import com.happyhouse.dto.HouseInfo;
import com.happyhouse.dto.SidoCode;

@Service
public class HouseServiceImpl implements HouseService{

	@Autowired
	HouseDao dao;
	
	
	@Override
	public ArrayList<SidoCode> selectSido() throws SQLException {
		// TODO Auto-generated method stub
		return dao.selectSido();
	}

	@Override
	public ArrayList<SidoCode> selectGuGun(int sido) throws SQLException {
		// TODO Auto-generated method stub
		return dao.selectGuGun(sido);
	}

	@Override
	public ArrayList<HouseInfo> selectDong(int gugun) throws SQLException {
		// TODO Auto-generated method stub
		return dao.selectDong(gugun);
	}

	@Override
	public ArrayList<HouseInfo> selectApt(String dong) throws SQLException {
		// TODO Auto-generated method stub
		return dao.selectApt(dong);
	}

	@Override
	public HouseDeal search(int no) throws SQLException {
		// TODO Auto-generated method stub
		return dao.search(no);
	}

}
