package com.happyhouse.mapper;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.happyhouse.dto.BookMark;

public interface BookMarkMapper {

	// 북마크 불러오기
	public List<BookMark> getAllBookMark(String id);
	
	//북마크에 등록된 것인지 확인
	public ArrayList<BookMark> isMarked(String id, int no) throws SQLException;
	
	//북마크에 등록하기
	public void addToMark(BookMark bm) throws SQLException;
	
	//북마크 삭제
	public void deleteMark(String id, int no) throws SQLException;
}
