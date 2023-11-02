<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="header.jsp" />
<title><s:message code="admin.404" /> | Molle Co., Ltd</title>
<!-- Begin page -->
<div class="accountbg"></div>
<div class="wrapper-page">
	<div class="card">
		<div class="card-block">
			<div class="ex-page-content text-center">
				<h1 class=""><s:message code="admin.404" />!</h1>
				<h3 class="">Sorry, page not found</h3>
				<br>
				<a class="btn btn-danger mb-5 waves-effect waves-light" href="index">Back to Dashboard</a>
			</div>

		</div>
	</div>
</div>
<!-- Page content Wrapper -->
<jsp:include page="footer.jsp" />