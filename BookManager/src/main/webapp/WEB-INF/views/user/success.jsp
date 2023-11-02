<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="header.jsp"/>
<title><s:message code="user.finish"/> | Book Co., Ltd</title>
<!-- BEGIN MAIN -->
<main class="main">

    <!-- BEGIN CHECKOUT -->
    <div class="checkout-page wrapper">
        <div class="checkout-nav">
            <div class="checkout-nav__item active">
                <span class="checkout-nav__text"><s:message code="user.orderdetail"/></span>
            </div>
            <div class="checkout-nav__item active current">
                <span class="checkout-nav__text"><s:message code="user.finish"/></span>
            </div>
        </div>
        <div class="checkout-page__cols">
            <!-- BEGIN LEFT COLUMN -->
            <div class="checkout-page__left">
                <section class="thanks">
                    <div class="thanks__top">
                        <h2 class="thanks__title"><s:message code="user.finishtitle"/></h2>
                        <p class="thanks__top-text"><s:message code="user.finishtext"/></p>
                    </div>
                    <div class="thanks__top-text"><s:message code="user.countdown"/> <span id="time"></span></div>
                </section>

            </div>
            <!-- LEFT COLUMN END -->
        </div>
    </div>
    <!-- CHECKOUT END -->
</main>
<script>
var time = 5;
setInterval(function() {
  var seconds = time % 60;
  var minutes = (time - seconds) / 60;
  if (seconds.toString().length == 1) {
    seconds = "0" + seconds;
  }
  if (minutes.toString().length == 1) {
    minutes = "0" + minutes;
  }
  document.getElementById("time").innerHTML = minutes + ":" + seconds + "s";
  time--;
  if (time == 0) {
    window.location.href = "index";
  }
}, 1000);
</script>
<!-- MAIN END -->
<jsp:include page="footer.jsp" />