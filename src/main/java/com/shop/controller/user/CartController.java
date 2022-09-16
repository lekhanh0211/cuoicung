package com.shop.controller.user;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.dao.impl.CartDAOImpl;
import com.shop.dto.CartDto;

@Controller
public class CartController {
	@Autowired
	private CartDAOImpl cartDAOImpl;

	@RequestMapping(value = { "/cart" })
	public String Cart() {

		return "fontend/cart";
	}

	@RequestMapping(value = "/AddCart/{id}", method = RequestMethod.GET)
	public String AddCart(HttpServletRequest request, HttpSession session, @PathVariable("id") long id) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>) session.getAttribute("Cart");
		if (cart == null) { // lần đầu thêm vào thì cart sẽ null
			cart = new HashMap<Long, CartDto>();
		}
		cart = cartDAOImpl.AddCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantity", cartDAOImpl.totalQuantity(cart));
		session.setAttribute("TotalPrice", cartDAOImpl.totalPrice(cart));
		return "redirect:" + request.getHeader("Referer");
	}

	@RequestMapping(value = "EditCart/{id}/{quantity}")
	public String EditCart(HttpServletRequest request, HttpSession session, @PathVariable long id,
			@PathVariable int quantity) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>) session.getAttribute("Cart"); // lấy giỏ hàng và kt null
		if (cart == null) {
			cart = new HashMap<Long, CartDto>();
		}
		cart = cartDAOImpl.editCart(id, quantity, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantity", cartDAOImpl.totalQuantity(cart));
		session.setAttribute("TotalPrice", cartDAOImpl.totalPrice(cart));
		return "redirect:" + request.getHeader("Referer");
	}

	@RequestMapping(value = "/DeleteCart/{id}")
	public String DeleteCart(HttpServletRequest request, HttpSession session, @PathVariable long id) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>) session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Long, CartDto>();
		}
		cart = cartDAOImpl.deleteCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantity", cartDAOImpl.totalQuantity(cart));
		session.setAttribute("TotalPrice", cartDAOImpl.totalPrice(cart));
		return "redirect:" + request.getHeader("Referer");
	}
}
