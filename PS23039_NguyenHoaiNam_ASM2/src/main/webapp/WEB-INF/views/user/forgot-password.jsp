<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="header.jsp"/>
<title><s:message code="user.forgottitle"/> | Book Co., Ltd</title>
<!-- BEGIN MAIN -->
<main class="main">
    

    <!-- BEGIN LOGIN -->
    <div class="login-page">
        <div class="login-page__all">
            <div class="login-page__main">
                <form action="forgot-password" method="post">
                    <div class="login-form">
                        <div class="login-form__top">
                            <h2 class="login-form__title"><s:message code="user.forgottitle"/></h2>
                            <p class="login-form__text"><s:message code="user.forgottext"/></p>
                        </div>
	                    <span class="login-form__label"><s:message code="user.email"/></span>
                        <input class="text-input" type="text" name="email" placeholder="<s:message code="user.emailph"/>" required>
                        <button class="login-form__button button" type="submit">
                            <span class="button__text"><s:message code="user.submit"/></span>
                        </button>
						<c:if test="${not empty message}">
							<div style="margin-top:20px;color:red;text-align:center">${message}</div>
						</c:if>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- LOGIN END -->
</main>
<!-- MAIN END -->
<jsp:include page="footer.jsp" />