package com.happyhouse.service;

import java.sql.SQLException;
import java.util.ArrayList;

import com.happyhouse.dto.Commercial;
import com.happyhouse.dto.HouseInfo;

public interface CommercialService {
	public ArrayList<Commercial> searchShop(String condition, String word, String lat, String lng, String dong) throws SQLException;
	public ArrayList<Commercial> searchCode(String condition, String word, String lat, String lng, String dong) throws SQLException;

	public HouseInfo selectOne(String no) throws SQLException;
}
