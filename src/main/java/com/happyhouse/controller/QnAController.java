package com.happyhouse.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.happyhouse.dto.QnA;
import com.happyhouse.service.QnAService;

@CrossOrigin(origins = {"*"}, maxAge = 6000)
@RestController
public class QnAController {

	@Autowired
	QnAService service;
	
	// localhost:8080/happyhouse/qna
	@GetMapping("/qna")
	public List<QnA> selectAll() throws SQLException{
		return service.selectAll();
	}
	
	// QnA 게시글 읽기
	@GetMapping("/qna/{no}")
	public QnA read(@PathVariable String no) throws SQLException {
		return service.selectOne(no);
	}
	
	
	// QnA 등록
	@PostMapping("/qna")
	public void insert(@RequestBody QnA qna) throws SQLException {
		service.insert(qna);
	}
	
	// QnA 삭제
	@DeleteMapping("/qna/{no}")
	public void delete(@PathVariable String no) throws SQLException {
		service.delete(no);
	}
	
	
	// QnA 수정
	@PutMapping("qna/{no}")
	public void update(@RequestBody QnA qna) throws SQLException {
		service.update(qna);
	}
}
