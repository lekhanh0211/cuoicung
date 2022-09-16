package com.shop.controller.admin;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.entities.Blogs;
import com.shop.service.impl.BlogsServiceImpl;

@Controller(value = "AdminBlogs")
@RequestMapping(value = "/admin")
public class BlogsController {
	@Autowired
	private BlogsServiceImpl blogsServiceImpl;

	@InitBinder
	public void initBinder(WebDataBinder data) {
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		data.registerCustomEditor(Date.class, new CustomDateEditor(sf, true));
	}

	@RequestMapping(value = { "", "/blogs" })
	public String Blogs(Model model) {
		List<Blogs> listBl = blogsServiceImpl.getAll();
		model.addAttribute("blogs", listBl);
		return "backend/blogs";
	}

	@RequestMapping("/initInsertBlogs")
	public String initInsertBlogs(Model model) {
		Blogs bl = new Blogs();
		model.addAttribute("bl", bl);
		return "backend/insertBlogs";
	}

	@RequestMapping(value = { "/", "/insertBlogs" })
	public String InsertBlogs(Model model, @ModelAttribute("bl") Blogs bl) {

		boolean bool = blogsServiceImpl.insert(bl);
		if (bool) {

			model.addAttribute("bl", bl);
			return "redirect:/admin/blogs";
		} else {
			model.addAttribute("error", "Insert failed!");
			model.addAttribute("bl", bl);
			return "backend/insertBlogs";
		}
	}

	@RequestMapping("/initUpdateBlogs")
	public String initUpdateBlogs(@RequestParam("id") int id, Model model) {
		Blogs bl = blogsServiceImpl.getById(id);
		model.addAttribute("bl", bl);
		return "backend/updateBlogs";
	}

	@RequestMapping(value = { "/", "/updateBlogs" })
	public String updateBlogs(Model model, @ModelAttribute("bl") Blogs bl) {
		boolean bool = blogsServiceImpl.edit(bl);
		if (bool) {

			model.addAttribute("bl", bl);
			return "redirect:/admin/blogs";
		} else {
			model.addAttribute("error", "Update failed!");
			model.addAttribute("bl", bl);
			return "backend/updateBlogs";
		}
	}

	@RequestMapping(value = { "", "/deleteBlogs" })
	public String DeleteBlogs(@RequestParam("id") Integer id, Model model) {
		boolean bl = blogsServiceImpl.delete(id);
		if (bl) {
			model.addAttribute("success", "Xóa bài viết thành công!!!");
		} else {
			model.addAttribute("error", "Xóa bài viết thất  bại!!!");
		}
		List<Blogs> listBl = blogsServiceImpl.getAll();
		model.addAttribute("blogs", listBl);
		return "backend/blogs";
	}
}
