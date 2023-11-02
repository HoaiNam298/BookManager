<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="header.jsp" />
<title><s:message code="user.404" /> | Book Co., Ltd</title>
<main class="main">
	<div class="inner-top">
		<div class="inner-top__main wrapper">
			<div class="inner-top__cols">
				<div class="inner-top__left">
					<h1 class="inner-top__title">Oops!</h1>
					<div class="breadcrumbs">
						<ul class="breadcrumbs__list">
							<li class="breadcrumbs__item">
								<a class="breadcrumbs__link" href="index">
									<s:message code="user.home" />
								</a>
							</li>
							➥&#160;&#160;
							<li class="breadcrumbs__item">
								<s:message code="user.404" />
							</li>
						</ul>
					</div>
				</div>
				<div class="inner-top__right">
					<div class="inner-top__image" data-bg="assets/img/404-banner.jpg"></div>
				</div>
			</div>
			<img class="inner-top__bg" data-lazy="assets/img/svg/vector-inner-top.svg">
		</div>
	</div>
	<div class="page-404">
		<div class="page-404__main wrapper">
			<div class="page-404__cols">
				<div class="page-404__left">
					<h2 class="page-404__title"><s:message code="user.404" /></h2>
					<h3 class="page-404__subtitle">Page not found!</h3>
					<p class="page-404__text">It looks like nothing was found at this location.</p>
				</div>
				<div class="page-404__right">
					<img class="page-404__image" data-lazy="assets/img/404-bg.jpg">
				</div>
			</div>
			<img class="page-404__vector" data-lazy="assets/img/svg/vector-404.svg">
		</div>
	</div>
</main>
<jsp:include page="footer.jsp" />