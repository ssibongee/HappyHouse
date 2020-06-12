package com.happyhouse.service;

import java.sql.SQLException;
import java.util.ArrayList;

import com.happyhouse.dto.Commercial;
import com.happyhouse.dto.HouseInfo;

public interface CommercialService {
	public ArrayList<Commercial> search(String condition, String word) throws SQLException;

}
