<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!-- BEGIN FOOTER -->
<footer class="footer">
    <div class="footer__main wrapper">
        <div class="footer__top">
            <div class="footer__cols">
                <div class="footer__col">
                    <a class="footer-logo logo">
                        <img class="logo__image" src="assets/images/main-logo.png">
                    </a>
                    <div class="footer-line"></div>
                    <div class="socials">
                        <span class="socials__text"><s:message code="user.social1"/>:</span>
                        <ul class="socials__list">
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
                <div class="footer__col" style="max-width:385px;">
                    <nav class="footer-nav">
                        <div class="footer-nav__col">
                            <span class="footer-title"><s:message code="user.about"/></span>
                            <ul class="footer-nav__list">
                                <li class="footer-nav__item">
                                    <a class="footer-nav__link"><s:message code="user.collections"/></a>
                                </li>
                                <li class="footer-nav__item">
                                    <a class="footer-nav__link"><s:message code="user.contact"/></a>
                                </li>
                                <li class="footer-nav__item">
                                    <a class="footer-nav__link"><s:message code="user.aboutus"/></a>
                                </li>
                            </ul>
                        </div>
                        <div class="footer-nav__col">
                            <span class="footer-title"><s:message code="user.links"/></span>
                            <ul class="footer-nav__list">
                                <li class="footer-nav__item">
                                    <a class="footer-nav__link"><s:message code="user.shipping"/></a>
                                </li>
                                <li class="footer-nav__item">
                                    <a class="footer-nav__link"><s:message code="user.privacy"/></a>
                                </li>
                                <li class="footer-nav__item">
                                    <a class="footer-nav__link"><s:message code="user.terms"/></a>
                                </li>
                                <li class="footer-nav__item">
                                    <a class="footer-nav__link"><s:message code="user.faqs"/></a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
                <div class="footer__col" style="width:30%;">
                    <span class="footer-title"><s:message code="user.news"/></span>
                    <span class="footer-description"><s:message code="user.newstext"/></span>
                    <form>
                        <div class="subscription">
                            <input class="subscription__input" type="email" placeholder="<s:message code="user.emailph"/>">
                            <button class="subscription__button" type="submit"></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="footer__bottom">
            <div class="footer__cols">
                <div class="footer__left">
                    <span class="copyrights">Copyright &copy; 2022 by Mollee. All right reserved.</span>
                </div>
                <div class="footer__right">
                    <div class="payments">
                        <div class="payments__col">
                            <span class="payments__text"><s:message code="user.payment"/>:</span>
                        </div>
                        <div class="payments__col">
                            <ul class="payments__list">
                                <li class="payments__item">
                                    <img class="payments__image" data-lazy="assets/img/payment/payment_1.png">
                                </li>
                                <li class="payments__item">
                                    <img class="payments__image" data-lazy="assets/img/payment/payment_2.png">
                                </li>
                                <li class="payments__item">
                                    <img class="payments__image" data-lazy="assets/img/payment/payment_3.png">
                                </li>
                                <li class="payments__item">
                                    <img class="payments__image" data-lazy="assets/img/payment/payment_4.png">
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- FOOTER END -->
</div>
<script src="assets/js/libs/jquery-3.3.1.slim.min.js"></script>
<script src="assets/js/components/bootstrap.min.js"></script>
<script src="assets/js/libs/jquery-3.5.1.min.js"></script>
<script src="assets/js/libs/jquery-migrate-1.4.1.min.js"></script>
<script src="assets/js/components/slick.js"></script>
<script src="assets/js/components/formstyler.js"></script>
<script src="assets/js/components/rating.js"></script>
<script src="assets/js/components/wnumb.js"></script>
<script src="assets/js/components/nouislider.js"></script>
<script src="assets/js/components/fancybox.js"></script>
<script src="assets/js/components/syotimer.js"></script>
<script src="assets/js/main.js"></script>
</body>
</html>