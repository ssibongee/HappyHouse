package com.happyhouse.mapper;

import java.sql.SQLException;
import java.util.ArrayList;

import com.happyhouse.dto.NoticeInfo;

public interface NoticeMapper {
	// 전체 공지사항을 불러오는 메소드
	public ArrayList<NoticeInfo> searchAll() throws SQLException;
	
	// 공지사항 읽기
	public NoticeInfo detail(String num) throws SQLException;
	
	// 공지사항 작성 
	public void insert(NoticeInfo n) throws SQLException;
	
	// 공지사항 수정
	public void update(NoticeInfo n) throws SQLException;
	
	// 공지사항 삭제
	public void delete(String num) throws SQLException;
	
	// 조회수 증가
	public void countUp(String num) throws SQLException;
}
