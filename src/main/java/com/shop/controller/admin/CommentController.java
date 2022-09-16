package com.shop.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.entities.Comment;
import com.shop.service.impl.CommentServiceImpl;

@Controller
@RequestMapping(value = "/admin")
public class CommentController {
	@Autowired
	private CommentServiceImpl commentServiceImpl;

	@RequestMapping(value = { "", "/comment" })
	public String Comment(Model model) {
		List<Comment> listCmt = commentServiceImpl.getAll();
		model.addAttribute("comment", listCmt);
		return "backend/comment";
	}

	@RequestMapping(value = { "", "/deleteComment" })
	public String DeleteComment(@RequestParam("id") Integer id, Model model) {
		boolean bl = commentServiceImpl.delete(id);
		if (bl) {
			model.addAttribute("success", "Xóa bình luận thành công!!!");
		} else {
			model.addAttribute("error", "Xóa bình luận thất  bại!!!");
		}
		List<Comment> listCmt = commentServiceImpl.getAll();
		model.addAttribute("comment", listCmt);
		return "backend/comment";
	}
}
