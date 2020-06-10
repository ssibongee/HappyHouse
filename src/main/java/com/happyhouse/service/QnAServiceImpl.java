package com.happyhouse.service;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.happyhouse.dao.QnADao;
import com.happyhouse.dto.QnA;

@Service
public class QnAServiceImpl implements QnAService {

	@Autowired
	QnADao dao;
	
	@Override
	public ArrayList<QnA> selectAll() throws SQLException {
		// TODO Auto-generated method stub
		return dao.selectAll();
	}

	@Override
	public QnA selectOne(String no) throws SQLException {
		// TODO Auto-generated method stub
		return dao.selectOne(no);
	}

	@Override
	public void insert(QnA q) throws SQLException {
		// TODO Auto-generated method stub
		dao.insert(q);
	}

	@Override
	public void update(QnA q) throws SQLException {
		// TODO Auto-generated method stub
		dao.update(q);
	}

	@Override
	public void delete(String no) throws SQLException {
		// TODO Auto-generated method stub
		dao.delete(no);
	}

	@Override
	public void insertReply(QnA q) throws SQLException {
		// TODO Auto-generated method stub
		dao.insertReply(q);
	}

	@Override
	public void updateReply(QnA q) throws SQLException {
		// TODO Auto-generated method stub
		dao.updateReply(q);
	}

	@Override
	public void deleteReply(QnA q) throws SQLException {
		// TODO Auto-generated method stub
		dao.deleteReply(q);
	}

}
