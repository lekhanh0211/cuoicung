package com.shop.controller.user;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.cache.spi.support.AbstractReadWriteAccess.Item;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.dto.CartDto;
import com.shop.entities.Bill;
import com.shop.entities.BillDetail;
import com.shop.entities.Product;
import com.shop.service.impl.BillDetailServiceImpl;
import com.shop.service.impl.BillServiceImpl;

@Controller

public class CheckOutController {
	@Autowired
	private BillServiceImpl billServiceImpl;
	@Autowired
	private BillDetailServiceImpl billDetailServiceImpl;

	@InitBinder
	public void initBinder(WebDataBinder data) {
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		data.registerCustomEditor(Date.class, new CustomDateEditor(sf, true));
	}

	@RequestMapping(value = "/checkout")
	public String CheckOut(Model model, HttpSession session) {
		Bill bill = new Bill();
		model.addAttribute("bill", bill);
		return "fontend/checkout";
	}

	@RequestMapping(value = "/checkout", method = RequestMethod.POST)
	public String CheckOrder(Model model, @ModelAttribute("bill") Bill bill, HttpSession session, Long id) {

		int maxId = 0;
		List<Bill> bList = billServiceImpl.getAll();
		if (bList.size() == 0) {
			maxId = 0;
		} else {
			for (Bill bl : bList) {
				if (bl.getId() >= maxId)
					maxId = bl.getId();
			}
		}
		CartDto item = new CartDto();
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>) session.getAttribute("Cart");
		if (cart.containsKey(id)) {
			item = cart.get(id);
			BillDetail bd = new BillDetail();
			bd.setQuantity(item.getQuantity());
			bd.setBill_id(maxId);
			bd.setPro_id(Integer.parseInt(String.valueOf(item.getProduct().getId())));
			billDetailServiceImpl.insert(bd);
		}

		boolean bl = billServiceImpl.insert(bill);
		if (bl) {
			model.addAttribute("bill", bill);
			session.removeAttribute("Cart");
			session.removeAttribute("TotalPrice");
			session.removeAttribute("TotalQuantity");
			return "fontend/order";
		} else {
			model.addAttribute("bill", bill);
			return "fontend/checkout";
		}

	}

	/*
	 * @RequestMapping(value = "/order") public String Order(HttpSession session) {
	 * session.removeAttribute("Cart"); return "fontend/order"; }
	 */

}
