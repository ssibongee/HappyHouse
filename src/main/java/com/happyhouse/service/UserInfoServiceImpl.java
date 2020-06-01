package com.happyhouse.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.happyhouse.dao.UserInfoDao;
import com.happyhouse.dto.UserInfo;

@Service
public class UserInfoServiceImpl implements UserInfoService {

	@Autowired
	UserInfoDao dao;
	
	@Override
	public void join(UserInfo u) {
		// TODO Auto-generated method stub
		dao.join(u);
	}

	@Override
	public UserInfo detail(String id) {
		// TODO Auto-generated method stub
		return dao.detail(id);
	}

	@Override
	public void update(UserInfo u) {
		// TODO Auto-generated method stub
		dao.update(u);
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		dao.delete(id);
	}

	@Override
	public boolean login(String id, String password) {
		// TODO Auto-generated method stub
		return dao.login(id, password);
	}

	@Override
	public UserInfo findPw(String name, String id, String phone) {
		return dao.findPw(name, id, phone);
	}

}
