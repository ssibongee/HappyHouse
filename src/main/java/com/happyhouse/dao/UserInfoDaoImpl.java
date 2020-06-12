package com.happyhouse.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.happyhouse.dto.BookMark;
import com.happyhouse.dto.UserInfo;
import com.happyhouse.mapper.UserMapper;

@Repository
public class UserInfoDaoImpl implements UserInfoDao {

	@Autowired
	UserMapper mapper;
	
	
	@Override
	public void join(UserInfo u) {
		// TODO Auto-generated method stub
		mapper.join(u);
	}

	@Override
	public UserInfo detail(String id) {
		// TODO Auto-generated method stub
		System.out.println("mapper 결과 :"+mapper.detail(id));
		return mapper.detail(id);
	}

	@Override
	public void update(UserInfo u) {
		// TODO Auto-generated method stub
		mapper.update(u);
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		mapper.delete(id);
	}

	@Override
	public boolean login(String id, String password) {
		// TODO Auto-generated method stub
		if(mapper.login(id, password)!= null) {
			return true; 
		} else {
			return false;
		}
 	}

	@Override
	public UserInfo findPw(String name, String id, String phone) {
		return mapper.findPw(name, id, phone);
	}
}
