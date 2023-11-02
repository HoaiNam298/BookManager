<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="header.jsp" />
<title><s:message code="admin.accountmanage" /> | Molle Co., Ltd</title>
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
								<s:message code="admin.accountmanage" />
							</li>
						</ol>
					</div>
					<h4 class="page-title">
						<s:message code="admin.accountmanage" />
					</h4>
				</div>
			</div>
		</div>
		<!-- end page title end breadcrumb -->
		<div class="row">
			<div class="col-12">
				<div class="card">
					<div class="card-body">
						<form:form action="admin/account" modelAttribute="item" enctype="multipart/form-data">
							<div class="row">
								<c:if test="${not empty message}">
									<div class="col-xl-12 mx-3 alert bg-gradient1 text-white" style="flex: auto;">${message}</div>
								</c:if>
								<div class="col-xl-6">
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">
											<s:message code="admin.image" />
										</label>
										<div class="col-sm-10">
											<input type="file" name="img" class="custom-file-input" />
											<label class="custom-file-label mx-3">Choose file</label>
										</div>
									</div>
								</div>
								<div class="col-xl-6"></div>
								<div class="col-xl-6">
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">
											<s:message code="admin.username" />
										</label>
										<div class="col-sm-10">
											<form:input type="text" path="username" cssClass="form-control" placeholder="username" />
											<span>
												<form:errors path="username" cssClass="error" />
											</span>
										</div>
									</div>
									<div class="form-group row">
										<label for="example-password-input" class="col-sm-2 col-form-label">
											<s:message code="admin.password" />
										</label>
										<div class="col-sm-10">
											<form:input type="password" path="password" cssClass="form-control" placeholder="•••••••" />
											<span>
												<form:errors path="password" cssClass="error" />
											</span>
										</div>
									</div>
									<div class="form-group row">
										<label for="example-text-input" class="col-sm-2 col-form-label">
											<s:message code="admin.fullname" />
										</label>
										<div class="col-sm-10">
											<form:input type="text" path="fullname" cssClass="form-control" placeholder="Nguyễn Văn A" />
											<span>
												<form:errors path="fullname" cssClass="error" />
											</span>
										</div>
									</div>
								</div>
								<div class="col-xl-6">
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">
											<s:message code="admin.email" />
										</label>
										<div class="col-sm-10">
											<form:input type="email" path="email" cssClass="form-control" placeholder="abc@gmail.com" />
											<span>
												<form:errors path="email" cssClass="error" />
											</span>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">
											<s:message code="admin.permission" />
										</label>
										<div class="form-check-inline my-2">
											<form:radiobuttons items="${admins}" path="admin" cssClass="form-check-input ml-3" />
											<span>
												<form:errors path="admin" cssClass="error" />
											</span>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">
											<s:message code="admin.active" />
										</label>
										<div class="form-check-inline my-2">
											<form:radiobuttons items="${activates}" path="activated" cssClass="form-check-input ml-3" />
											<span>
												<form:errors path="activated" cssClass="error" />
											</span>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xl-12">
										<div class="input-group-append mt-3">
											<button class="btn btn-primary ml-3" formaction="admin/account/create">
												<s:message code="admin.create" />
											</button>
											<button class="btn btn-primary ml-3" formaction="admin/account/update">
												<s:message code="admin.update" />
											</button>
											<button class="btn btn-primary ml-3" type="button" data-toggle="modal" data-target="#delete">
												<s:message code="admin.delete" />
											</button>
											<button class="btn btn-primary ml-3" formaction="admin/account">
												<s:message code="admin.reset" />
											</button>
										</div>
									</div>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>
			<!-- end col -->
		</div>
		<!-- end row -->
		<div class="row">
			<div class="col-12 px-0">
				<div class="card">
					<div class="card-body">
						<table id="datatable-buttons" class="table table-striped table-bordered dt-responsive nowrap"
							style="border-collapse: collapse; border-spacing: 0; width: 100%;">
							<thead>
								<tr>
									<th>
										<s:message code="admin.username" />
									</th>
									<th>
										<s:message code="admin.password" />
									</th>
									<th>
										<s:message code="admin.fullname" />
									</th>
									<th>
										<s:message code="admin.email" />
									</th>
									<th>
										<s:message code="admin.permission" />
									</th>
									<th>
										<s:message code="admin.active" />
									</th>
									<th>
										<s:message code="admin.image" />
									</th>
									<th>#</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${items}">
									<tr>
										<td>${item.username}</td>
										<td>${item.password}</td>
										<td>${item.fullname}</td>
										<td>${item.email}</td>
										<td>${item.admin ? 'Admin' : 'User'}</td>
										<td>${item.activated ? 'Yes' : 'No'}</td>
										<td class="text-center">
											<c:if test="${item.img == null}">
												<img class="w-50" src="img/accounts/noavt.png">
											</c:if>
											<c:if test="${item.img != null}">
												<img class="w-50" src="img/accounts/${item.img}">
											</c:if>
										</td>
										<td>
											<div class="btn-group btn-group-sm">
												<a href="admin/account/edit/${item.username}" class="btn btn-sm btn-success text-white">
													<span class="ti-pencil"></span>
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
		<!-- DELETE USER -->
		<div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="deleteLabel"
			aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="deleteLabel">
							<s:message code="admin.deletesure" />
						</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<s:message code="admin.deletesuretext" />
					</div>
					<div class="modal-footer">
						<a href="admin/account/delete/${item.username}" class="btn btn-primary">
							<s:message code="admin.deleteyes" />
						</a>
						<a class="btn btn-secondary text-white" data-dismiss="modal">
							<s:message code="admin.deleteno" />
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- container -->
</div>
<!-- Page content Wrapper -->
<jsp:include page="footer.jsp" />