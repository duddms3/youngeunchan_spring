package com.young.eun.post;

import java.text.SimpleDateFormat;

import org.joda.time.DateTime;
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
@RequestMapping(value = "/fund")
public class FundController {
	@Autowired
	PostService postService;

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(java.util.Date.class, new CustomDateEditor(dateFormat, false));
	}

	@RequestMapping(value = "/addFund/{id}", method = RequestMethod.GET)
	public String addFund(@PathVariable("id") int id, Model model) {
		
		System.out.println("fundcontroller add fund");
		PostVO vo=postService.getPost(id);
		int newcurrent = vo.getCurrentM() + vo.getPriceM();
		System.out.println(newcurrent + "  " + vo.getCurrentM() + "  " + vo.getPriceM());
		vo.setCurrentM(newcurrent);
		System.out.println(vo.getCurrentM());
		model.addAttribute("u", postService.updatePost(vo));
		System.out.println("fundcontroller after addfund");
		return "redirect:../../post/view/"+ id;
	}
}//end of class
