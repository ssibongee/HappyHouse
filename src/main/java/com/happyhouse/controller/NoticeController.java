package com.happyhouse.controller;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.happyhouse.dto.NoticeInfo;
import com.happyhouse.service.NoticeService;

@CrossOrigin(origins = { "*" }, maxAge = 6000)
@Controller
public class NoticeController {

	@Autowired
	NoticeService service;

	@GetMapping("/notice")
	public String searchAll(Model model) throws SQLException {
		model.addAttribute("title", "NOTICE");
		model.addAttribute("desc", "공지사항을 알려드립니다.");
		ArrayList<NoticeInfo> list = service.searchAll();
		model.addAttribute("list", list);
		return "/notice/list";
	}

	// 글 작성 페이지로 이동

	@GetMapping("/notice/insert")
	public String insertForm() {
		return "/notice/regForm";
	}

	// 글 작성

	@PostMapping("/notice/insert")
	public String insert(NoticeInfo n) throws SQLException {
		service.insert(n);
		return "redirect:/notice/";
	}

	// 글 읽기

	@GetMapping("/notice/{num}")
	public String read(@PathVariable String num, Model model) throws SQLException {
		NoticeInfo n = service.detail(num);
		model.addAttribute("notice", n);
		return "/notice/read";
	}

	
	// 글 수정 페이지로 이동
	@GetMapping("/notice/update/{num}")
	public String updateForm(@PathVariable String num, Model model) throws SQLException {
		NoticeInfo n = service.detail(num);
		model.addAttribute("notice", n);
		return "/notice/updateForm";
	}
	
	@PostMapping("/notice/update") 
	public String update(NoticeInfo n) throws SQLException {
		service.update(n);
		return "redirect:/notice/";
	}

	@GetMapping("/notice/delete/{num}")
	public String delete(@PathVariable String num) throws SQLException {
		service.delete(num);
		return "redirect:/notice/";
	}

}
