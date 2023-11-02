package com.poly.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.dao.AccountDAO;
import com.poly.dao.CategoryDAO;
import com.poly.dao.OrderDetailDAO;
import com.poly.dao.ProductDAO;
import com.poly.entity.Account;
import com.poly.entity.Report;
import com.poly.service.SessionService;

@Controller
public class AdminController {
	@Autowired
	ProductDAO dao;

	@Autowired
	CategoryDAO ctdao;

	@Autowired
	AccountDAO adao;

	@Autowired
	OrderDetailDAO odao;

	@Autowired
	SessionService session;

	@GetMapping("/admin/index")
	public String index(Model model) {
		model.addAttribute("product", dao.countAllProduct());
		model.addAttribute("category", ctdao.countAllCategory());
		model.addAttribute("account", adao.countAllAccount());
		model.addAttribute("sum", odao.countSumOrder());

		model.addAttribute("item", new Account());
		model.addAttribute("items", adao.findAll());
		return "admin/index";
	}

	@RequestMapping("/admin/revenue")
	public String report(Model model) {
		List<Report> list = dao.getInventoryByCategory();
		model.addAttribute("items", list);
		return "admin/revenue";
	}

	@RequestMapping("/admin/revenue1")
	public String report1(Model model) {
		List<Report> list = dao.getInventoryByDate();
		model.addAttribute("items", list);
		return "admin/revenue1";
	}
}
