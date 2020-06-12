package com.happyhouse.mapper;

import java.sql.SQLException;
import java.util.ArrayList;

import com.happyhouse.dto.Commercial;
import com.happyhouse.dto.HouseInfo;

public interface CommercialMapper {
	public ArrayList<Commercial> search(String condition, String word) throws SQLException;

}
