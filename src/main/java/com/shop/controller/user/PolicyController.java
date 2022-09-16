package com.shop.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PolicyController {
	@RequestMapping(value = { "/policy" })
	public String Policy() {

		return "fontend/policy";
	}
}
