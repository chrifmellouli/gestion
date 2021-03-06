<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Sales Management application - Edit a product</title>
<!-- Custom fonts for this template -->
<link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!-- Custom styles for this template -->
<link href="/css/sb-admin-2.min.css" rel="stylesheet">
<!-- Custom styles for this page -->
<link href="/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
</head>
<body id="page-top">
	<!-- Page Wrapper -->
	<div id="wrapper">
		<!-- Sidebar -->
		<%@ include file="includes/sidebar.jsp"%>
		<!-- End of Sidebar -->
		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- Main Content -->
			<div id="content">
				<!-- Topbar -->
				<%@ include file="includes/topbar.jsp"%>
				<!-- End of Topbar -->
				<!-- Begin Page Content -->
				<div class="container-fluid">
					<c:if test="${permission==2}">
						<!-- DataTales Example -->
						<div class="card shadow mb-4">
							<div class="card-header py-3"></div>
							<div class="card-body">
								<form action="/Products/${product.id}/editProduct/edit">
									<fieldset>
										<!-- Form Name -->
										<legend>Edit the Product ${product.code}</legend>
										<!-- hidden input-->
										<input id="id" name="id" type="hidden" value="${product.id}">
										<!-- Text input-->
										<div class="form-group">
											<label class="col-md-12 control-label" for="Code">Code</label>
											<div class="col-md-12">
												<input id="code" name="code" type="text"
													placeholder="code of product"
													class="form-control input-md-12" required="required"
													value="${product.code}">
												<div class="form-group">
													<c:forEach items="${errors}" var="error">
														<c:if
															test="${error.key.substring(0, error.key.length() - 1)=='code'}">
															<span class="help-block text-danger">${error.value}</span>
															<br>
														</c:if>
													</c:forEach>
												</div>
											</div>
										</div>
										<!-- Text input-->
										<div class="form-group">
											<label class="col-md-12 control-label" for="designation">Designation</label>
											<div class="col-md-12">
												<input id="designation" name="designation" type="text"
													placeholder="Designation of product"
													class="form-control input-md-12" required="required"
													value="${product.designation}">
												<div class="form-group">
													<c:forEach items="${errors}" var="error">
														<c:if
															test="${error.key.substring(0, error.key.length() - 1)=='designation'}">
															<span class="help-block text-danger">${error.value}</span>
															<br>
														</c:if>
													</c:forEach>
												</div>
											</div>
										</div>
										<!-- Text input-->
										<div class="form-group">
											<label class="col-md-12 control-label"
												for="priceExcludingVAT">Price excluding VAT</label>
											<div class="col-md-12">
												<input id="priceExcludingVAT" name="priceExcludingVAT"
													type="number" step="0.01" placeholder="Price excluding VAT"
													class="form-control input-md-12" required="required"
													value="${product.priceExcludingVAT}">
												<div class="form-group">
													<c:forEach items="${errors}" var="error">
														<c:if
															test="${error.key.substring(0, error.key.length() - 1)=='priceExcludingVAT'}">
															<span class="help-block text-danger">${error.value}</span>
															<br>
														</c:if>
													</c:forEach>
												</div>
											</div>
										</div>
										<!-- Text input-->
										<div class="form-group">
											<label class="col-md-12 control-label" for="vat">VAT</label>
											<div class="col-md-12">
												<input id="vat" name="vat" type="number" step="0.01"
													placeholder="vat of product"
													class="form-control input-md-12" required="required"
													value="${product.vat}">
												<div class="form-group">
													<c:forEach items="${errors}" var="error">
														<c:if
															test="${error.key.substring(0, error.key.length() - 1)=='vat'}">
															<span class="help-block text-danger">${error.value}</span>
															<br>
														</c:if>
													</c:forEach>
												</div>
											</div>
										</div>
										<!-- Text input-->
										<div class="form-group">
											<label class="col-md-12 control-label" for="unitOfMeasure">Unit
												of measure</label>
											<div class="col-md-12">
												<input id="unitOfMeasure" name="unitOfMeasure" type="text"
													placeholder="Unit of measure"
													class="form-control input-md-12" required="required"
													value="${product.unitOfMeasure}">
												<div class="form-group">
													<c:forEach items="${errors}" var="error">
														<c:if
															test="${error.key.substring(0, error.key.length() - 1)=='unitOfMeasure'}">
															<span class="help-block text-danger">${error.value}</span>
															<br>
														</c:if>
													</c:forEach>
												</div>
											</div>
										</div>
										<!-- Select input-->
										<div class="form-group">
											<label class="col-md-12 control-label" for="designation">Category</label>
											<div class="col-md-12">
												<select id="category" name="category" class="form-control">
													<c:forEach items="${categories}" var="category">
														<c:if test="${category.id==product.category.id}">
															<option value="${category.id}" selected>
																${category.designation}</option>
														</c:if>
														<c:if test="${category.id!=product.category.id}">
															<option value="${category.id}">
																${category.designation}</option>
														</c:if>
													</c:forEach>
												</select>
											</div>
										</div>
										<!-- Button (Double) -->
										<div class="form-group">
											<div class="col-md-12">
												<button id="button1id" name="button1id"
													class="btn btn-success" type="submit">Save</button>
												<a id="button2id" class="btn btn-danger" href="/Products">Cancel</a>
											</div>
										</div>
									</fieldset>
								</form>
							</div>
						</div>
					</c:if>
					<c:if test="${permission<2}">
						<%@ include file="includes/404.jsp"%>
					</c:if>
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- End of Main Content -->
			<!-- Footer -->
			<%@ include file="includes/footer.html"%>
			<!-- End of Footer -->
		</div>
		<!-- End of Content Wrapper -->
	</div>
	<!-- End of Page Wrapper -->
	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>
	<!-- Logout Modal-->
	<%@ include file="includes/modal.jsp"%>
	<!-- End of Logout Modal-->
	<!-- Bootstrap core JavaScript-->
	<script src="/vendor/jquery/jquery.min.js"></script>
	<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Core plugin JavaScript-->
	<script src="/vendor/jquery-easing/jquery.easing.min.js"></script>
	<!-- Custom scripts for all pages-->
	<script src="/js/sb-admin-2.min.js"></script>
	<!-- Page level plugins -->
	<script src="/vendor/datatables/jquery.dataTables.min.js"></script>
	<script src="/vendor/datatables/dataTables.bootstrap4.min.js"></script>
	<!-- Page level custom scripts -->
	<script src="/js/demo/datatables-demo.js"></script>
</body>
</html>