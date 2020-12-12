package com.young.eun.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/login")
public class loginController {

	@Autowired
	loginServiceimpl service;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(HttpServletRequest request) {
		String referrer = request.getHeader("Referer");
	    if(referrer!=null){
	        request.getSession().setAttribute("url_prior_login", referrer);
	    }
	    System.out.println("this is calling login " + referrer);
		return "login";
	}

	@RequestMapping(value = "/loginOk", method = RequestMethod.POST)
	public String loginCheck(HttpSession session, loginVO vo, HttpServletRequest request) {
		System.out.println("inside test!");
		String returnURL = "";
		if (session.getAttribute("login") != null) {
			session.removeAttribute("login");
		}

		loginVO loginvo = service.getLogin(vo);
		System.out.println("로그인 test!");
		if (loginvo != null) {
			System.out.println("로그인 성공!");
			session.setAttribute("login", loginvo);
			session.setAttribute("login_userid", loginvo.getUserid());
			String url = (String) request.getSession().getAttribute("url_prior_login");
			System.out.println("this is url inside login check" + url );
			returnURL = "redirect:"+url;//"redirect:/post/yechome";
		} else {
			System.out.println("로그인 실패!");
			returnURL = "redirect:/login/login";
		}
		return returnURL;
	}

	@RequestMapping(value = "/logout")
	public String logout(HttpSession session,HttpServletRequest request) {
		session.invalidate();
		String referrer = request.getHeader("Referer");
		System.out.println("this is inside logout " + referrer);
		return "redirect:" + referrer;
	}
}
