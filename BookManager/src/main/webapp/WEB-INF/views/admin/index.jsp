<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="header.jsp" />
<title><s:message code="admin.dashboard" /> | Molle Co., Ltd</title>
<div class="page-content-wrapper">
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-12">
				<div class="page-title-box">
					<div class="btn-group float-right">
						<ol class="breadcrumb hide-phone p-0 m-0">
							<li class="breadcrumb-item">
								<a href="#">Admin</a>
							</li>
							<li class="breadcrumb-item active">
								<s:message code="admin.dashboard" />
							</li>
						</ol>
					</div>
					<h4 class="page-title">
						<s:message code="admin.dashboard" />
					</h4>
				</div>
			</div>
		</div>
		<!-- end page title end breadcrumb -->
		<div class="row">
			<div class="col-lg-12">
				<div class="row">
					<div class="col-lg-3">
						<div class="card">
							<div class="card-body">
								<div class="icon-contain">
									<div class="row">
										<div class="col-2 align-self-center">
											<i class="fas fa-boxes text-gradient-danger"></i>
										</div>
										<div class="col-10 text-right">
											<h5 class="mt-0 mb-1">${product}</h5>
											<p class="mb-0 font-12 text-muted">
												<s:message code="admin.product" />
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="card">
							<div class="card-body justify-content-center">
								<div class="icon-contain">
									<div class="row">
										<div class="col-2 align-self-center">
											<i class="fas fa-archive text-gradient-danger"></i>
										</div>
										<div class="col-10 text-right">
											<h5 class="mt-0 mb-1">${category}</h5>
											<p class="mb-0 font-12 text-muted">
												<s:message code="admin.category" />
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="card">
							<div class="card-body">
								<div class="icon-contain">
									<div class="row">
										<div class="col-2 align-self-center">
											<i class="fas fa-user text-gradient-danger"></i>
										</div>
										<div class="col-10 text-right">
											<h5 class="mt-0 mb-1">${account}</h5>
											<p class="mb-0 font-12 text-muted">
												<s:message code="admin.account" />
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="card ">
							<div class="card-body">
								<div class="icon-contain">
									<div class="row">
										<div class="col-2 align-self-center">
											<i class="far fa-gem text-gradient-danger"></i>
										</div>
										<div class="col-10 text-right">
											<h5 class="mt-0 mb-1">
												<fmt:formatNumber type="currency" value="${sum}" currencySymbol="$" />
											</h5>
											<p class="mb-0 font-12 text-muted">
												<s:message code="admin.totalrevenue" />
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-xl-4">
				<div class="card">
					<div class="card-body">
						<h5 class="header-title pb-3 mt-0">
							<s:message code="admin.newcustomer" />
						</h5>
						<div class="table-responsive boxscroll" style="overflow: hidden; outline: none;">
							<table class="table mb-0">
								<tbody>
									<c:forEach var="account" items="${items}">
										<tr>
											<td class="border-top-0">
												<div class="media">
													<img src="img/accounts/${account.img}" class="thumb-md rounded-circle">
													<div class="media-body ml-2">
														<p class="mb-0">${account.fullname}</p>
														<span class="font-12 text-muted">${account.username}</span>
													</div>
												</div>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>

					</div>
				</div>
			</div>
			<div class="col-xl-4">
				<div class="card">
					<div class="card-body">
						<h5 class="header-title pb-3 mt-0">
							<s:message code="admin.loyalcustomer" />
						</h5>
						<div class="table-responsive boxscroll" style="overflow: hidden; outline: none;">
							<table class="table mb-0">
								<tbody>
									<c:forEach var="account" items="${items}">
										<tr>
											<td class="border-top-0">
												<div class="media">
													<img src="img/accounts/${account.img}" class="thumb-md rounded-circle">
													<div class="media-body ml-2">
														<p class="mb-0">${account.fullname}</p>
														<span class="font-12 text-muted">${account.username}</span>
													</div>
												</div>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>

					</div>
				</div>
			</div>
			<div class="col-xl-4 col-lg-6">
				<div class="card timeline-card">
					<div class="card-body p-0">
						<div class="bg-gradient2 text-white text-center py-3 mb-4">
							<p class="mb-0 font-18">
								<i class="mdi mdi-clock-outline font-20"></i> This Week's Activity
							</p>
						</div>
					</div>
					<div class="card-body boxscroll">
						<div class="timeline">
							<div class="entry">
								<div class="title">
									<h6>10/ Oct</h6>
								</div>
								<div class="body">
									<p>
										Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is not simply
										random text...
										<a href="#" class="text-primary"> Read More</a>
									</p>
								</div>
							</div>
							<div class="entry">
								<div class="title">
									<h6>9/ Oct</h6>
								</div>
								<div class="body">
									<p>
										Lorem Ipsum is simply dummy text of the printing and typesetting industry...
										<a href="#" class="text-primary"> Read More</a>
									</p>
								</div>
							</div>
							<div class="entry">
								<div class="title">
									<h6>8/ Oct</h6>
								</div>
								<div class="body">
									<p>
										Lorem Ipsum is simply dummy text of the printing and typesetting industry...
										<a href="#" class="text-primary"> Read More</a>
									</p>
								</div>
							</div>
							<div class="entry">
								<div class="title">
									<h6>7/ Oct</h6>
								</div>
								<div class="body">
									<p>
										Lorem Ipsum is simply dummy text of the printing and typesetting industry...
										<a href="#" class="text-primary"> Read More</a>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- container -->
</div>
<!-- Page content Wrapper -->
<jsp:include page="footer.jsp" />