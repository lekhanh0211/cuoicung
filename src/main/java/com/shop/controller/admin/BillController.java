package com.shop.controller.admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.shop.entities.BillDetail;
import com.shop.entities.Bill;
import com.shop.entities.Product;
import com.shop.service.impl.BillDetailServiceImpl;
import com.shop.service.impl.BillServiceImpl;
import com.shop.service.impl.ProductServiceImpl;

@Controller
@RequestMapping(value = "/admin")
public class BillController {
	@Autowired
	private BillServiceImpl billServiceImpl;
	@Autowired
	private BillDetailServiceImpl billDetailServiceImpl;
	@Autowired
	private ProductServiceImpl productServiceImpl;

	@RequestMapping(value = { "", "/bill" })
	public String Bill(Model model) {
		model.addAttribute("bill", billServiceImpl.getAll());
		return "backend/bill";
	}

	@RequestMapping(value = { "", "/bill-detail" })
	public String BillDetail(Model model) {
		List<BillDetail> lstBill = billDetailServiceImpl.getAll();
		List<Product> products = new ArrayList<Product>();
		for (BillDetail billDetail : lstBill) {
			Product product = new Product();
			product = productServiceImpl.getById(billDetail.getId());
			products.add(product);
		}
		model.addAttribute("products", products);
		model.addAttribute("billdetail", lstBill);
		return "backend/bill-detail";
	}

	@RequestMapping(value = { "", "/deleteBill" })
	public String DeleteBill(@RequestParam("id") Integer id, Model model) {
		boolean bl = billServiceImpl.delete(id);
		if (bl) {
			model.addAttribute("success", "Xóa hóa đơn thành công!!!");
		} else {
			model.addAttribute("error", "Xóa hóa đơn thất  bại!!!");
		}
		List<Bill> listBl = billServiceImpl.getAll();
		model.addAttribute("bill", listBl);
		return "backend/bill";
	}
}
