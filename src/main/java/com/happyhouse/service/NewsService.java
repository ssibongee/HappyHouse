package com.happyhouse.service;

import java.util.List;

import com.happyhouse.dto.News;

public interface NewsService {
	public List<News> getRecentNews() throws Exception;
}
