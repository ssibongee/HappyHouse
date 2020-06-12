package com.happyhouse.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.happyhouse.dao.BookMarkDAO;
import com.happyhouse.dao.UserInfoDao;
import com.happyhouse.dto.BookMark;

@Service
public class BookMarkServiceImpl implements BookMarkService {

	@Autowired
	BookMarkDAO dao;
	
	@Override
	public List<BookMark> getAllBookMark(String id) {
		return dao.getAllBookMark(id);
	}
	
	@Override
	public boolean isMarked(String id, int no) throws SQLException {
		// TODO Auto-generated method stub
		return dao.isMarked(id, no);
	}

	@Override
	public void addToMark(BookMark bm) throws SQLException {
		// TODO Auto-generated method stub
		dao.addToMark(bm);
	}

	@Override
	public void deleteMark(String id, int no) throws SQLException {
		// TODO Auto-generated method stub
		dao.deleteMark(id, no);
	}
}
