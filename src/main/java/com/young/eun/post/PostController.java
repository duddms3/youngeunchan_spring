package com.young.eun.post;

import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/post")
public class PostController {
	@Autowired
	PostService postService;

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(java.util.Date.class, new CustomDateEditor(dateFormat, false));
	}

	@RequestMapping(value = "/yechome", method = RequestMethod.GET)
	public String yechome(Model model, HttpSession session) {
		System.out.println("postcontroller yechome");
		Object userid;
		if ((userid=session.getAttribute("login_userid")) != null)
			model.addAttribute("userid", userid );
		model.addAttribute("list", postService.getPostList());
		System.out.println("postcontroller after getpostlist");
		return "yecHome";
	}

	@RequestMapping(value = "/addPost", method = RequestMethod.GET)
	public String addPost() {
		System.out.println("postcontroller addpost");
		return "addPost";
	}

	@RequestMapping(value = "/addOk", method = RequestMethod.POST)
	public String addOk(HttpServletRequest request) {
		System.out.println("postcontroller addok");
		FileUpload fileupload= new FileUpload();
		PostVO vo= fileupload.uploadPhoto(request);
		System.out.println("maybe success?");
		postService.insertPost(vo);
		System.out.println("addok dao finish");
		return "redirect:yechome";
	}

	@RequestMapping(value = "/view/{id}", method = RequestMethod.GET)
	public String viewPost(@PathVariable("id") int id, Model model, HttpSession session) {
		System.out.println("postcontroller viewpost");
		Object userid;
		if ((userid=session.getAttribute("login_userid")) != null)
			model.addAttribute("userid", userid );
		model.addAttribute("u", postService.getPost(id));
		System.out.println("postcontroller viewpost after getpost");
		return "view";
	}
	
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public String deletePost(@PathVariable("id") int id) {
		System.out.println("postcontroller delete post");
		postService.deletePost(id);
		System.out.println("postcontroller viewpost after deletepost");
		return "redirect:../yechome";
	}
}//end of class
