package com.happyhouse.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.happyhouse.dto.NoticeInfo;
import com.happyhouse.mapper.NoticeMapper;


@Repository
public class NoticeDaoImpl implements NoticeDao {

	@Autowired
	NoticeMapper mapper;
	
	@Override
	public ArrayList<NoticeInfo> searchAll() throws SQLException {
		// TODO Auto-generated method stub
		return mapper.searchAll();
	}

	@Override
	public NoticeInfo detail(String num) throws SQLException {
		// TODO Auto-generated method stub
		return mapper.detail(num);
	}

	@Override
	public void insert(NoticeInfo n) throws SQLException {
		// TODO Auto-generated method stub
		mapper.insert(n);
	}

	@Override
	public void update(NoticeInfo n) throws SQLException {
		// TODO Auto-generated method stub
		mapper.update(n);
	}

	@Override
	public void delete(String num) throws SQLException {
		// TODO Auto-generated method stub
		mapper.delete(num);
	}

	@Override
	public void countUp(String num) throws SQLException {
		// TODO Auto-generated method stub
		mapper.countUp(num);
	}

}
