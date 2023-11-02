package com.poly.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.dao.OrderDAO;
import com.poly.dao.OrderDetailDAO;
import com.poly.entity.OrderDetail;
import com.poly.service.CartService;

@Controller
@RequestMapping("/admin/")
public class OrderController {

	@Autowired
	private OrderDAO dao;

	@Autowired
	private OrderDetailDAO odao;

	@Autowired
	CartService cartService;

	@RequestMapping("order")
	public String view(Model model) {
		model.addAttribute("items", dao.findAll());
		return "admin/order";
	}

	@GetMapping("orderdetail/{id}")
	public String viewOrderDetails(Model model, @PathVariable("id") Integer id) {
		List<OrderDetail> listOD = odao.findByOrderid(id);
		model.addAttribute("lists", listOD);
		double sum = 0;
		for (OrderDetail od : listOD) {
			sum += (od.getQuantity() * od.getPrice());
		}
		model.addAttribute("total", sum);
		return "admin/orderdetail";
	}
}
