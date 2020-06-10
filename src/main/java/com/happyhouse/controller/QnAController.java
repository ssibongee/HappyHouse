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

	// QnA 게시글 수정페이지
	@GetMapping("/qna/update/{no}")
	public QnA updatePage(@PathVariable String no) throws SQLException {
		return service.selectOne(no);
	}
	
	
	// QnA 등록
	@PostMapping("/qna")
	public void insert(@RequestBody QnA qna) throws SQLException {
		System.out.println("qna : "+qna.getQnaTitle());
		service.insert(qna);
	}
	
	// QnA 삭제
	@DeleteMapping("/qna/{no}")
	public void delete(@PathVariable String no) throws SQLException {
		service.delete(no);
	}
	
	
	// QnA 수정
	@PutMapping("/qna")
	public void update(@RequestBody QnA qna) throws SQLException {
		System.out.println(qna.toString());
		service.update(qna);
	}
	
	// QnA Reply 등록
	@PutMapping("/qna/reply")
	public void insertReply(@RequestBody QnA qna) throws SQLException {
		System.out.println("content : "+qna.getReplyContent());
		service.insertReply(qna);
	}
	// QnA Reply 수정
	@PutMapping("/qna/reply/update")
	public void updateReply(@RequestBody QnA qna) throws SQLException {
		service.updateReply(qna);
	}
	// QnA Reply 삭제
	@PutMapping("/qna/reply/delete")
	public void deleteReply(@RequestBody QnA qna) throws SQLException {
		service.deleteReply(qna);
	}
	
}
