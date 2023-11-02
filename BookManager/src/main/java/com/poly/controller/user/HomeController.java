package com.poly.controller.user;

import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Optional;

import javax.servlet.ServletContext;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.poly.dao.AccountDAO;
import com.poly.dao.CategoryDAO;
import com.poly.dao.ProductDAO;
import com.poly.dto.AccountDTO;
import com.poly.entity.Account;
import com.poly.entity.Category;
import com.poly.entity.Product;
import com.poly.service.AccountService;
import com.poly.service.CartService;
import com.poly.service.ProductService;
import com.poly.service.SessionService;

@Controller
public class HomeController {
	@Autowired
	ProductDAO dao;

	@Autowired
	CategoryDAO ctdao;

	@Autowired
	AccountDAO adao;

	@Autowired
	AccountService accountService;

	@Autowired
	ProductService productService;

	@Autowired
	SessionService session;

	@Autowired
	ServletContext app;

	@Autowired
	CartService cart;

	@RequestMapping("/contact")
	public String contact() {
		return "user/contact";
	}

	@RequestMapping("/about")
	public String about(Model model) {
		model.addAttribute("product", dao.countAllProduct());
		model.addAttribute("account", adao.countAllAccount());
		return "user/about";
	}

	@RequestMapping("/index")
	public String home(Model model, @RequestParam(name = "name", defaultValue = "") String name,
			@RequestParam(name = "page") Optional<Integer> page) {
		model.addAttribute("items", productService.findAll(page.orElse(0), 8));
		model.addAttribute("product", dao.countAllProduct());
		model.addAttribute("account", adao.countAllAccount());
		model.addAttribute("countcart", cart.getCount());
		return "user/index";
	}

	@GetMapping("/shop")
	public String shop(Model model, @RequestParam(name = "page") Optional<Integer> page,
			@RequestParam(name = "field", defaultValue = "") String field) {
		if (field.equals("")) {
			model.addAttribute("items", productService.findAll(page.orElse(0), 9));
		} else {
			model.addAttribute("items", productService.findByField(page.orElse(0), 9, field, ""));
		}
		List<Category> list = ctdao.findAll();
		model.addAttribute("list", list);
		model.addAttribute("product", dao.countAllProduct());
		model.addAttribute("countcart", cart.getCount());
		return "user/shop";
	}

	@PostMapping("/shop/search")
	public String search(Model model, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("page") Optional<Integer> page) {
		Pageable pageable = PageRequest.of(page.orElse(0), 12);
		String kwords = kw.orElse(session.get("keywords", ""));
		Page<Product> items = dao.findAllByNameLike("%" + kwords + "%", pageable);
		List<Category> list = ctdao.findAll();
		model.addAttribute("list", list);
		model.addAttribute("items", items);
		model.addAttribute("product", dao.countAllProduct());
		model.addAttribute("countcart", cart.getCount());
		return "user/shop";
	}

	@RequestMapping("/profile/{id}")
	public String profile(Model model, @PathVariable("id") String id) {
		model.addAttribute("item", accountService.findById(id).get());
		model.addAttribute("items", accountService.findAll());
		model.addAttribute("countcart", cart.getCount());
		return "user/profile";
	}

	@PostMapping("/profile/update")
	public String update(@ModelAttribute AccountDTO accountModel, Account account, @PathVariable("id") String id,
			BindingResult br, @RequestParam("img") MultipartFile img, RedirectAttributes ra)
			throws IllegalAccessException, InvocationTargetException {
		if (br.hasErrors()) {
			ra.addFlashAttribute("message", "Please correct the errors below !");
		} else {
			try {
				String filename = img.getOriginalFilename();
				File file = new File(app.getRealPath("/img/accounts/" + filename));
				img.transferTo(file);
			} catch (Exception e) {
				e.printStackTrace();
			}
			BeanUtils.copyProperties(account, accountModel);
			if (img != null && !img.getOriginalFilename().isEmpty()) {
				account.setImg(accountModel.getImg().getOriginalFilename());
			} else {
				account.setImg("noavt.png");
			}
			ra.addFlashAttribute("message", "Account updated is successful!");
			accountService.save(account);
		}
		return "redirect:/profile/" + accountService.findByUsername(id).getUsername();
	}
}
