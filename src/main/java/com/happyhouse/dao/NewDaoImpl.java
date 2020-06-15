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

	private static final String CLIENT_ID = "UmOgNZnb2olbF1byvsaE";
	private static final String CLIENT_SECRET = "iG08ivTBKz";
	private static final String URL = "https://openapi.naver.com/v1/search/news.json?query=";
	
	
	@Override
	public List<News> getRecentNews() throws Exception {
		// TODO Auto-generated method stub
		String text = URLEncoder.encode("아파트 매매", "UTF-8");
		URL url = new URL(URL + text);
		URLConnection conn = url.openConnection();
		
		conn.setRequestProperty("X-Naver-Client-ID", CLIENT_ID);
		conn.setRequestProperty("X-Naver-Client-Secret", CLIENT_SECRET);
		
		BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		StringBuilder sb = new StringBuilder();
		String buf = "";
		while((buf = br.readLine()) != null) {
			sb.append(buf);
		}
		
		JSONParser jsonParser = new JSONParser();
		JSONObject jsonObject = (JSONObject) jsonParser.parse(new StringReader(sb.toString()));
		JSONArray jsonArray = (JSONArray) jsonObject.get("items");
		
		List<News> news = new ArrayList<>();
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
