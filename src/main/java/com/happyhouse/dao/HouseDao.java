package com.happyhouse.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import com.happyhouse.dto.HouseInfo;
import com.happyhouse.dto.SidoCode;

public interface HouseDao {
	// 시,도  코드를 검색해서 가져오는 메소드
	ArrayList<SidoCode> selectSido() throws SQLException;
	
	// 구,군 코드를 검색해서 가져오는 메소드
	ArrayList<SidoCode> selectGuGun(int sido) throws SQLException;
	
	// 동 코드를 검색해서 가져오는 메소드
	ArrayList<HouseInfo> selectDong(int gugun) throws SQLException;
	
	// 시,도 -> 구,군 -> 동 을 검색해서 해당 지역 아파트 목록을 가져오는 메소드
	ArrayList<HouseInfo> selectApt(String dong) throws SQLException;
}
