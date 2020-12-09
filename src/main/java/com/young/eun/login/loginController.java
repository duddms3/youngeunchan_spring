package com.young.eun.login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/login")
public class loginController {
	
	@Autowired
	loginServiceimpl service;
	
	@RequestMapping(value = "/login",method = RequestMethod.GET)
	public String login() {
		return "login";
	}
	
	@RequestMapping(value="/loginOk",method=RequestMethod.POST)
	 public String loginCheck(HttpSession session,loginVO vo){
		System.out.println("inside test!");
	 String returnURL = "";
	 if ( session.getAttribute("login") != null ){
	 session.removeAttribute("login");
	 } 
	 
	 loginVO loginvo = service.getLogin(vo);
	 System.out.println("로그인 test!");
	 if(loginvo != null) {
		 System.out.println("로그인 성공!");
		 	session.setAttribute("login",loginvo);
		 	returnURL = "redirect:/post/yechome";
	 }else {
		 System.out.println("로그인 실패!");
		 returnURL = "redirect:/login/login";
	 }
	 return returnURL;
	}
	
	@RequestMapping(value="/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login/login";
	}
}
