
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="images/favicon.ico" type="image/ico" />

<title>Coza Store</title>

<!-- Bootstrap -->
<link
	href="/resources/admin/vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link
	href="/resources/admin/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link href="/resources/admin/vendors/nprogress/nprogress.css"
	rel="stylesheet">
<!-- iCheck -->
<link href="/resources/admin/vendors/iCheck/skins/flat/green.css"
	rel="stylesheet">
<!-- bootstrap-wysiwyg -->
<link
	href="/resources/admin/vendors/google-code-prettify/bin/prettify.min.css"
	rel="stylesheet">
<!-- Select2 -->
<link href="/resources/admin/vendors/select2/dist/css/select2.min.css"
	rel="stylesheet">
<!-- Switchery -->
<link href="/resources/admin/vendors/switchery/dist/switchery.min.css"
	rel="stylesheet">
<!-- starrr -->
<link href="/resources/admin/vendors/starrr/dist/starrr.css"
	rel="stylesheet">
<!-- bootstrap-daterangepicker -->
<link
	href="/resources/admin/vendors/bootstrap-daterangepicker/daterangepicker.css"
	rel="stylesheet">
<!-- Custom Theme Style -->
<link href="/resources/admin//build/css/custom.min.css" rel="stylesheet">

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css"
	rel="stylesheet" />
</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<%@ include file="./block/nav.jsp"%>

			<!-- top navigation -->
			<%@ include file="./block/topnav.jsp"%>
		</div>
		<!-- /top navigation -->

		<!-- page content -->
		<div class="right_col" role="main">
			<div class="">
				<div class="page-title">
					<div class="title_left">
						<h3>Danh mục sản phẩm</h3>
					</div>
					<div class="title_right">
						<div
							class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
							<div class="input-group">
								<input type="text" class="form-control"
									placeholder="Search for..."> <span
									class="input-group-btn">
									<button class="btn btn-default" type="button">Go!</button>
								</span>
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="x_panel">
							<div class="x_title">
								<h2>Thông tin danh mục</h2>
								<ul class="nav navbar-right panel_toolbox">
									<li><a class="collapse-link"><i
											class="fa fa-chevron-up"></i></a></li>
									<li class="dropdown"><a href="#" class="dropdown-toggle"
										data-toggle="dropdown" role="button" aria-expanded="false"><i
											class="fa fa-wrench"></i></a>
										<ul class="dropdown-menu" role="menu">
											<li><a href="#">Settings 1</a></li>
											<li><a href="#">Settings 2</a></li>
										</ul></li>
									<li><a class="close-link"><i class="fa fa-close"></i></a>
									</li>
								</ul>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<br />
								<div class="col-sm-4">
									<div class="form-group">
										<label class="control-label" for="first-name">Id <span
											class="required">*</span>
										</label> <input id="addId" type="text" id="first-name"
											required="required" class="form-control">
									</div>
								</div>
								<div class="col-sm-4">
									<div class="form-group">
										<label class="control-label" for="first-name">Name <span
											class="required">*</span>
										</label> <input id="addName" type="text" id="first-name"
											required="required" class="form-control">
									</div>
								</div>

								<div class="col-sm-4">
									<div>
										<label class="control-label" for="first-name">Status <span
											class="required">*</span>
										</label>
									</div>
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" class="custom-control-input"
											id="enabled_true" name="addenabled"> <label
											class="custom-control-label" value="true"">On</label>
									</div>
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" class="custom-control-input"
											id="enabled_false" name="addenabled"> <label
											class="custom-control-label" value="false">Off</label>
									</div>
								</div>
								<button type="button" class="btn btn-primary"
									style="float: right; margin-top: 20px">
									<i class="fa fa-refresh"> Insert</i>
								</button>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-6 col-xs-12">
						<div class="x_panel" style="width: 1079px">
							<div class="x_title">
								<h2>List Category</h2>
								<ul class="nav navbar-right panel_toolbox">
									<li><a class="collapse-link"><i
											class="fa fa-chevron-up"></i></a></li>
									<li class="dropdown"><a href="#" class="dropdown-toggle"
										data-toggle="dropdown" role="button" aria-expanded="false"><i
											class="fa fa-wrench"></i></a>
										<ul class="dropdown-menu" role="menu">
											<li><a href="#">Settings 1</a></li>
											<li><a href="#">Settings 2</a></li>
										</ul></li>
									<li><a class="close-link"><i class="fa fa-close"></i></a>
									</li>
								</ul>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<br />
								<div class="table-responsive">
									<table class="table table-striped jambo_table bulk_action">
										<thead>
											<tr class="headings">
												<th class="column-title">Id</th>
												<th class="column-title">Name</th>
												<th class="column-title">Enabled</th>
												<th class="column-title">CreatAt</th>
												<th class="column-title">Action</th>
												</th>
										</thead>
										</tr>

										<tbody>
											<c:forEach var="category" items="${listCategory}">
												<tr class="even pointer">
													<td class=" ">${category.id }</td>
													<td class=" ">${category.name }</td>
													<td class=" ">${category.enabled }</td>
													<td class=" ">${category.createAt }</td>
													<td class=" ">
														<button type="button" class="btn btn-warning btnEdit"
															data-id="${category.id }">
															<i class="fa fa-pencil">Edit</i>
														</button>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /page content -->

		<!-- footer content -->
		<%@ include file="./block/footer.jsp"%>

		<!-- /footer content -->
	</div>
	</div>

	<!-- Large modal -->

	<div id="edit-category" class="modal fade" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<!-- 			<form method="get"> -->
			<div class="modal-content">
				<div class="x_content">
					<br />
					<div class="col-sm-4">
						<div class="form-group">
							<label class="control-label" for="first-name">Id <span
								class="required">*</span>
							</label> <input id="id" type="text" id="first-name"
								required="required" class="form-control">
						</div>
					</div>
					<div class="col-sm-4">
						<div class="form-group">
							<label class="control-label" for="first-name">Name <span
								class="required">*</span>
							</label> <input id="name" type="text" id="first-name"
								required="required" class="form-control">
						</div>
					</div>
					
					<div class="col-sm-4">
						<div class="form-group">
							<label class="control-label" for="first-name">CreatAt <span
								class="required">*</span>
							</label> <input id="CreatAt" type="text" id="first-name"
								required="required" class="form-control">
						</div>
					</div>

					<div class="col-sm-4">
						<div>
							<label class="control-label" for="first-name">Status <span
								class="required">*</span>
							</label>
						</div>
						<div class="custom-control custom-radio custom-control-inline">
							<input type="radio" class="custom-control-input"
								id="enabled_true" name="enabled"> <label
								class="custom-control-label" value="true"">On</label>
						</div>
						<div class="custom-control custom-radio custom-control-inline">
							<input type="radio" class="custom-control-input"
								id="enabled_false" name="enabled"> <label
								class="custom-control-label" value="false">Off</label>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-success btnUpdate"
						name="btnUpdate" style="float: right; margin-top: 20px">
						<i class="fa fa-inbox"> Save</i>
					</button>
					<button type="button" class="btn btn-danger btnDelete"
						name="btnDelete" style="float: right; margin-top: 20px">
						<i class="fa fa-trash"> Delete</i>
					</button>
				</div>
			</div>
		</div>
	</div>
	<!-- jQuery -->
	<script src="/resources/admin/vendors/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
	<script
		src="/resources/admin/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script src="/resources/admin/vendors/fastclick/lib/fastclick.js"></script>
	<!-- NProgress -->
	<script src="/resources/admin/vendors/nprogress/nprogress.js"></script>
	<!-- bootstrap-progressbar -->
	<script
		src="/resources/admin/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
	<!-- iCheck -->
	<script src="/resources/admin/vendors/iCheck/icheck.min.js"></script>
	<!-- bootstrap-daterangepicker -->
	<script src="/resources/admin/vendors/moment/min/moment.min.js"></script>
	<script
		src="/resources/admin/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
	<!-- bootstrap-wysiwyg -->
	<script
		src="/resources/admin/vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
	<script src="/resources/admin/vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
	<script
		src="/resources/admin/vendors/google-code-prettify/src/prettify.js"></script>
	<!-- jQuery Tags Input -->
	<script
		src="/resources/admin/vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
	<!-- Switchery -->
	<script src="/resources/admin/vendors/switchery/dist/switchery.min.js"></script>
	<!-- Select2 -->
	<script
		src="/resources/admin/vendors/select2/dist/js/select2.full.min.js"></script>
	<!-- Parsley -->
	<script src="/resources/admin/vendors/parsleyjs/dist/parsley.min.js"></script>
	<!-- Autosize -->
	<script src="/resources/admin/vendors/autosize/dist/autosize.min.js"></script>
	<!-- jQuery autocomplete -->
	<script
		src="/resources/admin/vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
	<!-- starrr -->
	<script src="/resources/admin/vendors/starrr/dist/starrr.js"></script>
	<!-- Custom Theme Scripts -->
	<script src="/resources/admin/build/js/custom.min.js"></script>

	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
	
	<!-- Edit  -->
		<script type="text/javascript">
		$(document).ready(function(){
			$('.btnEdit').click(function(){
				$.ajax({
					url : "category/" + $(this).data("id"),
					type : "GET"
				}).done(function(data){
					$('#id').val(data.id);
					$('#name').val(data.name);
					$('#createAt').val(data.createAt);
					console.log(data.createAt);
					$('.enabled').prop("checked", true);	
					$('#edit-category').modal('show');
				}).fail(function(err){
					console.log(err);
				});
			});
		});
	</script>
</body>
</html>