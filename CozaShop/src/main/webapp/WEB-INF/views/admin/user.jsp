<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Quản Lí Nhân Viên</title>
<!--favicon-->
<link rel="icon" href="/resources/admin/assets/images/favicon.ico"
	type="image/x-icon">
<!-- simplebar CSS-->
<link href="/resources/admin/assets/plugins/simplebar/css/simplebar.css"
	rel="stylesheet">
<!-- Bootstrap core CSS-->
<link href="/resources/admin/assets/css/bootstrap.min.css"
	rel="stylesheet">
<!--Data Tables -->
<link
	href="/resources/admin/assets/plugins/bootstrap-datatable/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" type="text/css">
<link
	href="/resources/admin/assets/plugins/bootstrap-datatable/css/buttons.bootstrap4.min.css"
	rel="stylesheet" type="text/css">
<!-- animate CSS-->
<link href="/resources/admin/assets/css/animate.css" rel="stylesheet"
	type="text/css">
<!-- Icons CSS-->
<link href="/resources/admin/assets/css/icons.css" rel="stylesheet"
	type="text/css">
<!-- Sidebar CSS-->
<link href="/resources/admin/assets/css/sidebar-menu.css"
	rel="stylesheet">

<!-- Toastr -->
<link
	href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css"
	rel="stylesheet">
<!-- Custom Style-->
<link href="/resources/admin/assets/css/app-style.css" rel="stylesheet">


</head>

<body>

	<!-- Start wrapper-->
	<div id="wrapper">

		<!--Start sidebar-wrapper-->
		<%@ include file="./block/nav.jsp"%>
		<!--End sidebar-wrapper-->

		<!--Start topbar header-->
		<%@ include file="./block/header.jsp"%>
		<!--End topbar header-->
		<div class="clearfix"></div>

		<div class="content-wrapper">
			<div class="container-fluid">
				<!-- Breadcrumb-->
				<div class="row pt-2 pb-2">
					<div class="col-sm-9">
						<h4 class="page-title">Đường Dẫn</h4>
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="./home">Trang Chủ</a></li>
							<li class="breadcrumb-item"><a href="./user">Quản Lý Tài
									Khoản</a></li>
							<li class="breadcrumb-item active" aria-current="page">Nhân
								Viên</li>
						</ol>
					</div>
					<div class="col-sm-3">
						<div class="btn-group float-sm-right">
							<button type="button"
								class="btn btn-outline-primary waves-effect waves-light">
								<i class="fa fa-cog mr-1"></i> Setting
							</button>
							<button type="button"
								class="btn btn-outline-primary dropdown-toggle dropdown-toggle-split waves-effect waves-light"
								data-toggle="dropdown">
								<span class="caret"></span>
							</button>
							<div class="dropdown-menu">
								<a href="javaScript:void();" class="dropdown-item">Action</a> <a
									href="javaScript:void();" class="dropdown-item">Another
									action</a> <a href="javaScript:void();" class="dropdown-item">Something
									else here</a>
								<div class="dropdown-divider"></div>
								<a href="javaScript:void();" class="dropdown-item">Separated
									link</a>
							</div>
						</div>
					</div>
				</div>
				<!-- End Breadcrumb-->

				<!-- Row-->
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-body">
								<form method="POST" enctype="multipart/form-data"
									id="fileUploadForm">
									<h4 class="form-header text-uppercase">
										<i class="fa fa-address-book-o"></i>Thông Tin Nhân Viên
									</h4>
									<div class="form-group row">
										<label for="input-10" class="col-sm-2 col-form-label">Họ
											và Tên</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="txtAddName"
												name="name">
										</div>
										<label for="input-10" class="col-sm-2 col-form-label">Email</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="txtAddEmail"
												name="email">
										</div>
									</div>
									<div class="form-group row">
										<label for="input-12" class="col-sm-2 col-form-label">Tài
											Khoản</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="txtAddUsername"
												name="username">
										</div>
										<label for="input-11" class="col-sm-2 col-form-label">Vai
											Trò</label>
										<div class="col-sm-4">
											<div class="icheck-material-primary icheck-inline">
												<input type="radio" id="inline-radio-primary"
													name="rules" checked value="true"> <label
													for="inline-radio-primary">Quản lý</label>
											</div>
											<div class="icheck-material-info icheck-inline">
												<input type="radio" id="inline-radio-info"
													name="rules" value="false"> <label
													for="inline-radio-info">Nhân viên</label>
											</div>
										</div>
									</div>
									<div class="form-group row">
									<label for="input-12" class="col-sm-2 col-form-label">Hình Ảnh</label>
										<div class="col-sm-4">
											<div class="custom-file">
												<input name="image" type="file" class="custom-file-input" id="addFile3"
													name="rules"> <label class="custom-file-label"
													for="inputGroupFile01">Chọn hình Ảnh</label>
											</div>
										</div>
										</div>
									<div class="form-footer">
										<div class="row">
											<div class="col-sm-10"></div>
											<div class="col-sm-2">
												<button type=button id="btnSubmit"
													class="btn btn-outline-success waves-effect waves-light m-1 btnInsert">
													<i class="fa fa-check-square-o"></i> Thêm
												</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!--End Row-->

				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-header">
								<i class="fa fa-table"></i> Danh Sách Danh Mục
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table id="example" class="table table-bordered">
										<thead class="thead-dark">
											<tr class="headings">
												<th class="column-title">Id</th>
												<th class="column-title">Tài Khoản</th>
												<th class="column-title">Họ Tên</th>
												<th class="column-title">Vai Trò</th>
												<th class="column-title">Ngày Tạo</th>
												<th class="column-title">Trạng Thái</th>
												<th class="column-title">Công Cụ</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="users" items="${listusers}">
												<tr class="even pointer">
													<td class=" ">${users.id}</td>
													<td class=" ">${users.username}</td>
													<input type="hidden" name="id" value="${users.id}">
													<td class=" ">${users.name }</td>
													<td class=" "><span
														class="check badge badge-danger shadow-danger m-1">
															${users.rules == true ? "Quản lý" : "Nhân viên" }</span></td>
													<td class=" ">${users.createAt}</td>
													<td class=" "><span
														class=" check2 badge badge-danger shadow-danger m-1">
															${users.enabled == true ? "Bật" : "Tắt" }</span></td>
													<td class=" ">
														<button type="button" data-id="${users.id }"
															class="btn btn-info shadow-info waves-effect waves-light m-1 edituser">
															<i class="fa fa-pencil"> Sửa</i>
														</button>

														<button type="button"
															class="btn btn-warning shadow-warning waves-effect waves-light m-1 btnDelete"
															name="btnDelete" data-id="${users.id }">
															<i class="fa fa-trash-o"> Xóa</i>
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
				<!-- End Row-->

			</div>
			<!-- End container-fluid-->

		</div>
		<!--End content-wrapper-->
		<!--Start Back To Top Button-->
		<a href="javaScript:void();" class="back-to-top"><i
			class="fa fa-angle-double-up"></i> </a>
		<!--End Back To Top Button-->

		<!--Start footer-->
		<%@ include file="./block/footer.jsp"%>
		<!--End footer-->

		<!--Success  Modal -->
		<div class="modal fade" id="edit-user">
			<div class="modal-dialog">
				<div class="modal-content animated fadeInUp">
					<div class="modal-header">
						<h5 class="modal-title">Chỉnh Sửa Thông Tin Nhân Viên</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form id="signupForm">
							<h4 class="form-header text-uppercase">
								<i class="fa fa-address-book-o"></i> Thông Tin Nhân Viên
							</h4>

							<div class="form-group row">
								<label for="input-10" class="col-sm-12 col-form-label">Mã
									Nhân Viên</label>
								<div class="col-sm-12">
									<input readonly type="text" class="form-control" id="txtid"
										name="firstname">
								</div>
							</div>
							<div class="form-group row">
								<label for="input-10" class="col-sm-12 col-form-label">Họ
									và Tên</label>
								<div class="col-sm-12">
									<input type="text" class="form-control" id="txtname"
										name="firstname">
								</div>
							</div>
							<div class="form-group row">
								<label for="input-12" class="col-sm-12 col-form-label">Tài
									Khoản</label>
								<div class="col-sm-12">
									<input type="text" class="form-control" id="txtusername"
										name="username">
								</div>
							</div>
							<div class="form-group row">
								<label for="input-10" class="col-sm-12 col-form-label">Mật
									Khẩu</label>
								<div class="col-sm-12">
									<input type="text" class="form-control" id="txtpassword"
										name="firstname">
								</div>
								<label for="input-10" class="col-sm-12 col-form-label">Email</label>
								<div class="col-sm-12">
									<input type="text" class="form-control" id="txtemail"
										name="firstname">
								</div>
							</div>
							<label for="input-13" class="col-sm-12 col-form-label">Trạng
								Thái</label>
							<div class="col-sm-12">
								<div class="icheck-material-warning icheck-inline">
									<input type="radio" id="rdoenabled_true" name="rdoenabled"
										value="true" checked> <label for="rdoenabled_true">Bật</label>
								</div>
								<div class="icheck-material-warning icheck-inline">
									<input type="radio" id="rdoenabled_false" name="rdoenabled"
										value="false"> <label for="rdoenabled_false">Tắt</label>
								</div>
							</div>
							<label for="input-11" class="col-sm-12 col-form-label">Vai
								Trò</label>
							<div class="col-sm-12">
								<div class="icheck-material-success icheck-inline">
									<input type="radio" id="rdorules_true" name="rdorules" checked
										value="true"> <label for="rdorules_true">Quản
										lý</label>
								</div>
								<div class="icheck-material-success	 icheck-inline">
									<input type="radio" id="rdorules_false" name="rdorules"
										value="false"> <label for="rdorules_false">Nhân
										viên</label>
								</div>
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button"
							class="btn btn-outline-warning waves-effect waves-light m-1"
							data-dismiss="modal">
							<i class="fa fa-times"></i> Thoát
						</button>
						<button type="button"
							class="btn btn-outline-success waves-effect waves-light m-1 btnUpdate">
							<i class="fa fa-check-square-o"></i> Lưu
						</button>
					</div>
				</div>
			</div>
		</div>
		<!--End Modal -->
	</div>
	<!--End wrapper-->


	<!-- Bootstrap core JavaScript-->
	<script src="/resources/admin/assets/js/jquery.min.js"></script>
	<script src="/resources/admin/assets/js/popper.min.js"></script>
	<script src="/resources/admin/assets/js/bootstrap.min.js"></script>

	<!-- simplebar js -->
	<script src="/resources/admin/assets/plugins/simplebar/js/simplebar.js"></script>
	<!-- waves effect js -->
	<script src="/resources/admin/assets/js/waves.js"></script>
	<!-- sidebar-menu js -->
	<script src="/resources/admin/assets/js/sidebar-menu.js"></script>
	<!-- Custom scripts -->
	<script src="/resources/admin/assets/js/app-script.js"></script>
	<!--Data Tables js-->
	<script
		src="/resources/admin/assets/plugins/bootstrap-datatable/js/jquery.dataTables.min.js"></script>
	<script
		src="/resources/admin/assets/plugins/bootstrap-datatable/js/dataTables.bootstrap4.min.js"></script>
	<script
		src="/resources/admin/assets/plugins/bootstrap-datatable/js/dataTables.buttons.min.js"></script>
	<script
		src="/resources/admin/assets/plugins/bootstrap-datatable/js/buttons.bootstrap4.min.js"></script>
	<script
		src="/resources/admin/assets/plugins/bootstrap-datatable/js/jszip.min.js"></script>
	<script
		src="/resources/admin/assets/plugins/bootstrap-datatable/js/pdfmake.min.js"></script>
	<script
		src="/resources/admin/assets/plugins/bootstrap-datatable/js/vfs_fonts.js"></script>
	<script
		src="/resources/admin/assets/plugins/bootstrap-datatable/js/buttons.html5.min.js"></script>
	<script
		src="/resources/admin/assets/plugins/bootstrap-datatable/js/buttons.print.min.js"></script>
	<script
		src="/resources/admin/assets/plugins/bootstrap-datatable/js/buttons.colVis.min.js"></script>

	<!--Sweet Alerts -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>

	<!--Toastr -->
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
	<!-- Ajax  -->
	<script src="/resources/admin/build/customJS/ajaxofuser.js"></script>
	<script type="text/javascript">
		toastr.options = {
			"closeButton" : false,
			"debug" : false,
			"newestOnTop" : true,
			"progressBar" : true,
			"positionClass" : "toast-top-right",
			"preventDuplicates" : false,
			"onclick" : null,
			"showDuration" : "300",
			"hideDuration" : "1000",
			"timeOut" : "5000",
			"extendedTimeOut" : "1000",
			"showEasing" : "swing",
			"hideEasing" : "linear",
			"showMethod" : "fadeIn",
			"hideMethod" : "fadeOut"
		}
	</script>
	<script>
		$(document).ready(
				function() {
					//Default data table
					$('#default-datatable').DataTable();

					var table = $('#example').DataTable(
							{
								lengthChange : true,
								buttons : [ 'copy', 'excel', 'pdf', 'print',
										'colvis' ],
								"lengthMenu" : [ [ 5, 10, 25, 50, -1 ],
										[ 5, 10, 25, 50, "All" ] ]
							});

					table.buttons().container().appendTo(
							'#example_wrapper .col-md-6:eq(0)');

				});
		$("span").removeClass("myClass noClass").addClass("yourClass")
	</script>
	<script>
		$(document)
				.ready(
						function() {
							$(".check:contains('Quản lý')")
									.removeClass(
											"badge badge-danger shadow-danger m-1")
									.addClass(
											"badge badge-primary shadow-primary m-1");
							$(".check2:contains('Bật')")
									.removeClass(
											"badge badge-danger shadow-danger m-1")
									.addClass(
											"badge badge-primary shadow-primary m-1")
							$(document)
									.on(
											'click',
											'.page-link',
											function() {

												$(".check:contains('Quản lý')")
														.removeClass(
																"badge badge-danger shadow-danger m-1")
														.addClass(
																"badge badge-primary shadow-primary m-1");
												$(".check2:contains('Bật')")
														.removeClass(
																"badge badge-danger shadow-danger m-1")
														.addClass(
																"badge badge-primary shadow-primary m-1")
											})
						});
	</script>
</body>
</html>