package com.shop.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shop.service.impl.BlogsServiceImpl;

@Controller
public class BlogsController {
	@Autowired
	BlogsServiceImpl blogsServiceImpl = new BlogsServiceImpl();

	@RequestMapping(value = { "/blogs" })
	public String Blogs(Model model) {
		model.addAttribute("blogs", blogsServiceImpl.getAll());
		return "fontend/blogs";
	}

	@RequestMapping(value = { "/blogs/{id}" })
	public String BlogById(Model model, @PathVariable int id) {
		model.addAttribute("blogbyid", blogsServiceImpl.getById(id));
		model.addAttribute("blogs", blogsServiceImpl.getAll());
		return "fontend/blogs-detail";
	}
}
