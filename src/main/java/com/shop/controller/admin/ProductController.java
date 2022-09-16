package com.shop.controller.admin;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
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

import com.shop.entities.Category;
import com.shop.entities.Product;
import com.shop.service.impl.CategoryServiceImpl;
import com.shop.service.impl.ProductServiceImpl;

@Controller
@RequestMapping(value = "/admin")
public class ProductController {
	@Autowired
	private ProductServiceImpl productServiceImpl;
	@Autowired
	private CategoryServiceImpl categoryServiceImpl;

	@InitBinder
	public void initBinder(WebDataBinder data) {
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		data.registerCustomEditor(Date.class, new CustomDateEditor(sf, true));
	}

	@RequestMapping(value = { "", "/product" })
	public String Product(Model model, Integer page) {
		Integer offset, maxResult;
		maxResult = 10;
		if (page == null)
			offset = 0;
		else
			offset = (page - 1) * maxResult;

		List<Product> listProductPerPage = productServiceImpl.getListProductPerPage(offset, maxResult);
		model.addAttribute("product", listProductPerPage);

		Long totalStudents = productServiceImpl.getTotalProduct();
		int numberPages = (int) ((totalStudents / maxResult) + (totalStudents % maxResult != 0 ? 1 : 0));
		List<Integer> listPages = new ArrayList<>();
		for (int i = 1; i <= numberPages; i++) {
			listPages.add(i);
		}
		model.addAttribute("listPages", listPages);
		return "backend/product";
	}

	@RequestMapping("/initInsertProduct")
	public String InitInsertProduct(Model model) {
		Product pro = new Product();
		List<Category> listCate = categoryServiceImpl.getAll();
		model.addAttribute("pro", pro);
		model.addAttribute("category", listCate);
		return "backend/insertProduct";
	}

	@RequestMapping(value = { "/", "/insertProduct" })
	public String InsertProduct(Model model, @ModelAttribute("pro") Product pro) {

		boolean bl = productServiceImpl.insert(pro);
		if (bl) {

			model.addAttribute("pro", pro);
			return "redirect:/admin/product";
		} else {

			model.addAttribute("error", "Insert failed!");
			model.addAttribute("pro", pro);
			return "backend/insertProduct";
		}
	}

	@RequestMapping("/initUpdateProduct")
	public String initUpdateProduct(@RequestParam("id") int id, Model model) {
		Product pro = productServiceImpl.getById(id);
		List<Category> listCate = categoryServiceImpl.getAll();
		model.addAttribute("category", listCate);
		model.addAttribute("pro", pro);
		return "backend/updateProduct";
	}

	@RequestMapping(value = { "/", "/updateProduct" })
	public String UpdateProduct(Model model, @ModelAttribute("pro") Product pro) {
		boolean bl = productServiceImpl.edit(pro);
		if (bl) {

			model.addAttribute("pro", pro);
			return "redirect:/admin/product";
		} else {
			model.addAttribute("error", "Update failed!");
			model.addAttribute("pro", pro);
			return "backend/updateProduct";
		}
	}

	@RequestMapping(value = { "", "/deleteProduct" })
	public String DeleteProduct(@RequestParam("id") Integer id, Model model) {
		boolean bl = productServiceImpl.delete(id);
		if (bl) {
			model.addAttribute("success", "Xóa sản phẩm thành công!!!");
		} else {
			model.addAttribute("error", "Xóa sản phẩm thất  bại!!!");
		}
		List<Product> listPro = productServiceImpl.getAll();
		model.addAttribute("product", listPro);
		return "backend/product";
	}

}
