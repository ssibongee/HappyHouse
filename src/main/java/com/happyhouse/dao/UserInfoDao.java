package com.happyhouse.dao;

import java.util.List;

import com.happyhouse.dto.BookMark;
import com.happyhouse.dto.UserInfo;

public interface UserInfoDao {
	// 사용자 회원가입
	public void join(UserInfo u);
	
	// 사용자 정보 조회
	public UserInfo detail(String id);
	
	// 비밀번호 변경 확인
	public UserInfo findPw(String name, String id, String phone);
	
	// 사용자 정보 수정
	public void update(UserInfo u);
	
	// 사용자 회원탈퇴
	public void delete(String id);
	
	// 로그인
	public boolean login(String id, String password);
	
}
