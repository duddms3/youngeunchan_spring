package com.young.eun.post;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PostController {
	@Autowired
	PostService postService;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/yechome", method = RequestMethod.GET)
	public String yechome(Model model) {
		model.addAttribute("list", postService.getPostList());
		return "yecHome";
	}
	@RequestMapping(value = "/addPost", method = RequestMethod.GET)
	public String addPost() {
		return "addPost";
	}
	@RequestMapping(value = "/addOk", method = RequestMethod.GET)
	public String addOk(PostVO vo) {
		System.out.println("postcontroller addok");
		postService.insertPost(vo);
		System.out.println("addok dao finish");
		return "redirect:yechome";
	}
}
