package com.happyhouse.mapper;

import com.happyhouse.dto.UserInfo;

public interface UserMapper {
	// 사용자 회원가입
	public void join(UserInfo u);
	
	// 사용자 정보 조회
	public UserInfo detail(String id);
	
	// 사용자 정보 수정
	public void update(UserInfo u);
	
	// 사용자 회원탈퇴
	public void delete(String id);
	
	// 로그인
	public UserInfo login(String id, String password);
}
