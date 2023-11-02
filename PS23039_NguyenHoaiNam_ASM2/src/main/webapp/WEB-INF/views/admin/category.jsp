<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<jsp:include page="header.jsp" />
<title><s:message code="admin.categorymanage" /> | Molle Co., Ltd</title>
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
								<s:message code="admin.categorymanage" />
							</li>
						</ol>
					</div>
					<h4 class="page-title">
						<s:message code="admin.categorymanage" />
					</h4>
				</div>
			</div>
		</div>
		<!-- end page title end breadcrumb -->
		<div class="row">
			<div class="col-12">
				<div class="card">
					<div class="card-body">
						<form:form action="admin/category" modelAttribute="item">
							<div class="row">
								<c:if test="${not empty message}">
									<div class="col-xl-12 mx-3 alert bg-gradient1 text-white" style="flex: auto;">${message}</div>
								</c:if>
								<div class="col-xl-6">
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">
											<s:message code="admin.id" />
										</label>
										<div class="col-sm-10">
											<form:input type="number" path="id" cssClass="form-control" placeholder="123" disabled="true" />
										</div>
									</div>
									<div class="form-group row">
										<label for="example-password-input" class="col-sm-2 col-form-label">
											<s:message code="admin.namecategory" />
										</label>
										<div class="col-sm-10">
											<form:input type="text" path="name" cssClass="form-control" placeholder="Business" />
											<span>
												<form:errors path="name" cssClass="error" />
											</span>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xl-12">
									<div class="input-group-append mt-3">
										<button class="btn btn-primary ml-3" formaction="admin/category/create">
											<s:message code="admin.create" />
										</button>
										<button class="btn btn-primary ml-3" formaction="admin/category/update">
											<s:message code="admin.update" />
										</button>
										<button class="btn btn-primary ml-3" type="button" data-toggle="modal" data-target="#delete">
											<s:message code="admin.delete" />
										</button>
										<button class="btn btn-primary ml-3" formaction="admin/category">
											<s:message code="admin.reset" />
										</button>
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
										<s:message code="admin.id" />
									</th>
									<th>
										<s:message code="admin.namecategory" />
									</th>
									<th>#</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${items}">
									<tr>
										<td>${item.id}</td>
										<td>${item.name}</td>
										<td>
											<a href="admin/category/edit/${item.id}" class="btn btn-sm btn-success text-white">
												<span class="ti-pencil"></span>
											</a>
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
		<!-- DELETE CATEGORY -->
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
						<s:message code="admin.deletesuretext1" />
					</div>
					<div class="modal-footer">
						<a href="admin/category/delete/${item.id}" class="btn btn-primary">
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