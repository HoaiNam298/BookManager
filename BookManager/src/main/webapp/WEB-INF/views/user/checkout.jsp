<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="header.jsp" />
<title><s:message code="user.checkout" /> | Book Co., Ltd</title>
<!-- BEGIN MAIN -->
<main class="main">

	<!-- BEGIN CHECKOUT -->
	<div class="checkout-page wrapper">
		<div class="checkout-nav">
			<div class="checkout-nav__item active current">
				<span class="checkout-nav__text">
					<s:message code="user.orderdetail" />
				</span>
			</div>
			<div class="checkout-nav__item">
				<span class="checkout-nav__text">
					<s:message code="user.finish" />
				</span>
			</div>
		</div>

		<div class="checkout-page__cols">
			<!-- BEGIN LEFT COLUMN -->
			<div class="checkout-page__left">
				<form action="checkout" method="post">
					<section class="checkout-form">
						<h2 class="checkout-form__title">
							<s:message code="user.receiver" />
						</h2>
						<span class="login-form__label">
							<s:message code="user.phone" />
							*
						</span>
						<input class="text-input" type="number" name="phone" placeholder="<s:message code="user.phoneph"/>"
							required>
						<span class="login-form__label">
							<s:message code="user.address" />
							*
						</span>
						<textarea class="checkout-form__textarea textarea" name="address"
							placeholder="<s:message code="user.addressph"/>" required></textarea>
						<div class="checkout-form__buttons">
							<div class="checkout-form__button-col">
								<a href="cart" class="checkout-form__back back-button">
									<s:message code="user.return" />
								</a>
							</div>
							<div class="checkout-form__button-col">
								<button class="checkout-form__button button">
									<span class="button__text">
										<s:message code="user.confirm" />
									</span>
								</button>
							</div>
						</div>
					</section>
				</form>
			</div>
			<!-- LEFT COLUMN END -->

			<!-- BEGIN RIGHT COLUMN -->
			<aside class="checkout-page__right">
				<section class="your-order">
					<h3 class="your-order__title">
						<s:message code="user.yourorder" />
					</h3>
					<div class="side-cart">
						<c:set var="total" value="${0}" />
						<c:forEach var="item" items="${cart}">
							<c:set var="total" value="${total + (item.price * item.qty)}" />
							<input type="hidden" name="id" value="${item.id}">
							<article class="side-cart__item">
								<div class="side-cart__cols">
									<div class="side-cart__left">
										<a class="side-cart__image-link">
											<img class="side-cart__image" data-lazy="img/products/${item.img}">
										</a>
									</div>
									<div class="side-cart__right">
										<h4 class="side-cart__title">
											<a class="side-cart__link" href="product">${item.name}</a>
										</h4>
										<span class="side-cart__text">x${item.qty <= 0 || item.qty >= 100 ? item.setQuantity(1) : item.qty}</span>
										<div class="side-cart__prices">
											<span class="side-cart__price">
												<fmt:formatNumber pattern="#,###,###.## $" type="currency" value="${item.price * item.qty}"
													currencySymbol="$" />
											</span>
										</div>
									</div>
								</div>
							</article>
						</c:forEach>
					</div>
					<ul class="your-order__list">
						<li class="your-order__item">
							<div class="your-order__col">
								<span class="your-order__text">
									<s:message code="user.subtotal" />
								</span>
							</div>
							<div class="your-order__col">
								<span class="your-order__price">
									<fmt:formatNumber pattern="#,###,###.## $" type="currency" value="${total}" currencySymbol="$" />
								</span>
							</div>
						</li>
						<li class="your-order__item">
							<div class="your-order__col">
								<span class="your-order__text">
									<s:message code="user.promotext" />
								</span>
							</div>
							<div class="your-order__col">
								<span class="your-order__text">
									<s:message code="user.no" />
								</span>
							</div>
						</li>
						<li class="your-order__item">
							<div class="your-order__col">
								<span class="your-order__text">
									<s:message code="user.transport" />
								</span>
							</div>
							<div class="your-order__col">
								<span class="your-order__price">$0</span>
							</div>
						</li>
					</ul>
					<div class="your-order__bottom">
						<div class="your-order__col">
							<span class="your-order__bottom-text">
								<s:message code="user.total" />
							</span>
						</div>
						<div class="your-order__col">
							<span class="your-order__bottom-price">
								<fmt:formatNumber pattern="#,###,###.## $" type="currency" value="${total}" currencySymbol="$" />
							</span>
						</div>
					</div>
				</section>
			</aside>
			<!-- RIGHT COLUMN END -->
		</div>
	</div>
	<!-- CHECKOUT END -->
</main>
<!-- MAIN END -->
<jsp:include page="footer.jsp" />