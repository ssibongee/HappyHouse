package com.happyhouse.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import com.happyhouse.dto.QnA;

public interface QnADao {
	// 전체 QnA 목록 불러오기
	public ArrayList<QnA> selectAll() throws SQLException;
	// QnA 상세조회
	public QnA selectOne(String no) throws SQLException;
	
	// QnA 작성하기
	public void insert(QnA q) throws SQLException;
	
	// QnA 수정하기
	public void update(QnA q) throws SQLException;
	
	// QnA 삭제하기
	public void delete(String no) throws SQLException;
	
	// Reply 등록
	public void insertReply(QnA q) throws SQLException;
	// Reply 수정
	public void updateReply(QnA q) throws SQLException;
	// Reply 삭제
	public void deleteReply(String no) throws SQLException;
}
