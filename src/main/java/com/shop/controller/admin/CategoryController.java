package com.shop.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.entities.Category;
import com.shop.service.impl.CategoryServiceImpl;

@Controller
@RequestMapping(value = "/admin")
public class CategoryController {
	@Autowired
	private CategoryServiceImpl categoryServiceImpl;

	@RequestMapping(value = { "", "/category" })
	public String Category(Model model) {
		List<Category> listCate = categoryServiceImpl.getAll();
		model.addAttribute("category", listCate);
		return "backend/category";
	}

	@RequestMapping("/initInsertCategory")
	public String initInsertCategory(Model model) {
		Category cat = new Category();
		model.addAttribute("cat", cat);
		return "backend/insertCategory";
	}

	@RequestMapping(value = { "/", "/insertCategory" })
	public String Insert(Model model, @ModelAttribute("cat") Category cat) {

		boolean bl = categoryServiceImpl.insert(cat);
		if (bl) {

			model.addAttribute("cat", cat);
			return "redirect:/admin/category";
		} else {
			model.addAttribute("error", "Insert failed!");
			model.addAttribute("cat", cat);
			return "backend/insertCategory";
		}
	}

	@RequestMapping("/initUpdateCategory")
	public String initUpdateCategory(@RequestParam("id") int id, Model model) {
		Category cat = categoryServiceImpl.getById(id);
		model.addAttribute("cat", cat);
		return "backend/updateCategory";
	}

	@RequestMapping(value = { "/", "/updateCategory" })
	public String updateCategory(Model model, @ModelAttribute("cat") Category cat) {
		boolean bl = categoryServiceImpl.edit(cat);
		if (bl) {
			
			model.addAttribute("cat", cat);
			return "redirect:/admin/category";
		} else {
			model.addAttribute("error", "Update failed!");
			model.addAttribute("cat", cat);
			return "backend/updateCategory";
		}
	}

	@RequestMapping(value = { "", "/deleteCategory" })
	public String DeleteComment(@RequestParam("id") Integer id, Model model) {
		boolean bl = categoryServiceImpl.delete(id);
		if (bl) {
			model.addAttribute("success", "Xóa bình luận thành công!!!");
		} else {
			model.addAttribute("error", "Xóa bình luận thất  bại!!!");
		}
		List<Category> listCate = categoryServiceImpl.getAll();
		model.addAttribute("category", listCate);
		return "backend/category";
	}
}
