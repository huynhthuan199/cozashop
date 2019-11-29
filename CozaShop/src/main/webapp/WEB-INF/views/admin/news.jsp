
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Quản Lý Tin tức</title>
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
						<h4 class="page-title">Quản lý thông tin</h4>
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="./home">Trang Chủ</a></li>
							<li class="breadcrumb-item"><a href="javaScript:void();">Quản
									lý thông tin</a></li>
							<li class="breadcrumb-item active" aria-current="page">Tin
								tức</li>
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
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
						<form method="POST" enctype="multipart/form-data"
						id="fileInsertForm">
							<div class="card-body">
								<div class="card-title text-info">Thêm Thông Tin</div>
								<hr>
								<div class="form-group row">
									<label for="input-27" class="col-sm-2 col-form-label">Tiêu
										đề</label>
									<div class="col-sm-10">
										<input type="text" class="form-control form-control-rounded"
											id="txtAddTitle" name="title" placeholder="Nhập tiêu đề">
									</div>
								</div>
								<div class="form-group row">
										<label for="input-29" class="col-sm-2 col-form-label">Danh
											Mục</label>
										<div class="col-sm-10">

											<select id="txtAddCategoryId" name="category"
												class="form-control single-select">
												<c:forEach var="listCategory" items="${listCategory }">
													<option value="${listCategory.id }">${listCategory.name }
														[${listCategory.id }]</option>
												</c:forEach>
											</select>
										</div>
									</div>
								<div class="form-group row">
									<label for="input-27" class="col-sm-2 col-form-label">Thẻ</label>
									<div class="col-sm-10">
										<input type="text" class="form-control form-control-rounded"
											id="txtAddTags" name="tags" placeholder="Nhập thẻ...">
									</div>
								</div>
								<div class="form-group row">
									<label for="input-27" class="col-sm-2 col-form-label">Nội
										Dung Ngắn</label>
									<div class="col-sm-10">
										<input type="text" class="form-control form-control-rounded"
											id="txtAddContent" name="content" placeholder="Nhập tiêu đề">
									</div>
								</div>
								<div class="form-group row">
									<label for="input-27" class="col-sm-2 col-form-label">Nội
										dung</label>
									<div class="col-sm-10">
										<textarea class="form-control form-control-rounded"
											placeholder="Nhập nội dung..." id="txtAddDescription"
											rows="10" name="description"></textarea>
									</div>
								</div>
								<div class="form-group row">
								<label for="input-12" class="col-sm-2 col-form-label">Hình
									Ảnh</label>
								<div class="col-sm-10">
									<div class="custom-file">
										<input name="image" type="file" class="custom-file-input"
											id="addFile3"> <label
											class="custom-file-label" for="inputGroupFile01">Chọn
											hình Ảnh</label>
									</div>
								</div>
							</div>
							<div class="form-group row">
									<label class="col-sm-2 col-form-label"></label>
									<div class="col-sm-10">
										<button type="button"
											class="btn btn-info shadow-info btn-round px-5 btnInsert">
											<i class="fa fa-plus"></i> Thêm
										</button>
									</div>
								</div>
							</div>
							</form>
						</div>

					</div>
				</div>
				<!--End Row-->
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-header">
								<i class="fa fa-table"></i> Danh sách tin tức
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table id="default-datatable" class="table table-bordered">
										<thead class="thead-dark">
											<tr class="headings">
												<th class="text-center">Mã tin tức</th>
												<th class="text-center">Tiêu đề</th>
												<th class="text-center">Nội dung</th>
												<th class="text-center">Thẻ</th>
												<th class="text-center">Trạng thái</th>
												<th class="text-center">Ngày Tạo</th>
												<th class="text-center">Thao Tác</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="listNews" items="${listNews}">
												<tr class="even pointer">
													<td class=" ">${listNews.id}</td>
													<td class=" ">${listNews.title}</td>
													<td class=" ">${listNews.content}</td>
													<td class=" ">${listNews.tags}</td>
													<td class=" valEnabled"><span
														class="badge badge-danger shadow-danger m-1 valEnabled1">${listNews.enabled == true ? "Bật" : "Tắt"}</span></td>
													<td class=" "><fmt:formatDate pattern="yyyy-MM-dd"
															value="${listNews.createAt}" /></td>
													<td class="text-center action">
														<button type="button"
															class="btn btn-warning shadow-warning waves-effect waves-light m-1 btnEdit"
															data-id="${listNews.id}">
															<i class="fa fa-pencil">Sửa</i>
														</button>
														<button type="button"
															class="btn btn-danger shadow-danger waves-effect waves-light m-1 checkHideShow btnDelete"
															name="btnDelete" data-id="${listNews.id }">
															<i class="fa fa-trash">Tắt</i>
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
		<div class="modal fade" id="edit-category">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">Chỉnh Sửa Thông Tin</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<form method="POST" enctype="multipart/form-data"
						id="fileUploadForm">
						<div class="modal-body">
							<hr>
							<div class="form-group row">
								<label for="input-26" class="col-sm-2 col-form-label">ID</label>
								<div class="col-sm-10">
									<input readonly type="text"
										class="form-control form-control-rounded" id="txtId" name="id"
										placeholder="Nhập tiêu đề">
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
									Dung Ngắn</label>
								<div class="col-sm-10">
									<input type="text" class="form-control form-control-rounded"
										id="txtContent" name="content" placeholder="Nhập tiêu đề">
								</div>
							</div>
							<div class="form-group row">
								<label for="input-27" class="col-sm-2 col-form-label">Thẻ</label>
								<div class="col-sm-10">
									<input type="text" class="form-control form-control-rounded"
										id="txtTags" name="tags" placeholder="Nhập thẻ">
								</div>
							</div>

							<div class="form-group row">
								<label for="input-27" class="col-sm-2 col-form-label">Nội
									dung</label>
								<div class="col-sm-10">
									<textarea class="form-control form-control-rounded"
										id="txtDescription" name="description" rows="10"></textarea>
								</div>
							</div>
							<div class="form-group row">
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
							</div>
							<div class="form-group row">
								<label for="input-27" class="col-sm-2 col-form-label">Trạng
									Thái</label>
								<div class=col-sm-10>
									<div class="icheck-material-primary icheck-inline">
										<input type="radio" id="inline-radio-primary2"
											name="rdoEnabled" checked value="true"> <label
											for="inline-radio-primary">Bật</label>
									</div>
									<div class="icheck-material-info icheck-inline">
										<input type="radio" id="inline-radio-info2" name="rdoEnabled"
											value="false"> <label for="inline-radio-info">Tắt</label>
									</div>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-inverse-danger btnHide"
								data-dismiss="modal">
								<i class="fa fa-times"></i> Xóa
							</button>
							<button type="button" class="btn btn-success btnUpdate">
								<i class="fa fa-check-square-o"></i> Lưu
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
	<script src="/resources/admin/build/customJS/ajaxofnew.js"></script>

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
	$(document).ready(function(){
		$(".valEnabled1:contains('Tắt')").parent().parent().find('td.action').children('.checkHideShow').removeClass('btnDelete btn btn-danger shadow-danger').addClass('btnShow btn btn-primary shadow-primary').children().removeClass('fa fa-unlock-alt').addClass('fa fa-unlock').text(' Bật')
		$(".valEnabled1:contains('Bật')")
									.removeClass(
											"badge badge-danger shadow-danger m-1")
									.addClass(
											"badge badge-primary shadow-primary m-1")
		$(document).on('click','.page-link',function(){
		$(".valEnabled1:contains('Tắt')").parent().parent().find('td.action').children('.checkHideShow').removeClass('btnDelete btn btn-danger shadow-danger').addClass('btnShow btn btn-primary shadow-primary').children().removeClass('fa fa-unlock-alt').addClass('fa fa-unlock').text(' Bật')
		$(".valEnabled1:contains('Bật')")
									.removeClass(
											"badge badge-danger shadow-danger m-1")
									.addClass(
											"badge badge-primary shadow-primary m-1")
		})
	})
	
	</script>
</body>
</html>
