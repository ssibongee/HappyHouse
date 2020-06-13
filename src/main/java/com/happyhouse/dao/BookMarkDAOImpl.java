package com.happyhouse.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.happyhouse.dto.BookMark;
import com.happyhouse.mapper.BookMarkMapper;
import com.happyhouse.mapper.UserMapper;

@Repository
public class BookMarkDAOImpl implements BookMarkDAO {
	@Autowired
	BookMarkMapper mapper;

	@Override
	public List<BookMark> getAllBookMark(String id) {
		return mapper.getAllBookMark(id);
	}
	
	@Override
	public boolean isMarked(String id, int no) throws SQLException {
		ArrayList<BookMark> list = mapper.isMarked(id, no);
		if(list == null || list.size() == 0) {
			return false;
		} else {
			return true;
		}
	}

	@Override
	public void addToMark(BookMark bm) throws SQLException {
		// TODO Auto-generated method stub
		mapper.addToMark(bm);
	}

	@Override
	public void deleteMark(String id, int no) throws SQLException {
		// TODO Auto-generated method stub
		mapper.deleteMark(id, no);
	}
}
