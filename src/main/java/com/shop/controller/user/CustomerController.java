package com.shop.controller.user;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.entities.Customer;
import com.shop.service.impl.CustomerServiceImpl;

@Controller
public class CustomerController {
	@Autowired
	CustomerServiceImpl customerServiceImpl = new CustomerServiceImpl();

	@InitBinder
	public void initBinder(WebDataBinder data) {
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		data.registerCustomEditor(Date.class, new CustomDateEditor(sf, true));
	}

	@RequestMapping(value = { "/dangnhap" }, method = RequestMethod.GET)
	public String DangNhap(Model model) {
		model.addAttribute("cus", new Customer());
		return "fontend/login";
	}

	@RequestMapping(value = { "/dangxuat" }, method = RequestMethod.GET)
	public String DangXuat(HttpSession session) {
		if (session != null) {
			session.invalidate();
		}
		return "fontend/home";
	}

	@RequestMapping(value = { "/dang-nhap" }, method = RequestMethod.POST)
	public String DangNhap(@Valid HttpSession session, Model model, @ModelAttribute("cus") Customer cus,
			BindingResult result) {

		if (result.hasErrors()) {
			return "fontend/login";
		}
		String username = cus.getUsername();
		String password = cus.getPassword();
		Customer customer = customerServiceImpl.checkLogin(username, password);
		if (customer != null) {
			session.setAttribute("loginInfo", customer);
			return "redirect:home";
		} else {
			model.addAttribute("failed", "Tên đăng nhập hoặc mật khẩu không đúng!!!");
			return "fontend/login";
		}

	}

	@RequestMapping(value = { "/dangky" }, method = RequestMethod.GET)
	public String DangKy(Model model) {
		model.addAttribute("cus", new Customer());
		return "fontend/register";
	}

	@RequestMapping(value = { "/dangky" }, method = RequestMethod.POST)
	public String DangKy(@ModelAttribute("cus") Customer cus, Model model) {
		boolean bl = customerServiceImpl.insert(cus);
		if (bl) {
			model.addAttribute("success", "Đăng ký thành công!!!");
		} else {
			model.addAttribute("error", "Đăng ký thất bại!!!");
		}
		return "fontend/register";
	}
}
