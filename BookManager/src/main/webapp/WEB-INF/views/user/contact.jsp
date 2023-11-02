<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="header.jsp"/>
<title><s:message code="user.contact"/> | Book Co., Ltd</title>
<!-- BEGIN MAIN -->
<main class="main">
    

    <!-- BEGIN CONTACTS -->
    <div class="contacts-page">
        
        <div class="contacts-page__map">
            <div class="map" id="map"></div>
        </div>
    </div>
    <!-- CONTACTS END -->
</main>
<!-- MAIN END -->
<jsp:include page="footer.jsp"/>