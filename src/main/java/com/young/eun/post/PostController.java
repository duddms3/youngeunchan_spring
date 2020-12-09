package com.young.eun.post;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Controller
public class PostController {
	@Autowired
	PostService postService;

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(java.util.Date.class, new CustomDateEditor(dateFormat, false));
	}

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
	public String addOk(PostVO vo, @RequestParam("stringDate") String stringDate) {
		System.out.println("start parsing  " + stringDate);
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
		Date date2 = null;
		try {
			date2 = dateFormat.parse(stringDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		System.out.println(date2);
		vo.setMagam(date2);
		System.out.println("postcontroller addok");
		postService.insertPost(vo);
		System.out.println("addok dao finish");
		return "redirect:yechome";
	}

}
