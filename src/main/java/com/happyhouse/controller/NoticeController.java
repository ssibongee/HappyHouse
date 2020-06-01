package com.happyhouse.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RestController;

import com.happyhouse.service.NoticeService;

@CrossOrigin(origins = {"*"}, maxAge = 6000)
@RestController
public class NoticeController {

	@Autowired
	NoticeService service;
	
	
}
