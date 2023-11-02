<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="header.jsp" />
<title><s:message code="user.product" /> | Book Co., Ltd</title>
<!-- BEGIN MAIN -->
<main class="main">
	

	<!-- BEGIN PRODUCT CARD -->
	<section class="product wrapper">
		<div class="product__cols">
			<!-- BEGIN LEFT COLUMN -->
			<div class="product__left">
				<div class="product__mob js-to-3"></div>
				<div class="product-gallery">
					<div class="product-gallery__top">
						<div class="product-gallery__cols">
							<div class="product-gallery__col">
								<div class="product-gallery__tag">
									<span class="item-tag item-tag_red">
										<s:message code="user.sale" />
									</span>
								</div>
								<div class="product-gallery__tag">
									<span class="item-tag item-tag_green">
										<s:message code="user.newp" />
									</span>
								</div>
							</div>
							<div class="product-gallery__col">
								<button class="favorite-button js-toggle-active"></button>
							</div>
						</div>
					</div>
					<div class="product-slider loaded js-product-slider dots-2 dots-left">
						<div class="product-slider__item">
							<a class="product-slider__link" href="img/products/${item.img}" data-fancybox="gallery">
								<img class="product-slider__image" src="img/products/${item.img}">
							</a>
						</div>
					</div>
				</div>
			</div>
			<!-- LEFT COLUMN END -->

			<!-- BEGIN RIGHT COLUMN -->
			<div class="product__right">
				<div class="product__content">
					<div class="product__desktop js-from-3">
						<div class="product__top js-content-3">
							<h2 class="product__title">${item.name}</h2>
							<div class="product-rating">
								<div class="product-rating__col">
									<div class="product-rating__stars rating rating_medium">
										<input class="star" name="product-rating" type="radio" disabled>
										<input class="star" name="product-rating" type="radio" disabled>
										<input class="star" name="product-rating" type="radio" disabled>
										<input class="star" name="product-rating" type="radio" disabled>
										<input class="star" name="product-rating" type="radio" checked disabled>
									</div>
								</div>
							</div>
						</div>
					</div>
					<p class="product__text">${item.description}</p>
					<ul class="chars">
						<li class="chars__item">
							<span class="chars__name">
								<s:message code="user.category" />
								:
							</span>
							<span class="chars__text">${item.category.name}</span>
						</li>
						<li class="chars__item">
							<span class="chars__name">
								<s:message code="user.status" />
								:
							</span>
							<span class="chars__text">
								<span class="chars__status">${item.available ? 'In stock':'Out of stock'}</span>
							</span>
						</li>
					</ul>
					<div class="product__prices">
						<span class="product__price">
							<fmt:formatNumber pattern="#,###,###.## $" type="currency" value="${item.price}" currencySymbol="$" />
						</span>
					</div>
				</div>
				<div class="product-add">
					<div class="product-add__col">
						<a href="cart/add/${item.id}" class="product-add__button button">
							<span class="button__text">
								<s:message code="user.addcart" />
							</span>
						</a>
					</div>
				</div>
			</div>
			<!-- RIGHT COLUMN END -->
		</div>
		<img class="product__vector" data-lazy="assets/img/svg/vector-product.svg">
	</section>
	<!-- PRODUCT CARD END -->

	<!-- BEGIN PRODUCT TABS -->
	<div class="product-tabs wrapper">
		<div class="product-nav tabs-nav js-line">
			<ul class="product-nav__list tabs-nav__list tabs-nav__list_left">
				<li class="tabs-nav__item js-line-item js-tabs-item active">
					<a class="tabs-nav__link js-line-link js-tabs-link" href="#product-tab-2">
						<s:message code="user.reviews" />
					</a>
				</li>
			</ul>
			<div class="tabs-nav__line js-line-element"></div>
		</div>
		<!-- BEGIN REVIEWS -->
		<div class="product-tab js-tabs-content active" id="product-tab-2">
			<div class="product-tab__cols">
				<!-- BEGIN REVIEWS -->
				<div class="product-tab__left">
					<div class="reviews">
						<article class="review">
							<div class="review__top">
								<div class="review__left">
									<div class="review__cols">
										<div class="review__col">
											<h5 class="review__author">Melissa Johnson</h5>
										</div>
										<div class="review__col">
											<span class="review__date">Aug 02, 2022</span>
										</div>
										<div class="review__col">
											<div class="review__rating rating rating_small">
												<input class="star" name="review-rating-1" type="radio" disabled>
												<input class="star" name="review-rating-1" type="radio" disabled>
												<input class="star" name="review-rating-1" type="radio" disabled>
												<input class="star" name="review-rating-1" type="radio" disabled>
												<input class="star" name="review-rating-1" type="radio" checked disabled>
											</div>
										</div>
									</div>
								</div>
								<div class="review__right">
									<a class="review__button reply-button"></a>
								</div>
							</div>
							<p class="review__text">Proident voluptate adipisicing ullamco veniam incididunt laboris nulla elit
								et anim tempor duis dolor nostrud. Ad eiusmod laborum deserunt id eiusmod. Eiusmod ea aute ex et nisi
								exercitation eu fugiat.</p>
						</article>
						<article class="review">
							<div class="review__top">
								<div class="review__left">
									<div class="review__cols">
										<div class="review__col">
											<h5 class="review__author">Oliver Jenkins</h5>
										</div>
										<div class="review__col">
											<span class="review__date">May 15, 2022</span>
										</div>
										<div class="review__col">
											<div class="review__rating rating rating_small">
												<input class="star" name="review-rating-3" type="radio" disabled>
												<input class="star" name="review-rating-3" type="radio" disabled>
												<input class="star" name="review-rating-3" type="radio" disabled>
												<input class="star" name="review-rating-3" type="radio" disabled>
												<input class="star" name="review-rating-3" type="radio" checked disabled>
											</div>
										</div>
									</div>
								</div>
								<div class="review__right">
									<a class="review__button reply-button"></a>
								</div>
							</div>
							<p class="review__text">Proident voluptate adipisicing ullamco veniam incididunt laboris nulla elit
								et anim tempor duis dolor nostrud. Ad eiusmod laborum deserunt id eiusmod. Eiusmod ea aute ex et nisi
								exercitation eu fugiat.</p>
						</article>
					</div>
				</div>
				<!-- REVIEWS END -->

				<!-- BEGIN ADD REVIEW -->
				<div class="product-tab__right">
					<form>
						<section class="add-review">
							<div class="add-review__top">
								<h3 class="add-review__title">
									<s:message code="user.reviewstitle" />
								</h3>
								<p class="add-review__text">
									<s:message code="user.reviewstext" />
								</p>
								<div class="add-review__rating rating">
									<input class="star" name="add-review-rating" type="radio">
									<input class="star" name="add-review-rating" type="radio">
									<input class="star" name="add-review-rating" type="radio">
									<input class="star" name="add-review-rating" type="radio">
									<input class="star" name="add-review-rating" type="radio">
								</div>
							</div>
							<textarea class="textarea" placeholder="<s:message code="user.feedbackph"/>"></textarea>
							<input class="text-input" type="text" placeholder="<s:message code="user.fnameph"/>">
							<input class="text-input" type="email" placeholder="<s:message code="user.emailph"/>">
							<button class="add-review__button button">
								<span class="button__text">
									<s:message code="user.reviewspost" />
								</span>
							</button>
						</section>
					</form>
				</div>
				<!-- ADD REVIEW END -->
			</div>
		</div>
		<!-- REVIEWS END -->
	</div>
	<!-- PRODUCT TABS END -->
</main>
<!-- MAIN END -->
<jsp:include page="footer.jsp" />