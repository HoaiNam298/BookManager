package com.poly.controller.user;

import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.dao.AccountDAO;
import com.poly.entity.Account;
import com.poly.service.AccountService;
import com.poly.service.CartService;
import com.poly.service.CookieService;
import com.poly.service.MailerService;
import com.poly.service.SessionService;

import net.bytebuddy.utility.RandomString;

@Controller
public class LoginController {

	@Autowired
	AccountDAO dao;

	@Autowired
	AccountService accountService;

	@Autowired
	CookieService cookieService;

	@Autowired
	MailerService mailer;

	@Autowired
	SessionService session;

	@Autowired
	CartService cart;

	@GetMapping("/login")
	public String login(Model model) {
		model.addAttribute("countcart", cart.getCount());
		return "user/login";
	}

	@GetMapping("/register")
	public String index(Model model) {
		model.addAttribute("countcart", cart.getCount());
		return "user/register";
	}

	@GetMapping("/forgot-password")
	public String forgot(Model model) {
		model.addAttribute("countcart", cart.getCount());
		return "user/forgot-password";
	}

	@GetMapping("/reset-password")
	public String showResetPasswordForm(@Param(value = "token") String token, Model model) {
		Account account = accountService.getByToken(token);
		model.addAttribute("token", token);
		if (account == null) {
			model.addAttribute("message", "Invalid token!");
			return "redirect:/login";
		}
		model.addAttribute("countcart", cart.getCount());
		return "user/reset-password";
	}

	@GetMapping("/change-password")
	public String change(Model model) {
		model.addAttribute("countcart", cart.getCount());
		return "user/change-password";
	}

	@PostMapping("/login")
	public String login(@Valid @ModelAttribute Account acc, @RequestParam("username") String user,
			@RequestParam("password") String pass, @RequestParam(name = "remember", defaultValue = "false") Boolean rm)
			throws NoSuchAlgorithmException {
		Account account = dao.findById(user).get();
		if (user.equals(account.getUsername()) && pass.equals(account.getPassword())) {
			session.set("user", account);
			session.set("isLogin", true);
			if (rm == true) {
				cookieService.add("username", user, 10);
				cookieService.add("password", accountService.setHashMD5(pass), 10);
			} else {
				cookieService.remove("username");
				cookieService.remove("password");
			}
			if (account.isAdmin() == true) {
				session.set("isAdmin", true);
				return "redirect:/admin/index";
			} else {
				session.set("isAdmin", false);
			}
			return "redirect:/index";
		} else {
			session.set("isLogin", false);
			return "redirect:/login";
		}
	}

	@PostMapping("/register")
	public String save(ModelMap model, @Valid @ModelAttribute Account account, BindingResult br,
			HttpServletResponse response) {
		if (br.hasErrors()) {
			model.addAttribute("message", "Please correct the errors below !");
		} else {
			account.setActivated(true);
			account.setAdmin(false);
			account.setImg("noavt.png");
			dao.save(account);
			model.addAttribute("message", "You have successfully registered an account!");
			response.addHeader("refresh", "3;url=/login");
		}
		return "user/register";
	}

	@PostMapping("/forgot-password")
	public String forgotPassword(@RequestParam("email") String email, HttpServletRequest request, Model model)
			throws Exception {
		try {
			String token = RandomString.make(50);
			accountService.updateToken(token, email);
			String resetLink = getSiteURL(request) + "/reset-password?token=" + token;
			mailer.sendEmail(email, resetLink);
			model.addAttribute("message", "We have sent a reset password link to your email. "
					+ "If you don't see the email, check your spam folder.");
		} catch (MessagingException e) {
			e.printStackTrace();
			model.addAttribute("error", "Error while sending email");
		}
		return "user/forgot-password";
	}

	@PostMapping("/reset-password")
	public String processResetPassword(@RequestParam("token") String token, @RequestParam("password") String password,
			HttpServletResponse response, Model model) {
		Account user = accountService.getByToken(token);
		if (user == null) {
			model.addAttribute("message", "Invalid token!");
		} else {
			accountService.updatePassword(user, password);
			model.addAttribute("message", "You have successfully changed your password!");
			response.addHeader("refresh", "3;url=/login");
		}
		return "user/reset-password";
	}

	@RequestMapping("/logout")
	public String logout() {
		session.remove("user");
		session.remove("isLogin");
		session.remove("isAdmin");
		cookieService.remove("username");
		cookieService.remove("password");
		return "redirect:/login";
	}

	public String getSiteURL(HttpServletRequest request) {
		String siteURL = request.getRequestURL().toString();
		return siteURL.replace(request.getServletPath(), "");
	}

}