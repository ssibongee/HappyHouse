package com.happyhouse.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.happyhouse.dto.QnA;
import com.happyhouse.service.QnAService;

@CrossOrigin(origins = {"*"}, maxAge = 6000)
@Controller
public class QnAController {

	@Autowired
	QnAService service;
	
	// localhost:8080/happyhouse/qna
	@GetMapping("/qna")
	public String selectAll(Model model) throws SQLException{
		List<QnA> list = service.selectAll();
		model.addAttribute("list", list);
		return "/qna/list";
	}
	
	// QnA 게시글 읽기
	@GetMapping("/qna/{no}")
	public String read(@PathVariable String no, Model model) throws SQLException {
		model.addAttribute("qna", service.selectOne(no));
		return "/qna/read";
	}

	// QnA 게시글 수정페이지
	@GetMapping("/qna/update/{no}")
	public String updatePage(@PathVariable String no, Model model) throws SQLException {
		model.addAttribute("qna",service.selectOne(no));
		return "/qna/updateForm";
	}
	
	// QnA 게시글 수정페이지
	@PostMapping("/qna/update")
	public String updatePage(QnA q, HttpSession session) throws SQLException {
		System.out.println(q.toString());
		String id = (String)session.getAttribute("id");
		if(id.equals("admin")) 
			service.updateReply(q);
		else
			service.update(q);
		return "redirect:/qna";
	}
	
	
	// QnA 등록
	@PostMapping("/qna")
	public String insert(QnA qna, HttpSession session) throws SQLException {
		System.out.println("qna : "+qna.getQnaTitle());
		String id = (String)session.getAttribute("id");
		qna.setQnaUserid(id);
		System.out.println(qna.toString());
		service.insert(qna);
		return "redirect:/qna";
	}
	// 동록 페이지로 이동
	@GetMapping("/qna/insert")
	public String moveInsert() throws SQLException {
		return "/qna/insert";
	}
	
	// QnA 삭제
	@GetMapping("/qna/delete/{no}")
	public String delete(@PathVariable String no) throws SQLException {
		service.delete(no);
		return "redirect:/qna";
	}
	
	
	// QnA 수정
	@PutMapping("/qna")
	public void update(@RequestBody QnA qna) throws SQLException {
		System.out.println(qna.toString());
		service.update(qna);
	}
	
	// QnA Reply 삭제
	@GetMapping("/qna/reply/{no}")
	public String deleteReply(@PathVariable String no) throws SQLException {
		QnA qna = service.selectOne(no);
		service.deleteReply(qna);
		return "redirect:/qna";
	}
	
}
