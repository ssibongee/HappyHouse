package com.happyhouse.service;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.happyhouse.dao.NoticeDao;
import com.happyhouse.dto.NoticeInfo;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	NoticeDao dao;
	
	@Override
	public ArrayList<NoticeInfo> searchAll() throws SQLException {
		// TODO Auto-generated method stub
		return dao.searchAll();
	}

	// 공지사항 조회 기능 트랜젝션 처리 
	@Override
	@Transactional
	public NoticeInfo detail(String num) throws SQLException {
		// TODO Auto-generated method stub
		dao.countUp(num);
		return dao.detail(num);
	}

	@Override
	public void insert(NoticeInfo n) throws SQLException {
		// TODO Auto-generated method stub
		dao.insert(n);
	}

	@Override
	public void update(NoticeInfo n) throws SQLException {
		// TODO Auto-generated method stub
		dao.update(n);
	}

	@Override
	public void delete(String num) throws SQLException {
		// TODO Auto-generated method stub
		dao.delete(num);
	}

}
