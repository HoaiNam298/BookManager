<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="header.jsp"/>
<title><s:message code="user.login"/> | Book Co., Ltd</title>
<!-- BEGIN MAIN -->
<main class="main">              
    

    <!-- BEGIN LOGIN -->
    <div class="login-page">
        <div class="login-page__all">
            <div class="login-page__main">
                <form action="login" method="post">
                    <div class="login-form">
                        <div class="login-form__top">
                            <h2 class="login-form__title"><s:message code="user.logintitle"/></h2>
                            <p class="login-form__text"><s:message code="user.logintext"/></p>
                        </div>
						<c:if test="${not empty message}">
							<div style="margin-top:20px;color:red;text-align:center">${message}</div>
						</c:if>
	                    <span class="login-form__label"><s:message code="user.username"/></span>
                        <input class="text-input" type="text" name="username" placeholder="<s:message code="user.userph"/>" required>
	                    <span class="login-form__label"><s:message code="user.password"/></span>
                        <input class="text-input" type="password" name="password" placeholder="<s:message code="user.passph"/>" required>
                        <div class="login-form__bottom">
                            <div class="login-form__col">
                                <div class="login-form__checkbox checkbox">
                                    <label class="checkbox__label">
                                        <input class="checkbox__input" type="checkbox" name="remember" value="true">
                                        <span class="checkbox__icon"></span>
                                        <span class="checkbox__text"><s:message code="user.remember"/></span>
                                    </label>
                                </div>                                        
                            </div>
                            <div class="login-form__col">
                                <span class="login-form__small-text">
                                    <a href="forgot-password"><s:message code="user.forgot"/></a>
                                </span>
                            </div>                                    
                        </div>
                        <button class="login-form__button button" type="submit">
                            <span class="button__text"><s:message code="user.login1"/></span>
                        </button>
		                <div class="login-form__small-text-center">
	                        <s:message code="user.loginreg"/> <a href="register"><s:message code="user.register1"/></a>
		                </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- LOGIN END -->
</main>
<!-- MAIN END -->
<jsp:include page="footer.jsp"/>