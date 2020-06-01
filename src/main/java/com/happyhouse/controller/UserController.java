package com.happyhouse.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.happyhouse.dto.UserInfo;
import com.happyhouse.service.UserInfoService;

@CrossOrigin(origins = {"*"}, maxAge = 6000)
@Controller
public class UserController {
	
	@Autowired
	UserInfoService service;	
	
	// 로그인
	@PostMapping("/login")
	public String login(String id, String password, HttpServletRequest request, HttpSession session, RedirectAttributes redirectAttributes) {
		// 아이디 체크 처리 해야함
		
		System.out.println("id : "+id);
		System.out.println("password : "+password);
		
		if(service.login(id, password) == true) {			
			redirectAttributes.addFlashAttribute("id", id);
			session.setAttribute("id", id);
			session.removeAttribute("msg");
		} else {
			session.setAttribute("msg", "아이디와 비밀번호를 확인해주세요");
		}
		String referer = request.getHeader("Referer");
		// 로그인 하고 메인 페이지
		System.out.println("redirect:"+referer);
		return "redirect:"+referer;
	}
	
	@GetMapping("/join")
	public String join(Model model) {
		model.addAttribute("title", "JOIN");
		model.addAttribute("desc", "회원가입 페이지 입니다.");
		return "/user/join";
	}

	@PostMapping("/join")
	public String join2(UserInfo ui, Model model, HttpServletRequest request, RedirectAttributes redirectAttributes) {
		if(service.detail(ui.getId()) == null) {
			service.join(ui);
			model.addAttribute("title","JOIN");
			model.addAttribute("desc", "회원가입 페이지 입니다.");
			return "/user/joinSuccess";			
		} else {
			redirectAttributes.addFlashAttribute("check", ui);
			String referer = request.getHeader("Referer");
			return "redirect:"+referer;
		}
	}
	
	
	// 로그아웃
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		// 로그아웃 하고 메인 페이지
		return "redirect:/";
	}
	
	// 회원 정보 조회
	@GetMapping("/user")
	public String search(HttpSession session, Model model) {
		String id = (String)session.getAttribute("id");
		System.out.println("id : "+id);
		UserInfo u = service.detail(id);
		model.addAttribute("title", "USER INFO.");
		model.addAttribute("desc", "회원정보 페이지 입니다.");
		model.addAttribute("userInfo", u);
		return "/user/searchUser";
	}
	
	
	  // 회원 정보 수정 페이지로 이동
	  @GetMapping("/update") 
	  public String gotoUpdate(HttpSession session, Model model) { 
		  model.addAttribute("title", "UPDATE");
		  model.addAttribute("desc", "회원정보 수정 페이지 입니다.");
		  UserInfo u = service.detail((String)session.getAttribute("id"));
		  System.out.println("ui : "+u);
		  model.addAttribute("userInfo", u);
		  return "/user/update";
	  }
	  
	  // 회원 정보 수정 
	  @PostMapping("/user") 
	  public String update(UserInfo u, Model model) {
		  service.update(u);
		  // 회원 조회 페이지로 이동
		  return "redirect:/user";
	  }
	  
	  //비밀번호 수정 페이지로 이동
	  @GetMapping("/findPw")
	  public String findPw(String pw, Model model) {
		  model.addAttribute("title", "CHANGE PW");
		  model.addAttribute("desc", "비밀번호 수정 페이지입니다.");
		  return "/user/passwordSearch";
	  }

	  //비밀번호 수정
	  @PostMapping("/changePw") 
	  public String changePw(UserInfo u, HttpSession session) {
		  service.update(u);
		  return "redirect:/";
	  }

	  //비밀번호 수정 위한 본인인증 
	  @PostMapping("/findPw")
	  public String findPw2(String name, String id, String phone, HttpServletRequest request, RedirectAttributes redirectAttributes) {
		  if(service.findPw(name, id, phone) != null) {
			  request.setAttribute("title", "CHANGE PW");
			  request.setAttribute("desc", "비밀번호 수정 페이지입니다. ");
			  request.setAttribute("auth_msg", "본인 인증에 성공하였습니다.");			  
			  return "/user/modifyPassword";

		  } else {
			  redirectAttributes.addFlashAttribute("auth_msg", "본인 인증에 실패하였습니다.");
			  String referer = request.getHeader("Referer");
			  return "redirect:"+referer;
		  }
	  }
	  
	  // 회원 탈퇴
	  @GetMapping("/delete")
	  public String delete(HttpSession session, Model model) {
		  String id = (String)session.getAttribute("id");
		  service.delete(id);
		  session.invalidate();
		  return "/user/deleteSuccess";
	  }
	  
	@ExceptionHandler
	public String handler(Exception ex, Model model) {
		model.addAttribute("title", "ERROR!!");
		model.addAttribute("ex", ex.getMessage());
		return "errorPage";//view page
	}	
}
