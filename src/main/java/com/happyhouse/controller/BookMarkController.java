package com.happyhouse.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.happyhouse.dto.BookMark;
import com.happyhouse.dto.HouseDeal;
import com.happyhouse.service.BookMarkService;
import com.happyhouse.service.HouseService;

@CrossOrigin(origins = { "*" }, maxAge = 6000)
@Controller
public class BookMarkController {

	@Autowired
	BookMarkService service;

	@Autowired
	HouseService hService;

	@GetMapping("/bookmark")
	public String bookmark(Model model, HttpSession session) {
		String id = (String) session.getAttribute("id");
		model.addAttribute("title", "BOOK MARK");
		model.addAttribute("desc", "북마크 해놓은 정보를 바로 조회해볼 수 있습니다.");
		List<BookMark> list = service.getAllBookMark(id);
		if (list.size() != 0) {
			model.addAttribute("list", list);
		}
		return "user/bookmark";
	}

	@PostMapping("/bookmark")
	public String bookmark(Model model, BookMark bm, HttpServletRequest request) throws SQLException {
		System.out.println("id " + bm.getId());
		System.out.println("no " + bm.getNo());
		System.out.println("dong " + bm.getDong());
		System.out.println("aptName " + bm.getAptName());
		service.addToMark(bm);
		return "redirect:/"+bm.getNo();
		// 추가 하고 그 페이지로 다시
//		String referer = request.getHeader("Referer");
//		System.out.println("redirect:" + referer);
//		return "redirect:" + referer;
	}

	@GetMapping("/bookmark/delete/{id}/{no}")
	public String deleteBookMark(HttpServletRequest request, @PathVariable int no, @PathVariable String id)
			throws SQLException {
		service.deleteMark(id, no);
		System.out.println("delete bookmark");
		System.out.println("id : " + id);
		System.out.println("no : " + no);
		String referer = request.getHeader("Referer");
		System.out.println("redirect:" + referer);
		return "redirect:" + referer;
	}
}
