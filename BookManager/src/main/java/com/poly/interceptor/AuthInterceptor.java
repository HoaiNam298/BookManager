package com.poly.interceptor;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import com.poly.entity.Account;
import com.poly.service.SessionService;

@Component
public class AuthInterceptor implements HandlerInterceptor {

	@Autowired
	SessionService session;

	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object handler) throws IOException {
		Account user = (Account) session.get("user");
		if (user == null) {
			resp.sendRedirect(req.getContextPath() + "/login");
			return false;
		}
		return true;
	}
}