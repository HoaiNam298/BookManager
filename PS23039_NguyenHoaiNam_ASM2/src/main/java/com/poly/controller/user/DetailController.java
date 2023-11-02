package com.poly.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.dao.ProductDAO;
import com.poly.entity.Product;
import com.poly.service.CartService;

@Controller
public class DetailController {

	@Autowired
	ProductDAO dao;

	@Autowired
	CartService cart;

	@RequestMapping("/detail")
	public String detail() {
		return "user/detail";
	}

	@RequestMapping("/detail/{id}")
	public String details(Model model, @PathVariable("id") Integer id) {
		Product item = dao.findById(id).get();
		model.addAttribute("item", item);
		model.addAttribute("countcart", cart.getCount());
		return "user/detail";
	}
}
