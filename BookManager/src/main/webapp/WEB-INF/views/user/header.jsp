<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!doctype html>
<html lang="en">
<head>
<base href="${pageContext.servletContext.contextPath}/" />
<meta charset="utf-8" />
<meta name="viewport" content="initial-scale=1, maximum-scale=1, minimum-scale=1">
<link rel="icon" type="image/x-icon" href="assets/img/favicon.ico">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="stylesheet" type="text/css" href="assets/css/main.css">
<link rel="stylesheet" type="text/css" href="assets/style.css">
<link rel="stylesheet" type="text/css" href="assets/css/normalize.css">
	    <link rel="stylesheet" type="text/css" href="assets/icomoon/icomoon.css">
	    <link rel="stylesheet" type="text/css" href="assets/css/vendor.css">

<!-- script
		================================================== -->
<script src="assets/js/modernizr.js"></script>
</head>
<body class="loaded">
	<div class="load-icon"></div>
	<div class="page-container">
		<!-- BEGIN HEADER -->
		<header class="header">
			<div class="header__main">
				<div class="header__cols">
					<div class="header__left">
						<div class="header__cols">
							<div class="header__col">
								<a class="logo" href="index">
									<img class="logo__image" src="assets/images/main-logo.png">
								</a>
							</div>
							<div class="header__col header__col_hide-mob">
								<nav class="header-nav">
									<ul class="header-nav__list">
										<li class="header-nav__item">
											<a class="header-nav__link" href="/shop">
												<s:message code="user.shop" />
											</a>
										</li> <%--
										<li class="header-nav__item">
											<a class="header-nav__link">
												<s:message code="user.collections" />
											</a>
										</li>
										<li class="header-nav__item">
											<a class="header-nav__link">
												<s:message code="user.catalog" />
											</a>
										</li> --%>
										<li class="header-nav__item">
											<a class="header-nav__link" href="/about">
												<s:message code="user.aboutus" />
											</a>
										</li>
										<li class="header-nav__item">
											<a class="header-nav__link" href="/contact">
												<s:message code="user.contact" />
											</a>
										</li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
					<div class="header__right">
						<ul class="user-nav">
							<li class="user-nav__item">
								<a class="user-nav__link">
									<span class="user-nav__icon user-nav__icon_1"></span>
								</a>
							</li>
							<li class="header-nav__item js-nav-item">
								<a class="header-nav__link js-nav-button">
									<span class="user-nav__icon user-nav__icon_5"></span>
								</a>
								<div class="hide-nav js-nav-hide">
									<ul class="hide-nav__list">
										<li class="hide-nav__item">
											<a class="hide-nav__link footer__cols" style="border-bottom: 0" href="index?lang=en">
												<span class="footer__left">
													<s:message code="admin.english" />
												</span>
												<span class="footer__right">
													<img src="assets/img/flags/us_flag.jpg" height="16px" style="margin: 0;" />
												</span>
											</a>
										</li>
										<li class="hide-nav__item">
											<a class="hide-nav__link footer__cols" style="border-bottom: 0" href="index?lang=vi">
												<span class="footer__left">
													<s:message code="admin.vietnam" />
												</span>
												<span class="footer__right">
													<img src="assets/img/flags/vn_flag.jpg" height="16px" style="margin: 0" />
												</span>
											</a>
										</li>
									</ul>
								</div>
							</li>
							<li class="header-nav__item js-nav-item">
								<a class="header-nav__link js-nav-button">
									<span class="user-nav__icon user-nav__icon_2"></span>
								</a>
								<div class="hide-nav js-nav-hide">
									<ul class="hide-nav__list">
										<c:if test="${empty isLogin}">
											<li class="hide-nav__item">
												<a class="hide-nav__link" href="login">
													<s:message code="user.login" />
												</a>
											</li>
											<li class="hide-nav__item">
												<a class="hide-nav__link" href="register">
													<s:message code="user.register" />
												</a>
											</li>
											<li class="hide-nav__item">
												<a class="hide-nav__link" href="forgot-password">
													<s:message code="user.forgot" />
												</a>
											</li>
										</c:if>
										<c:if test="${isAdmin}">
											<li class="hide-nav__item">
												<a class="hide-nav__link" href="admin/index">
													<s:message code="admin.dashboard" />
												</a>
											</li>
										</c:if>
										<c:if test="${not empty isLogin}">
											<li class="hide-nav__item">
												<a class="hide-nav__link" href="profile/${user.getUsername()}">
													<s:message code="user.profile" />
												</a>
											</li>
											<li class="hide-nav__item">
												<a class="hide-nav__link" href="change-password">
													<s:message code="user.changepass" />
												</a>
											</li>
											<li class="hide-nav__item">
												<a class="hide-nav__link" href="logout">
													<s:message code="user.logout" />
												</a>
											</li>
										</c:if>
									</ul>
								</div>
							</li>
							<li class="user-nav__item">
								<a class="user-nav__link" href="cart">
									<span class="user-nav__icon user-nav__icon_4"></span>
									<span class="user-nav__text">${countcart}</span>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</header>
		<!-- HEADER END -->

		<!-- MOBILE NAVIGATION -->
		<div class="hide-mob js-mob-hide">
			<div class="hide-mob__bg">
				<button class="hide-mob__close close-button js-mob-close"></button>
				<div class="hide-mob__mask js-mob-close"></div>
				<ul class="mob-nav">
					<li class="mob-nav__item">
						<a class="mob-nav__link" href="/index">
							<img src="assets/img/svg/logo.svg" class="logo__nav">
						</a>
					</li>
					<li class="mob-nav__item">
						<a class="mob-nav__link" href="/shop">
							<s:message code="user.shop" />
						</a>
					</li>
					<li class="mob-nav__item js-slidedown">
						<a class="mob-nav__link js-slidedown-button">
							<span class="mob-nav__arrow">
								<s:message code="user.account" />
							</span>
						</a>
						<div class="slide-nav js-slidedown-hide">
							<ul class="slide-nav__list">
								<c:if test="${empty isLogin}">
									<li class="slide-nav__item">
										<a class="slide-nav__link" href="login">
											<s:message code="user.login" />
										</a>
									</li>
									<li class="slide-nav__item">
										<a class="slide-nav__link" href="register">
											<s:message code="user.register" />
										</a>
									</li>
									<li class="slide-nav__item">
										<a class="slide-nav__link" href="fogot-password">
											<s:message code="user.forgot" />
										</a>
									</li>
								</c:if>
								<c:if test="${not empty isAdmin}">
									<li class="slide-nav__item">
										<a class="slide-nav__link" href="admin/index">
											<s:message code="admin.dashboard" />
										</a>
									</li>
								</c:if>
								<c:if test="${not empty isLogin}">
									<li class="slide-nav__item">
										<a class="slide-nav__link" href="profile">
											<s:message code="user.profile" />
										</a>
									</li>
									<li class="slide-nav__item">
										<a class="slide-nav__link" href="change-password">
											<s:message code="user.changepass" />
										</a>
									</li>
									<li class="slide-nav__item">
										<a class="slide-nav__link" href="logout">
											<s:message code="user.logout" />
										</a>
									</li>
								</c:if>
							</ul>
						</div>
					</li>
					<li class="mob-nav__item">
						<a class="mob-nav__link">
							<s:message code="user.collections" />
						</a>
					</li>
					<li class="mob-nav__item">
						<a class="mob-nav__link">
							<s:message code="user.catalog" />
						</a>
					</li>
					<li class="mob-nav__item">
						<a class="mob-nav__link" href="/about">
							<s:message code="user.aboutus" />
						</a>
					</li>
					<li class="mob-nav__item">
						<a class="mob-nav__link" href="/contact">
							<s:message code="user.contact" />
						</a>
					</li>
				</ul>
				<div class="hide-mob__socials">
					<ul class="socials__list socials__list_center">
						<li class="socials__item">
							<a class="socials__link">Fb</a>
						</li>
						<li class="socials__item">
							<a class="socials__link">Tw</a>
						</li>
						<li class="socials__item">
							<a class="socials__link">Ins</a>
						</li>
						<li class="socials__item">
							<a class="socials__link">Pt</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- MOBILE NAVIGATION END -->