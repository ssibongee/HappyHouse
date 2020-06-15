package com.happyhouse.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.happyhouse.dao.NewsDao;
import com.happyhouse.dto.News;

@Service
public class NewsServiceImpl implements NewsService {

	@Autowired
	NewsDao dao;
	
	@Override
	public List<News> getRecentNews() throws Exception {
		// TODO Auto-generated method stub
		return dao.getRecentNews();
	}

}
