<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="header.jsp" />
<title><s:message code="admin.ordermanage" /> | Molle Co., Ltd</title>
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
								<s:message code="admin.ordermanage" />
							</li>
						</ol>
					</div>
					<h4 class="page-title">
						<s:message code="admin.ordermanage" />
					</h4>
				</div>
			</div>
		</div>
		<!-- end page title end breadcrumb -->
		<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
			<li class="nav-item">
				<a class="nav-link active" id="edited-tab" data-toggle="pill" href="#edited" role="tab"
					aria-controls="edited" aria-selected="true">
					<s:message code="admin.orderdetail" />
				</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="admin/order">
					<s:message code="admin.backorder" />
				</a>
			</li>
		</ul>
		<div class="tab-content" id="pills-tabContent">
			<div class="tab-pane fade show active" id="edited" role="tabpanel" aria-labelledby="edited-tab">
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<table id="datatable-buttons" class="table table-striped table-bordered dt-responsive nowrap"
									style="border-collapse: collapse; border-spacing: 0; width: 100%;">
									<thead>
										<tr>
											<th>
												<s:message code="admin.nameproduct" />
											</th>
											<th>
												<s:message code="admin.price" />
											</th>
											<th>
												<s:message code="admin.quantity" />
											</th>
											<th>
												<s:message code="admin.provisional" />
											</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="item" items="${lists}">
											<tr>
												<td>
													<b>${item.product.name}</b>
												</td>
												<td>
													<fmt:formatNumber pattern="#,###,###.## $" type="currency" value="${item.price}"
														currencySymbol="$" />
												</td>
												<td>
													<b>${item.quantity}</b>
												</td>
												<td>
													<fmt:formatNumber pattern="#,###,###.## $" type="currency" value="${item.price * item.quantity}"
														currencySymbol="$" />
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						<div class="card card-primary">
							<div class="card-body">
								<h4 class="card-title text-white font-20 mt-0 mb-0">
									<s:message code="admin.totalbill" />
									:
									<fmt:formatNumber pattern="#,###,###.## $" type="currency" value="${total}" currencySymbol="$" />
								</h4>
							</div>
						</div>
					</div>
					<!-- end col -->
				</div>
				<!-- end row -->
			</div>
		</div>
	</div>
	<!-- container -->
</div>
<!-- Page content Wrapper -->
<jsp:include page="footer.jsp" />