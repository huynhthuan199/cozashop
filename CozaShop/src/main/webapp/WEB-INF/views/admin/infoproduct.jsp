
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
<title>Quản Lí Sản Phẩm</title>
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
 <!-- Dropzone css -->
  <link href="/resources/admin/assets/plugins/dropzone/css/dropzone.css" rel="stylesheet" type="text/css">
<!-- Toastr -->
<link
	href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css"
	rel="stylesheet">
<!-- Custom Style-->
<link href="/resources/admin/assets/css/app-style.css" rel="stylesheet">
<style>
.myimage {
	/* width: 100px; */
	height: 400px
}
</style>
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
						<h4 class="page-title">Quản Lý Sản Phẩm</h4>
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="home">Trang Chủ</a></li>
							<li class="breadcrumb-item"><a href="infoproduct">Quản Lý</a></li>
							<li class="breadcrumb-item active" aria-current="page">Sản Phẩm</li>
						</ol>
					</div>
				</div>
				<!-- End Breadcrumb-->

				<!-- Content  -->
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-body">
								<div class="card-title text-info">Thông tin sản phẩm</div>
								<hr>
								<form enctype="multipart/form-data" id="dropzone" class="dropzone">
									<div class="form-group row">
										<label for="input-26" class="col-sm-2 col-form-label">Mã
											Sản Phẩm</label>
										<div class="col-sm-10">
											<input type="text" class="form-control form-control-rounded"
												id="txtAddId" name="txtAddId"
												placeholder="Nhập vào mã sản phẩm...">
										</div>
									</div>
									<div class="form-group row">
										<label for="input-27" class="col-sm-2 col-form-label">Tên
											Sản Phẩm</label>
										<div class="col-sm-10">
											<input type="text" class="form-control form-control-rounded"
												id="txtAddName" name="txtAddName"
												placeholder="Nhập vào tên sản phẩm...">
										</div>
									</div>
									<div class="form-group row">
										<label for="input-28" class="col-sm-2 col-form-label">Giá
											Sản Phẩm</label>
										<div class="col-sm-10">
											<div class="input-group">
												<div class="input-group-prepend">
													<span class="input-group-text">$</span>
												</div>
												<input id="txtAddPrice" name="txtAddPrice" type="text"
													class="form-control">
												<div class="input-group-append">
													<span class="input-group-text">.000</span>
												</div>
											</div>
										</div>
									</div>
									<div class="form-group row">
										<label for="input-29" class="col-sm-2 col-form-label">Danh
											Mục</label>
										<div class="col-sm-10">

											<select id="txtAddCategoryId" name="txtAddCategoryId"
												class="form-control single-select">
												<c:forEach var="listCategory" items="${listCategory }">
													<option value="${listCategory.id }">${listCategory.name }
														[${listCategory.id }]</option>
												</c:forEach>
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label for="input-29" class="col-sm-2 col-form-label">Chất
											Liệu</label>
										<div class="col-sm-10">

											<select id="txtAddMaterial" name="txtAddMaterial"
												class="form-control single-select">
												<c:forEach var="listMaterial" items="${listMaterial }">
													<option value="${listMaterial.name }">${listMaterial.name }</option>
												</c:forEach>
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label for="input-29" class="col-sm-2 col-form-label">Màu
											Sắc</label>
										<div class="col-sm-10">
											<select id="txtAddColor" name="txtAddColor"
												class="form-control single-select">
												<c:forEach var="listColor" items="${listColor }">
													<option value="${listColor.name }">${listColor.name }</option>
												</c:forEach>
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label for="input-30" class="col-sm-2 col-form-label">Mô
											Tả</label>
										<div class="col-sm-10">
											<textarea rows="4" class="form-control"
												id="txtAddDescription" name="txtAddDescription"></textarea>
										</div>
									</div>
									<div class="form-group row">
										<label for="input-27" class="col-sm-2 col-form-label">Mô
											Tả Ngắn</label>
										<div class="col-sm-10">
											<input type="text" class="form-control form-control-rounded"
												id="txtAddShortDescription" name="txtAddShortDescription"
												placeholder="Nhập vào mô tả ngắn...">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Hình Ảnh</label>
										<div class="col-sm-10">
											<div class="input-group mb-3">
												<div class="input-group-prepend">
													<span class="input-group-text">Upload</span>
												</div>
												<div class="custom-file">
													<input type="file" class="custom-file-input" id="addFile1"
														name="addFile"> <label class="custom-file-label"
														for="inputGroupFile01">Chọn hình Ảnh</label>
												</div>
											</div>
										</div>
									</div>
									<!-- <div class="form-group row">
										<label class="col-sm-2 col-form-label">Hình Ảnh 2</label>
										<div class="col-sm-10">
											<div class="input-group mb-3">
												<div class="input-group-prepend">
													<span class="input-group-text">Upload</span>
												</div>
												<div class="custom-file">
													<input type="file" class="custom-file-input" id="addFile2"
														name="addFile2"> <label class="custom-file-label"
														for="inputGroupFile01">Chọn hình Ảnh</label>
												</div>
											</div>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Hình Ảnh 3</label>
										<div class="col-sm-10">
											<div class="input-group mb-3">
												<div class="input-group-prepend">
													<span class="input-group-text">Upload</span>
												</div>
												<div class="custom-file">
													<input type="file" class="custom-file-input" id="addFile3"
														name="addFile3"> <label class="custom-file-label"
														for="inputGroupFile01">Chọn hình Ảnh</label>
												</div>
											</div>
										</div>
									</div> -->
									<div class="form-group row">
										<label class="col-sm-2 col-form-label"></label>
										<div class="col-sm-10">
												<button type="button" name="btnInsert"
												class="btn btn-info shadow-info btn-round px-5 btnInsert1">
												<i class="zmdi zmdi-collection-plus"></i> Thêm
											</button>
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
								<i class="fa fa-table"></i> Data Exporting
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table id="example" class="table table-bordered">
										<thead class="thead-dark">
											<tr>
												<th>Mã sản phẩm</th>
												<th>Mã danh mục</th>
												<th>Tên sản phẩm</th>
												<th>Giá tiền [VNĐ]</th>
												<th>Chất liệu</th>
												<th>Màu sắc</th>
												<!-- <th>Mô tả</th>
												<th>Mô tả</th> -->
												<th>Hình ảnh</th>
												<th>Hành động</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="product" items="${listProduct}">
												<tr class="even pointer">
													<td class=" ">${product.id }</td>
													<td class=" ">${product.category.id }</td>
													<td class=" ">${product.name }</td>
													<td class=" "><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${product.price }" /></td>
													<td class=" ">${product.material }</td>
													<td class=" ">${product.color }</td><%-- 
													<td class=" ">${product.description }</td>
													<td class=" ">${product.shortdescription }</td> --%>
													<td class=" "><img style="width: 50px; height: 50px"
														src="/resources/web/images/Products/${product.image }" /></td>
													<td class=" ">
														<button type="button" class="btn btn-warning btnEdit"
															data-id="${product.id }">
															<i class="fa fa-pencil"> Sửa</i>
														</button>

														<button type="button" class="btn btn-danger btnDelete"
															data-id="${product.id }">
															<i class="fa fa-trash"> Xóa</i>
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
		<div class="modal fade" id="edit-product">
			<div class="modal-dialog" style="max-width: 700px;">
				<div class="modal-content border-0">
					<div class="card mb-0">
						<div id="carousel-2" class="carousel slide" data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#carousel-2" data-slide-to="0" class="active"></li>
								<li data-target="#carousel-2" data-slide-to="1"></li>
								<li data-target="#carousel-2" data-slide-to="2"></li>
							</ol>
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img id="image" class="d-block w-100 card-img-top myimage"
										src="" alt="Card image cap">
								</div>
								<div class="carousel-item">
									<img id="image2" class="d-block w-100 card-img-top myimage"
										src="" alt="Card image cap">
								</div>
								<div class="carousel-item">
									<img id="image3" class="d-block w-100 card-img-top myimage"
										src="" alt="Card image cap">
								</div>
							</div>
							<a class="carousel-control-prev" href="#carousel-2" role="button"
								data-slide="prev"> <span class="carousel-control-prev-icon"
								aria-hidden="true"></span> <span class="sr-only">Lùi</span>
							</a> <a class="carousel-control-next" href="#carousel-2"
								role="button" data-slide="next"> <span
								class="carousel-control-next-icon" aria-hidden="true"></span> <span
								class="sr-only">Tiến</span>
							</a>
						</div>
						<div class="card-body">
							<h5 class="card-title text-dark">Thông tin chỉnh sửa</h5>
							<div class="row">
								<div class="col-lg-12">
									<div class="card">
										<div class="card-body">
											<div class="card-title text-info">Thông tin sản phẩm</div>
											<hr>
											<form action="infoproduct/btnUpdate" method="POST"
												enctype="multipart/form-data">
												<div class="form-group row">
													<label for="input-26" class="col-sm-2 col-form-label">Mã
														Sản Phẩm</label>
													<div class="col-sm-10">
														<input type="text"
															class="form-control form-control-rounded" id="txtid"
															readonly name="txtid"
															placeholder="Nhập vào mã sản phẩm...">
													</div>
												</div>
												<div class="form-group row">
													<label for="input-27" class="col-sm-2 col-form-label">Tên
														Sản Phẩm</label>
													<div class="col-sm-10">
														<input type="text"
															class="form-control form-control-rounded" id="txtname"
															name="txtname" placeholder="Nhập vào tên sản phẩm...">
													</div>
												</div>
												<div class="form-group row">
													<label for="input-28" class="col-sm-2 col-form-label">Giá
														Sản Phẩm</label>
													<div class="col-sm-10">
														<div class="input-group">
															<div class="input-group-prepend">
																<span class="input-group-text">$</span>
															</div>
															<input id="txtprice" name="txtprice" type="text"
																class="form-control">
															<div class="input-group-append">
																<span class="input-group-text">.000</span>
															</div>
														</div>
													</div>
												</div>
												<div class="form-group row">
													<label for="input-29" class="col-sm-2 col-form-label">Chất
														Liệu</label>
													<div class="col-sm-10">

														<select id="txtcategoryId" name="txtcategoryId"
															class="form-control single-select">
															<c:forEach var="listCategory" items="${listCategory }">
																<option value="${listCategory.id }">${listCategory.name }
																	[${listCategory.id }]</option>
															</c:forEach>
														</select>
													</div>
												</div>
												<div class="form-group row">
													<label for="input-29" class="col-sm-2 col-form-label">Chất
														Liệu</label>
													<div class="col-sm-10">

														<select id="txtmaterial" name="txtmaterial"
															class="form-control single-select">
															<c:forEach var="listMaterial" items="${listMaterial }">
																<option value="${listMaterial.name }">${listMaterial.name }</option>
															</c:forEach>
														</select>
													</div>
												</div>
												<div class="form-group row">
													<label for="input-29" class="col-sm-2 col-form-label">Màu
														Sắc</label>
													<div class="col-sm-10">
														<select id="txtcolor" name="txtcolor"
															class="form-control single-select">
															<c:forEach var="listColor" items="${listColor }">
																<option value="${listColor.name }">${listColor.name }</option>
															</c:forEach>
														</select>
													</div>
												</div>
												<div class="form-group row">
													<label for="input-30" class="col-sm-2 col-form-label">Mô
														Tả</label>
													<div class="col-sm-10">
														<textarea rows="4" class="form-control"
															id="txtdescription" name="txtdescription"></textarea>
													</div>
												</div>
												<div class="form-group row">
													<label for="input-27" class="col-sm-2 col-form-label">Mô
														Tả Ngắn</label>
													<div class="col-sm-10">
														<input type="text"
															class="form-control form-control-rounded"
															id="txtshortDescription" name="txtshortDescription"
															placeholder="Nhập vào mô tả ngắn...">
													</div>
												</div>
												<div class="form-group row">
													<label class="col-sm-2 col-form-label">Hình Ảnh</label>
													<div class="col-sm-10">
														<div class="input-group mb-3">
															<div class="input-group-prepend">
																<span class="input-group-text">Upload</span>
															</div>
															<div class="custom-file">
																<input type="file" class="custom-file-input" id="file4"
																	name="file4"> <label class="custom-file-label"
																	for="inputGroupFile01">Chọn hình Ảnh</label>
															</div>
														</div>
													</div>
												</div>
												<div class="form-group row">
													<label class="col-sm-2 col-form-label">Hình Ảnh 2</label>
													<div class="col-sm-10">
														<div class="input-group mb-3">
															<div class="input-group-prepend">
																<span class="input-group-text">Upload</span>
															</div>
															<div class="custom-file">
																<input type="file" class="custom-file-input" id="file5"
																	name="file5"> <label class="custom-file-label"
																	for="inputGroupFile01">Chọn hình Ảnh</label>
															</div>
														</div>
													</div>
												</div>
												<div class="form-group row">
													<label class="col-sm-2 col-form-label">Hình Ảnh 3</label>
													<div class="col-sm-10">
														<div class="input-group mb-3">
															<div class="input-group-prepend">
																<span class="input-group-text">Upload</span>
															</div>
															<div class="custom-file">
																<input type="file" class="custom-file-input" id="file6"
																	name="file6"> <label class="custom-file-label"
																	for="inputGroupFile01">Chọn hình Ảnh</label>
															</div>
														</div>
													</div>
												</div>
												<div class="form-group row">
													<label class="col-md-8 col-form-label"></label>
													<div class="col-md-2">
														<button type="submit" name="btnUpdate"
															class="btn btn-primary shadow-primary btn-round px-5 btnUpdate">
															<i class="zmdi zmdi-collection-plus"></i> Lưu
														</button>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
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
		<script
			src="/resources/admin/assets/plugins/simplebar/js/simplebar.js"></script>
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

<!-- Dropzone JS  -->
  <script src="/resources/admin/assets/plugins/dropzone/js/dropzone.js"></script>
		<!--Sweet Alerts -->
		<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>

		<!--Toastr -->
		<script
			src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
		<!-- Ajax  -->
		<script src="/resources/admin/build/customJS/ajaxofinfoproduct.js"></script>
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
			$(document).ready(function() {
						//Default data table
						$('#default-datatable').DataTable();

						var table = $('#example').DataTable(
								{
									lengthChange : false,
									buttons : [ 'copy', 'excel', 'pdf',
											'print', 'colvis' ]
								});

						table.buttons().container().appendTo(
								'#example_wrapper .col-md-6:eq(0)');

					});
		</script>
</body>
</html>