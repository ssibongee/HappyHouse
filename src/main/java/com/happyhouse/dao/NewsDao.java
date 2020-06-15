package com.happyhouse.dao;

import java.util.List;

import com.happyhouse.dto.News;

public interface NewsDao {
	public List<News> getRecentNews() throws Exception;
}
