package com.shop.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.entities.Product;
import com.shop.service.impl.BlogsServiceImpl;
import com.shop.service.impl.CategoryServiceImpl;
import com.shop.service.impl.ProductServiceImpl;

@Controller
public class HomeController {
	@Autowired
	ProductServiceImpl productServiceImpl = new ProductServiceImpl();
	@Autowired
	CategoryServiceImpl categoryServiceImpl = new CategoryServiceImpl();
	@Autowired
	BlogsServiceImpl blogsServiceImpl = new BlogsServiceImpl();

	@RequestMapping(value = { "/", "/*" })
	public String Home(Model model) {
		model.addAttribute("p_rau", productServiceImpl.getProductById(1));
		model.addAttribute("p_hat", productServiceImpl.getProductById(2));
		model.addAttribute("p_traicay", productServiceImpl.getProductById(3));
		model.addAttribute("p_tinhdau", productServiceImpl.getProductById(4));
		model.addAttribute("p_new", productServiceImpl.getProductById(5));
		model.addAttribute("p_banchay", productServiceImpl.getProductById(6));
		model.addAttribute("p_giamgia", productServiceImpl.getProductById(7));
		model.addAttribute("blogs", blogsServiceImpl.getAll());
		return "fontend/home";
	}

	@RequestMapping(value = { "", "/search-product" })
	public String SearchProduct(@RequestParam("name") String name, Model model) {
		List<Product> products = productServiceImpl.getByName(name);
		model.addAttribute("pro", products);
		model.addAttribute("category", categoryServiceImpl.getAll());
		return "fontend/pro-search";
	}
}
