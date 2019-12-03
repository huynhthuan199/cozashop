
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Quản Lí Liên Hệ</title>
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
<link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet">
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
						<h4 class="page-title">Quản Lý Liên Hệ</h4>
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="./home">Trang Chủ</a></li>
							<li class="breadcrumb-item"><a href="./cotact">Quản Lí</a></li>
							<li class="breadcrumb-item active" aria-current="page">Liên Hệ</li>
						</ol>
					</div>
				</div>
				<!-- End Breadcrumb-->
				<!-- <div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-body">
								
							</div>
						</div>
					</div>
				</div> -->
				<!--End Row-->
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-header">
								<i class="fa fa-table"></i> Danh Sách Liên Hệ
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table id="default-datatable" class="table table-bordered">
										<thead class="thead-dark">
											<tr class="headings">
												<th class="text-center">Mã</th>
												<th class="text-center">Email</th>
												<th class="text-center">Nội Dung</th>
												<th class="text-center">Trạng Thái</th>
												<th class="text-center">Ngày Tạo</th>
												<th class="text-center">Thao Tác</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="listContact" items="${listContact}">
												<tr class="even pointer">
													<td class="valId">${listContact.id }</td>
													<td class="valEmail">${listContact.gmail }</td>
													<td class=" ">${listContact.content }</td>
													<td class="valEnabled"><span
														class="badge badge-danger shadow-danger m-1 check">${listContact.enabled == true ? "Đã Xử Lý" : "Chưa Xử Lý"}</span></td>
											 		<td class=" "><fmt:formatDate pattern = "dd-MM-yyyy" value = "${listContact.createAt}" /></td> 
													<td class="text-center action">
														<button type="button"
															class="btn btn-warning shadow-warning waves-effect waves-light m-1 btnEdit"
															data-id="${listContact.id }">
															<i class="fa fa-pencil">Trả Lời</i>
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
		
		<!-- Modal -->
		<div class="modal fade" id="edit-contact">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">Trả Lời Liên Hệ</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<form method="POST"
						id="fileSendMailForm">
						<div class="modal-body">
							<hr>
							<div class="form-group row" style="display: none">
								<label for="input-27" class="col-sm-2 col-form-label">Id</label>
								<div class="col-sm-10">
									<input readonly="readonly" type="text" class="form-control form-control-rounded"
										id="txtId" name="id" placeholder="Nhập Id">
								</div>
							</div>
							<div class="form-group row">
								<label for="input-27" class="col-sm-2 col-form-label">Email</label>
								<div class="col-sm-10">
									<input readonly="readonly" type="text" class="form-control form-control-rounded"
										id="txtEmail" name="email" placeholder="Nhập email">
								</div>
							</div>
							<div class="form-group row">
								<label for="input-27" class="col-sm-2 col-form-label">Tiêu
									đề</label>
								<div class="col-sm-10">
									<input type="text" class="form-control form-control-rounded"
										id="txtTitle" name="title" placeholder="Nhập tiêu đề">
								</div>
							</div>
							<div class="form-group row">
								<label for="input-27" class="col-sm-2 col-form-label">Nội
									dung</label>
								<div class="col-sm-10">
									<textarea class="form-control form-control-rounded"
										id="txtDescription" name="content" rows="10" placeholder="Nhập nội dung"></textarea>
								</div>
							</div>
							<!-- <div class="form-group row">
								<label for="input-12" class="col-sm-2 col-form-label">Hình
									Ảnh</label>
								<div class="col-sm-4">
									<div class="custom-file">
										<input name="image" type="file" class="custom-file-input"
											id="addFile3"> <label
											class="custom-file-label" for="inputGroupFile01">Chọn
											hình Ảnh</label>
									</div>
								</div>
							</div> -->
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-inverse-danger btnHide">
								<i class="fa fa-times"></i> Xóa
							</button>
							<button type="button" class="btn btn-success btnSendMail">
								<i class="fa fa-check-square-o"></i> Gởi
							</button>
						</div>
					</form>
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
	<script src="/resources/admin/build/customJS/ajaxofcontact.js"></script>

	<script>
		$(document).ready(
				function() {
					//Default data table
					$('#default-datatable').DataTable();

					var table = $('#example').DataTable({
						lengthChange : false,
						buttons : [ 'copy', 'excel', 'pdf', 'print', 'colvis' ]
					});

					table.buttons().container().appendTo(
							'#example_wrapper .col-md-6:eq(0)');

				});
	</script>
	<script>
		$(document).ready(function() {
							$(".check:contains('Đã Xử Lý')").removeClass("badge badge-danger shadow-danger m-1").addClass("badge badge-primary shadow-primary m-1");
							$(document).on('click','.page-link',function() {
							$(".check:contains('Đã Xử Lý')").removeClass("badge badge-danger shadow-danger m-1").addClass("badge badge-primary shadow-primary m-1");
									})
						});
	</script>

</body>
</html>
