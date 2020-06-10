package com.happyhouse.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
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
	
}
