<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="header.jsp" />
<title><s:message code="admin.orderlist" /> | Molle Co., Ltd</title>
<div class="page-content-wrapper">
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-12">
				<div class="page-title-box">
					<div class="btn-group float-right">
						<ol class="breadcrumb hide-phone p-0 m-0">
							<li class="breadcrumb-item">
								<a href="admin/índex">
									<s:message code="admin.dashboard" />
								</a>
							</li>
							<li class="breadcrumb-item active">
								<s:message code="admin.orderlist" />
							</li>
						</ol>
					</div>
					<h4 class="page-title">
						<s:message code="admin.orderlist" />
					</h4>
				</div>
			</div>
		</div>
		<!-- end page title end breadcrumb -->
		<div class="row">
			<div class="col-12">
				<div class="card">
					<div class="card-body">
						<table id="datatable-buttons" class="table table-striped table-bordered dt-responsive nowrap"
							style="border-collapse: collapse; border-spacing: 0; width: 100%;">
							<thead>
								<tr>
									<th>
										<s:message code="admin.id" />
									</th>
									<th>
										<s:message code="admin.address" />
									</th>
									<th>
										<s:message code="admin.phone" />
									</th>
									<th>
										<s:message code="admin.date" />
									</th>
									<th>
										<s:message code="admin.username" />
									</th>
									<th>#</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${items}">
									<tr>
										<td>${item.id}</td>
										<td>${item.address}</td>
										<td>${item.phone}</td>
										<td>
											<fmt:formatDate value="${item.createDate}" pattern="dd/MM/yyyy" />
										</td>
										<td>${item.account.username}</td>
										<td>
											<div class="btn-group btn-group-sm">
												<a href="admin/orderdetail/${item.id}" class="btn btn-sm btn-success text-white">
													<span class="ti-eye"></span>
												</a>
											</div>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- end col -->
		</div>
		<!-- end row -->
	</div>
	<!-- container -->
</div>
<!-- Page content Wrapper -->
<jsp:include page="footer.jsp" />