package com.happyhouse.service;

import java.sql.SQLException;
import java.util.ArrayList;

import com.happyhouse.dto.QnA;

public interface QnAService {
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
}
