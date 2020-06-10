package com.happyhouse.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.happyhouse.dto.QnA;
import com.happyhouse.mapper.QnAMapper;

@Repository
public class QnADaoImpl implements QnADao {

	@Autowired
	QnAMapper mapper;
	
	@Override
	public ArrayList<QnA> selectAll() throws SQLException {
		// TODO Auto-generated method stub
		return mapper.selectAll();
	}

	@Override
	public QnA selectOne(String no) throws SQLException {
		// TODO Auto-generated method stub
		return mapper.selectOne(no);
	}

	@Override
	public void insert(QnA q) throws SQLException {
		// TODO Auto-generated method stub
		mapper.insert(q);
	}

	@Override
	public void update(QnA q) throws SQLException {
		// TODO Auto-generated method stub
		mapper.update(q);
	}

	@Override
	public void delete(String no) throws SQLException {
		// TODO Auto-generated method stub
		mapper.delete(no);
	}

	@Override
	public void insertReply(QnA q) throws SQLException {
		// TODO Auto-generated method stub
		mapper.insertReply(q);
	}

	@Override
	public void updateReply(QnA q) throws SQLException {
		// TODO Auto-generated method stub
		mapper.updateReply(q);
	}

	@Override
	public void deleteReply(String no) throws SQLException {
		// TODO Auto-generated method stub
		mapper.deleteReply(no);
	}

}
