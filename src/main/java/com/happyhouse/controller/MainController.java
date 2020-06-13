package com.happyhouse.controller;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import com.happyhouse.dto.Commercial;
import com.happyhouse.dto.HouseDeal;
import com.happyhouse.dto.HouseInfo;
import com.happyhouse.service.BookMarkService;
import com.happyhouse.service.CommercialService;
import com.happyhouse.service.HouseService;

@CrossOrigin(origins = { "*" }, maxAge = 6000)
@Controller
public class MainController<T> {

	@Autowired
	HouseService service;
	
	@Autowired
	BookMarkService bmService;

	@Autowired
	CommercialService cservice;
	
	@GetMapping("/")
	public String main(Model model, HttpSession session) {
		model.addAttribute("title", "HAPPY HOUSE");
		return "/main/list";
	}

	@ResponseBody
	@GetMapping("/list")
	public ArrayList<T> search(String condition, HttpServletRequest request) throws SQLException {
		System.out.println("check");
		ArrayList<T> list = null;
		if (condition.equals("sido")) { // 드롭다운으로 시도를 검색한 경우 구군 결과를 반영해준다.
			list = (ArrayList<T>) service.selectSido();
		} else if (condition.equals("gugun")) { // 구군 검색결과 동을 반환해줌
			list = (ArrayList<T>) service.selectGuGun(Integer.parseInt(request.getParameter("sido")));
		} else if (condition.equals("dong")) { // 동 검색 결과 해당 지역에 속한 아파트 내역을 반환)
			list = (ArrayList<T>) service.selectDong(Integer.parseInt(request.getParameter("gugun")));
		} else if (condition.equals("apt")) {
			list = (ArrayList<T>) service.selectApt(request.getParameter("dong"));
			for(T h : list) {
				System.out.println(h.toString());
			}
		}
		request.setAttribute("title", "거래 내역 조회");
		return list;
	}
	
	@GetMapping("/{no}")
	public String read(@PathVariable String no, Model model, HttpSession session) throws SQLException {
		String id = (String)session.getAttribute("id");
		HouseDeal h = service.search(Integer.parseInt(no));
		model.addAttribute("house", h);
		model.addAttribute("marked", bmService.isMarked(id, h.getNo()));
		System.out.println("marked : "+bmService.isMarked(id, h.getNo()));
		return "/main/read";
	}
	
	
	@GetMapping("/introduce")
	public String introduce(Model model) {
		model.addAttribute("title", "INTRODUCE");
		model.addAttribute("desc", "사이트 소개 입니다.");
		return "/main/introduce";
	}

	/*
	 * @GetMapping("/notice") public String notice(Model model) {
	 * model.addAttribute("title", "NOTICE"); model.addAttribute("desc",
	 * "공지사항을 알려드립니다."); return "/main/notice"; }
	 */

	@GetMapping("/sitemap")
	public String sitemap(Model model) {
		model.addAttribute("title", "SITE MAP");
		return "/main/sitemap";
	}
	
	@ExceptionHandler
	public String handler(Exception ex, Model model) {
		model.addAttribute("title", "ERROR!!");
		model.addAttribute("ex", ex.getMessage());
		return "errorPage";//view page
	}	

	
	// 주변 환경정보 검색
	@GetMapping("/{no}/{condition}/{word}")
	public ArrayList<Commercial> search(@PathVariable String no, @PathVariable String condition, @PathVariable String word) throws NumberFormatException, SQLException {
		HouseInfo h = cservice.selectOne(no);
		String lat = h.getLat().substring(0, 4);
		String lng = h.getLng().substring(0, 5);
		System.out.println(lat);
		System.out.println(lng);
		String dong = h.getDong();
		System.out.println(dong);
		System.out.println(condition);
		System.out.println(word);
		ArrayList<Commercial> list;
		if(condition.equals("shopname"))
			list = cservice.searchShop(condition, word, lat, lng, dong);
		else
			list = cservice.searchCode(condition, word, lat, lng, dong);
		
		for(Commercial c : list) {
			System.out.println(c.toString());
		}
		
		return list;
	}
}
