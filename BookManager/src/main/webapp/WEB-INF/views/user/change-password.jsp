<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="header.jsp"/>
<title><s:message code="user.changepass"/> | Book Co., Ltd</title>
<!-- BEGIN MAIN -->
<main class="main">
    

    <!-- BEGIN CHANGE PASSWORD -->
    
    <div class="login-page">
        <div class="login-page__all">
            <div class="login-page__main">
                <form action="change-password" method="post">
                    <div class="login-form">
                        <div class="login-form__top">
                            <h2 class="login-form__title"><s:message code="user.changepasstitle"/></h2>
                        </div>
	                    <span class="login-form__label"><s:message code="user.password"/></span>
                        <input class="text-input" type="password" name="password" placeholder="<s:message code="user.passph"/>" required>
	                    <span class="login-form__label"><s:message code="user.newpass"/></span>
                        <input class="text-input" type="password" name="newpassword" placeholder="<s:message code="user.npassph"/>" required>
                        <button class="login-form__button button" type="submit">
                            <span class="button__text"><s:message code="user.submit"/></span>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- CHANGE PASSWORD END -->
    <script>
	    function checkPassword(password) {
	        if (password.value != $("#password").val()) {
	        	password.setCustomValidity("<s:message code="user.validpass"/>");
	        } else {
	        	password.setCustomValidity("");
	        }
	    }
    </script>
</main>
<!-- MAIN END -->
<jsp:include page="footer.jsp" />