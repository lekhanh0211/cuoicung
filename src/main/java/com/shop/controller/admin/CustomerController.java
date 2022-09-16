package com.shop.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.entities.Customer;
import com.shop.service.impl.CustomerServiceImpl;

@Controller(value = "CustomerAdmin")
@RequestMapping(value = "/admin")
public class CustomerController {
	@Autowired
	private CustomerServiceImpl customerServiceImpl;

	@RequestMapping(value = { "", "/customer" })
	public String Customer(Model model) {
		List<Customer> listCus = customerServiceImpl.getAll();
		model.addAttribute("customer", listCus);
		return "backend/customer";
	}

	@RequestMapping("/initInsertCustomer")
	public String initInsertCustomer(Model model) {
		Customer cus = new Customer();
		model.addAttribute("cus", cus);
		return "backend/insertCustomer";
	}

	@RequestMapping(value = { "/", "/insertCustomer" })
	public String insertCustomer(Model model, @ModelAttribute("cus") Customer cus) {

		boolean bl = customerServiceImpl.insert(cus);
		if (bl) {

			model.addAttribute("cus", cus);
			return "redirect:/admin/customer";
		} else {
			model.addAttribute("error", "Insert failed!");
			model.addAttribute("cus", cus);
			return "backend/insertCustomer";
		}
	}

	@RequestMapping("/initUpdateCustomer")
	public String initUpdateCustomer(@RequestParam("id") int id, Model model) {
		Customer cus = customerServiceImpl.getById(id);
		model.addAttribute("cus", cus);
		return "backend/updateCustomer";
	}

	@RequestMapping(value = { "/", "/updateCustomer" })
	public String updateCustomer(Model model, @ModelAttribute("cus") Customer cus) {
		boolean bl = customerServiceImpl.edit(cus);
		if (bl) {

			model.addAttribute("cus", cus);
			return "redirect:/admin/customer";
		} else {
			model.addAttribute("error", "Update failed!");
			model.addAttribute("cus", cus);
			return "backend/updateCustomer";
		}
	}

	@RequestMapping(value = { "", "/deleteCustomer" })
	public String deleteCustomer(@RequestParam("id") Integer id, Model model) {
		boolean bl = customerServiceImpl.delete(id);
		if (bl) {
			model.addAttribute("success", "Xóa khách hàng thành công!!!");
		} else {
			model.addAttribute("error", "Xóa khách hàng thất  bại!!!");
		}
		List<Customer> listCus = customerServiceImpl.getAll();
		model.addAttribute("customer", listCus);
		return "backend/customer";
	}

}
