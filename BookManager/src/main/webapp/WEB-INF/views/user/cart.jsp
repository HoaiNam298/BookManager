<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="header.jsp" />
<title><s:message code="user.cart" /> | Book Co., Ltd</title>
<!-- BEGIN MAIN -->
<main class="main">

	<!-- BEGIN CART -->
	<div class="cart-page wrapper">
		<div class="cart-page__cols">
			<!-- BEGIN LEFT COLUMN -->
			<div class="cart-page__left">
				<div class="cart-table wishlist">
					<c:set var="total" value="${0}" />
					<c:forEach var="item" items="${cart.items}">
						<c:set var="total" value="${total + (item.price * item.qty)}" />
						<form action="cart/update/${item.id}" method="post">
							<input type="hidden" name="id" value="${item.id}">
							<article class="wishlist__item js-remove">
								<div class="wishlist__cols">
									<div class="wishlist__left">
										<a class="wishlist__image-link">
											<img class="wishlist__image" data-lazy="img/products/${item.img}">
										</a>
									</div>
									<div class="wishlist__right">
										<div class="wishlist__top wishlist__top_cart">
											<div class="wishlist__col">
												<h2 class="wishlist__title">
													<a class="wishlist__link">${item.name}</a>
												</h2>
											</div>
											<div class="wishlist__col">
												<a class="remove-button js-remove-button" href="cart/remove/${item.id}"></a>
											</div>
										</div>
										<div class="wishlist__bottom wishlist__bottom_cart">
											<div class="wishlist__cart-col">
												<span class="wishlist__price wishlist__price_small">
													<fmt:formatNumber pattern="#,###,###.## $" type="currency" value="${item.price}"
														currencySymbol="$" />
												</span>
											</div>
											<div class="wishlist__cart-col">
												<div class="wishlist__count count js-count">
													<button class="count__button count__button_minus js-count-minus" onblur="this.form.submit()"></button>
													<input class="count__input js-count-input" name="qty" onchange="this.form.submit()"
														value="${item.qty <= 0 || item.qty >= 100 ? item.setQuantity(1) : item.qty}">
													<button class="count__button count__button_plus js-count-plus" onblur="this.form.submit()"></button>
												</div>
											</div>
											<div class="wishlist__cart-col">
												<span class="wishlist__price wishlist__price_total">
													<fmt:formatNumber pattern="#,###,###.## $" type="currency" value="${item.price * item.qty}"
														currencySymbol="$" />
												</span>
											</div>
										</div>
									</div>
								</div>
							</article>
						</form>
					</c:forEach>
					<c:if test="${ cart.getItems().isEmpty() }">
						<div class="cart-page__left">
							<div class="cart-table wishlist" style="border-bottom: 0; text-align: center; margin: 50px 0">
								<h2>
									<s:message code="user.emptycart" />
								</h2>
							</div>
						</div>
					</c:if>
					<div style="padding-top: 5px">
						<button type="button" data-toggle="modal" data-target="#delete">
							<s:message code="user.cleartext" />
						</button>
					</div>
				</div>
			</div>
			<!-- LEFT COLUMN END -->

			<!-- BEGIN RIGHT COLUMN -->
			<aside class="cart-page__right">
				<section class="your-order">
					<h3 class="your-order__title">
						<s:message code="user.yourorder" />
					</h3>
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
					<a href="checkout" class="your-order__button button">
						<span class="button__text">
							<s:message code="user.checkout" />
						</span>
					</a>
				</section>
			</aside>
			<!-- RIGHT COLUMN END -->
		</div>
		<!-- REMOVE ALL -->
		<div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="deleteLabel"
			aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" style="padding: 0" id="deleteLabel">
							<s:message code="admin.deletesure" />
						</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<s:message code="user.clearcart" />
					</div>
					<div class="modal-footer">
						<a href="cart/clear" class="btn btn-yes text-white">
							<s:message code="admin.deleteyes" />
						</a>
						<a class="btn btn-no text-white" data-dismiss="modal">
							<s:message code="admin.deleteno" />
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- CART END -->
</main>
<!-- MAIN END -->
<jsp:include page="footer.jsp" />