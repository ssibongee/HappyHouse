package com.happyhouse.dao;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Repository;

import com.happyhouse.dto.News;

@Repository
public class NewDaoImpl implements NewsDao {

	// Naver News API를 사용하기 위한 토큰과 접속 URL
	private static final String CLIENT_ID = "UmOgNZnb2olbF1byvsaE";
	private static final String CLIENT_SECRET = "iG08ivTBKz";
	private static final String URL = "https://openapi.naver.com/v1/search/news.json?query=";
	
	
	@Override
	public List<News> getRecentNews() throws Exception {
		// TODO Auto-generated method stub
		// 아파트 매매 검색 키워드를 URL에 사용하기 위해 UTF-8 인코딩
		String text = URLEncoder.encode("아파트 매매", "UTF-8");
		// 파싱할 전체 URL 만들기
		URL url = new URL(URL + text);
		
		// API 파싱을 위한 연결 설정 
		URLConnection conn = url.openConnection();
		
		// API 파싱을 위한 토큰 추가 
		conn.setRequestProperty("X-Naver-Client-ID", CLIENT_ID);
		conn.setRequestProperty("X-Naver-Client-Secret", CLIENT_SECRET);
		
		BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		StringBuilder sb = new StringBuilder();
		String buf = "";
		// 한 줄씩 내용을 파싱해서 가져옴
		while((buf = br.readLine()) != null) {
			sb.append(buf);
		}
		
		// 파싱한데이터 형태(String) 를 JSON으로 만들기 위한 과정
		JSONParser jsonParser = new JSONParser();
		JSONObject jsonObject = (JSONObject) jsonParser.parse(new StringReader(sb.toString()));
		// 내부에 items에 들어있는 정보들이 진짜 원하는 데이터 이므로 이 부분만 빼옴 
		JSONArray jsonArray = (JSONArray) jsonObject.get("items");
		
		List<News> news = new ArrayList<>();
		// JSONArray를 파싱해서 객체에 저장하기 위한 과정
		for(int i = 0; i<jsonArray.size(); i++) {
			JSONObject json = (JSONObject)jsonArray.get(i);
			News tnews = new News();
			
			tnews.setTitle(tagReg((String)json.get("title")));
			tnews.setLink(tagReg((String)json.get("link")));
			tnews.setPubDate(tagReg((String)json.get("pubDate")));
			tnews.setDescription(tagReg((String)json.get("description")));
			System.out.println(tnews.toString());
			news.add(tnews);
		}
		
//		jsonObject = (JSONObject) json.get(0);
//		System.out.println(tagReg((String)json.get("title")));
		
		return news;
	}

	
	public String tagReg(String str) {
		String tag = "<(/)?([a-zA-Z]*)(\\\\s[a-zA-Z]*=[^>]*)?(\\\\s)*(/)?>";
		return str.replaceAll(tag, "");
	}
	

}
