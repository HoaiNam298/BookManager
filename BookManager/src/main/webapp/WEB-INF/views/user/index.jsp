<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="header.jsp" />
<title><s:message code="user.home" /> | Book Co., Ltd</title>
<!-- BEGIN MAIN -->
<main class="main">
	
	<section id="billboard">

	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<button class="prev slick-arrow">
					<i class="icon icon-arrow-left"></i>
				</button>

				<div class="main-slider pattern-overlay">
					<div class="slider-item">
						<div class="banner-content">
							<h2 class="banner-title">Life of the Wild</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eu feugiat amet, libero ipsum enim pharetra hac. Urna commodo, lacus ut magna velit eleifend. Amet, quis urna, a eu.</p>
							<div class="btn-wrap">
								<a href="#" class="btn btn-outline-accent btn-accent-arrow">Read More<i class="icon icon-ns-arrow-right"></i></a>
							</div>
						</div><!--banner-content--> 
						<img src="assets/images/main-banner1.jpg" alt="banner" class="banner-image">
					</div><!--slider-item-->

				</div><!--slider-->
					
				<button class="next slick-arrow">
					<i class="icon icon-arrow-right"></i>
				</button>
				
			</div>
		</div>
	</div>
	
</section>
	
	<!-- BEGIN BEST SELLERS -->
	<section class="main-block wrapper">
		<div class="main-block__top">
			<span class="main-block__subtitle category-subtitle">
				<s:message code="user.topp" />
			</span>
			<h3 class="main-block__title">
				<s:message code="user.bestsellat" />
				BookSaw
			</h3>
		</div>
		<div class="catalog-slider js-catalog loaded">
			<div class="catalog-slider__list-wrap">
				<div class="catalog-slider__list js-catalog-carousel">
					<c:forEach var="item" items="${items.content}">
						<article class="short-item">
							<div class="short-item__all">
								<a class="short-item__image-bg" href="detail/${item.id}">
									<c:if test="${item.img == null}">
										<img class="short-item__image" data-lazy="img/products/noavt.png">
									</c:if>
									<c:if test="${item.img != null}">
										<img class="short-item__image" data-lazy="img/products/${item.img}">
									</c:if>
								</a>
								<div class="short-item__top">
									<div class="short-item__cols">
										<div class="short-item__col">
											<span class="item-tag item-tag_red">
												<s:message code="user.sale" />
											</span>
											<span class="item-tag item-tag_green">
												<s:message code="user.newp" />
											</span>
										</div>
										<div class="short-item__col">
											<button class="heart-button js-toggle-active"></button>
										</div>
									</div>
								</div>
								<h4 class="short-item__title">
									<a class="short-item__link" href="detail/${item.id}">${item.name}</a>
								</h4>
								<span class="short-item__price">
									<fmt:formatNumber pattern="#,###,###.## $" type="currency" value="${item.price}" currencySymbol="$" />
								</span>
							</div>
						</article>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>
	<!-- BEST SELLERS END -->
	<!-- BEGIN COLLECTION -->
	<div class="brands-block wrapper">
		<ul class="brands">
			<li class="brands__item">
				<a class="brands__link" href="#">
					<span class="brands__cell">
						<img class="brands__logo brands__logo_1" data-lazy="assets/images/client-image1.png">
					</span>
				</a>
			</li>
			<li class="brands__item">
				<a class="brands__link" href="#">
					<span class="brands__cell">
						<img class="brands__logo brands__logo_2" data-lazy="assets/images/client-image2.png">
					</span>
				</a>
			</li>
			<li class="brands__item">
				<a class="brands__link" href="#">
					<span class="brands__cell">
						<img class="brands__logo brands__logo_3" data-lazy="assets/images/client-image3.png">
					</span>
				</a>
			</li>
			<li class="brands__item">
				<a class="brands__link" href="#">
					<span class="brands__cell">
						<img class="brands__logo brands__logo_4" data-lazy="assets/images/client-image4.png">
					</span>
				</a>
			</li>
			<li class="brands__item">
				<a class="brands__link" href="#">
					<span class="brands__cell">
						<img class="brands__logo brands__logo_5" data-lazy="assets/images/client-image5.png">
					</span>
				</a>
			</li>
		</ul>
	</div>
	<!-- COLLECTION END -->
	<!-- BEGIN PRODUCTS -->
	<section class="main-block wrapper">
		<div class="main-block__top">
			<span class="main-block__subtitle category-subtitle">
				<s:message code="user.newc" />
			</span>
			<h3 class="main-block__title">
				<s:message code="user.fprod" />
			</h3>
		</div>
		<div class="products-nav tabs-nav js-line">
			<ul class="tabs-nav__list">
				<li class="tabs-nav__item js-tabs-item js-line-item active">
					<a class="tabs-nav__link js-line-link js-tabs-link" href="#products-1">
						<s:message code="user.all" />
					</a>
				</li>
				<li class="tabs-nav__item js-line-item js-tabs-item">
					<a class="tabs-nav__link js-line-link js-tabs-link" href="#products-2">
						Business
					</a>
				</li>
				<li class="tabs-nav__item js-line-item js-tabs-item">
					<a class="tabs-nav__link js-line-link js-tabs-link" href="#products-3">
						Technology
					</a>
				</li>
				<li class="tabs-nav__item js-line-item js-tabs-item">
					<a class="tabs-nav__link js-line-link js-tabs-link" href="#products-4">
						Romatic
					</a>
				</li>
				<li class="tabs-nav__item js-line-item js-tabs-item">
					<a class="tabs-nav__link js-line-link js-tabs-link" href="#products-5">
						Fiction
					</a>
				</li>
			</ul>
			<div class="tabs-nav__line js-line-element"></div>
		</div>
		<!-- BEGIN TAB 1 -->
		<div class="product-tab js-tabs-content active" id="products-1">
			<div class="main-catalog">
				<div class="main-catalog__list">
					<c:forEach var="item" items="${items.content}">
						<article class="short-item">
							<div class="short-item__all">
								<a class="short-item__image-bg" href="detail/${item.id}">
									<c:if test="${item.img == null}">
										<img class="short-item__image" data-lazy="img/products/noavt.png">
									</c:if>
									<c:if test="${item.img != null}">
										<img class="short-item__image" data-lazy="img/products/${item.img}">
									</c:if>
								</a>
								<div class="short-item__top">
									<div class="short-item__cols">
										<div class="short-item__col">
											<span class="item-tag item-tag_green">
												<s:message code="user.newp" />
											</span>
										</div>
										<div class="short-item__col">
											<button class="heart-button js-toggle-active"></button>
										</div>
									</div>
								</div>
								<h4 class="short-item__title">
									<a class="short-item__link" href="detail/${item.id}">${item.name}</a>
								</h4>
								<span class="short-item__price">
									<fmt:formatNumber pattern="#,###,###.## $" type="currency" value="${item.price}" currencySymbol="$" />
								</span>
							</div>
						</article>
					</c:forEach>
				</div>
				<img class="main-catalog__bg" data-lazy="assets/img/svg/vector-catalog.svg">
			</div>
		</div>
		<!-- TAB 1 END -->
		<!-- BEGIN TAB 2 -->
		<div class="product-tab js-tabs-content" id="products-2">
			<div class="main-catalog">
				<div class="main-catalog__list"></div>
				<img class="main-catalog__bg" data-lazy="assets/img/svg/vector-catalog.svg">
			</div>
		</div>
		<!-- TAB 2 END -->
		<!-- BEGIN TAB 3 -->
		<div class="product-tab js-tabs-content" id="products-3">
			<div class="main-catalog">
				<div class="main-catalog__list"></div>
				<img class="main-catalog__bg" data-lazy="assets/img/svg/vector-catalog.svg">
			</div>
		</div>
		<!-- TAB 3 END -->
		<!-- BEGIN TAB 4 -->
		<div class="product-tab js-tabs-content" id="products-4">
			<div class="main-catalog">
				<div class="main-catalog__list"></div>
				<img class="main-catalog__bg" data-lazy="assets/img/svg/vector-catalog.svg">
			</div>
		</div>
		<!-- TAB 4 END -->
		<!-- BEGIN TAB 5 -->
		<div class="product-tab js-tabs-content" id="products-5">
			<div class="main-catalog">
				<div class="main-catalog__list"></div>
				<img class="main-catalog__bg" data-lazy="assets/img/svg/vector-catalog.svg">
			</div>
		</div>
		<!-- TAB 5 END -->
		<div class="load-more">
			<a class="button" href="shop">
				<span class="button__text">
					<s:message code="user.seeall" />
				</span>
			</a>
		</div>
	</section>
	<!-- PRODUCTS END -->
	<!-- BEGIN ADVANTAGES -->
	<div class="advantages wrapper">
		<div class="advantages__list">
			<article class="advantage">
				<div class="advantage__content">
					<div class="advantage__icon-wrap">
						<img class="advantage__icon" data-lazy="assets/img/svg/advantages-icon_1.svg">
					</div>
					<h4 class="advantage__title">
						<s:message code="user.freeship" />
					</h4>
					<div class="advantage__line"></div>
					<p class="advantage__text">Non aliqua reprehenderit reprehenderit culpa laboris nulla minim anim
						velit</p>
				</div>
				<img class="advantage__bg" data-lazy="assets/img/svg/vector-advantages.svg">
			</article>
			<article class="advantage">
				<div class="advantage__content">
					<div class="advantage__icon-wrap">
						<img class="advantage__icon" data-lazy="assets/img/svg/advantages-icon_2.svg">
					</div>
					<h4 class="advantage__title">
						<s:message code="user.service" />
					</h4>
					<div class="advantage__line"></div>
					<p class="advantage__text">Non aliqua reprehenderit reprehenderit culpa laboris nulla minim anim
						velit</p>
				</div>
				<img class="advantage__bg" data-lazy="assets/img/svg/vector-advantages.svg">
			</article>
			<article class="advantage">
				<div class="advantage__content">
					<div class="advantage__icon-wrap">
						<img class="advantage__icon" data-lazy="assets/img/svg/advantages-icon_3.svg">
					</div>
					<h4 class="advantage__title">
						<s:message code="user.moneyback" />
					</h4>
					<div class="advantage__line"></div>
					<p class="advantage__text">Non aliqua reprehenderit reprehenderit culpa laboris nulla minim anim
						velit</p>
				</div>
				<img class="advantage__bg" data-lazy="assets/img/svg/vector-advantages.svg">
			</article>
		</div>
	</div>
	<!-- ADVANTAGES END -->
<section id="download-app" class="leaf-pattern-overlay">
	<div class="corner-pattern-overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<div class="row">

						<div class="col-md-5">
							<figure>
								<img src="assets/images/device.png" alt="phone" class="single-image">
							</figure>
						</div>

						<div class="col-md-7">
							<div class="app-info">
								<h2 class="section-title divider">Download our app now !</h2>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis sed ptibus liberolectus nonet psryroin. Amet sed lorem posuere sit iaculis amet, ac urna. Adipiscing fames semper erat ac in suspendisse iaculis.</p>
								<div class="google-app">
									<img src="assets/images/google-play.jpg" alt="google play">
									<img src="assets/images/app-store.jpg" alt="app store">
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
</section>
	
</main>
<!-- MAIN END -->
<jsp:include page="footer.jsp" />