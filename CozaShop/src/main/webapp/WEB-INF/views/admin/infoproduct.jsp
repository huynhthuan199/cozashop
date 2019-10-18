
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
<link href="/resources/admin/build/css/custom.min.css" rel="stylesheet">
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
			<!-- /top navigation -->
			<!-- page content -->
			<div class="right_col" role="main">
				<div class="">
					<div class="page-title">
						<div class="title_left">
							<h3>Thông tin sản phẩm</h3>
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
									<h2>Thông tin sản phẩm</h2>
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
								<form action="infoproduct/btnInsert" method="POST" enctype="multipart/form-data"> 
								<div class="x_content">
									<br />
									<div class="col-sm-4">
										<div class="form-group">
											<label class="control-label" for="first-name">Tên sản
												phẩm <span class="required">*</span>
											</label> <input type="text" id="addName" name="addName" required="required"
												class="form-control">
										</div>
										<div class="form-group" style="margin-top: 20px">
											<label class="control-label" for="first-name">Mã sản
												phẩm <span class="required">*</span>
											</label> <input type="text" id="addId" name="addId" required="required"
												class="form-control">
										</div>
										<div class="form-group" style="margin-top: 20px">
											<label class="control-label" for="first-name">Mã danh
												mục <span class="required">*</span>
											</label> <select id="addCategoryId" name="addCategoryId" required="required"
												class="form-control">
												<c:forEach var="listCategory" items="${listCategory }">
													<option value="${listCategory.id }">${listCategory.name } [${listCategory.id }]</option>
												</c:forEach>
											</select>
										</div>
									</div>

									<div class="col-sm-4">
										<div class="form-group">
											<label class="control-label" for="first-name">Giá
												tiền <span class="required">*</span>
											</label> <input type="text" id="addPrice" name="addPrice" required="required"
												class="form-control">
										</div>
										<div class="form-group" style="margin-top: 20px">
											<label class="control-label" for="first-name">Chất
												Liệu<span class="required">*</span>
											</label> <input type="text" id="addMaterial" name="addMaterial" required="required"
												class="form-control">
										</div>
										<div class="form-group" style="margin-top: 20px">
											<label class="control-label" for="first-name">Màu sắc
											 <span class="required">*</span>
											</label> <select id="addColor" name="addColor" required="required"
												class="form-control">
												<option value="Đỏ">Đỏ</option>
												<option value="Cam">Cam</option>
												<option value="Vàng">Vàng</option>
												<option value="Lục">Lục</option>
												<option value="Lam">Lam</option>
												<option value="Tràm">Tràm</option>
												<option value="Tím">Tím</option>
												<option value="Đen">Đen</option>
												<option value="Xám">Xám</option>
												<option value="Trắng">Trắng</option>
											</select>
										</div>
									</div>

									<div class="col-sm-4">
										<div class="form-group">
											<label for="exampleFormControlTextarea3">Mô tả sản
												phẩm</label>
											<textarea class="form-control"
												id="addDescription" name="addDescription" rows="5 "></textarea>
										</div>
										<div class="form-group" style="margin-top: 20px">
											<label class="control-label" for="first-name">Hình
												ảnh </label>
									
												<input type="file" id="file" name="file">	
										</div>
									</div>

									<button type="submit" class="btn btn-primary btnInsert"
										style="float: right; margin-top: 30px">
										<i class="fa fa-refresh"> Thêm</i>
									</button>
									<button type="button" class="btn btn-danger"
										style="float: right; margin-top: 30px">
										<i class="fa fa-trash"> Xóa</i>
									</button>
									<button type="button" class="btn btn-success"
										style="float: right; margin-top: 30px">
										<i class="fa fa-inbox"> Lưu</i>
									</button>
								</div>
								</form>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-6 col-xs-12">
							<div class="x_panel" style="width: 1079px">
								<div class="x_title">
									<h2>Danh sách sản phẩm</h2>
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
													<th class="column-title">Mã sản phẩm</th>
													<th class="column-title">Mã danh mục</th>
													<th class="column-title">Tên sản phẩm</th>
													<th class="column-title">Giá tiền</th>
													<th class="column-title">Chất liệu</th>
													<th class="column-title">Màu sắc</th>
													<th class="column-title">Ngày tạo</th>
													<th class="column-title">Mô tả</th>
													<th class="column-title">Hình ảnh</th>
													<th class="column-title">Hành động</th>
												</tr>
											</thead>

											<tbody>
												<c:forEach var="product" items="${listProduct}">
													<tr class="even pointer">
														<td class=" ">${product.id }</td>
														<td class=" ">${product.category.id }</td>
														<td class=" ">${product.name }</td>
														<td class=" ">${product.price }</td>
														<td class=" ">${product.material }</td>
														<td class=" ">${product.color }</td>
														<td class=" ">${product.createAt }</td>
														<td class=" ">${product.description }</td>
														<td class=" last"><img
															style="width: 50px; height: 50px"
															src="/resources/web/images/${product.image }" /></td>
														<td class=" ">
															<button type="button" class="btn btn-warning">
																<i class="fa fa-pencil"> Sửa</i>
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
	<!-- jQuery -->
	<script src="/resources/admin/vendors/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script
		src="/resources/admin/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
	<script
				src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
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
<script>
			toastr.options = {
		  					 "closeButton": false,
		  					 "debug": false,
		  					 "newestOnTop": false,
		  					 "progressBar": true,
		       				 "positionClass": "toast-top-right",
		  					 "preventDuplicates": false,
		  "onclick": null,
		  "showDuration": "300",
		  "hideDuration": "1000",
		  "timeOut": "5000",
		  "extendedTimeOut": "1000",
		  "showEasing": "swing",
		  "hideEasing": "linear",
		  "showMethod": "fadeIn",
		  "hideMethod": "fadeOut"
		}
		</script>
 <!-- Insert  -->
			<!-- <script type="text/javascript">
$(document).ready(function(){
	$('.btnInsert').click(function(){
	var addId = $('#addId').val();
	var addName = $('#addName').val();
	var addPrice = $('#addPrice').val();
	var addMaterial = $('#addMaterial').val();
	var addColor = $('#addColor').val();
	var addcategoryId = $("#addCategoryId option:selected" ).val();
	var addDescription = $('#addDescription').val();
	/* var addFile = $('#file').prop('files'); */
 		$.ajax({
 			type : "GET",
			url : "infoproduct/btnInsert",
			data : {  
				 id : addId,
				 name : addName,
				 price : addPrice,
				 material : addMaterial,
				 color : addColor,
				 categoryId : addcategoryId,
				 description : addDescription
				/*  file : addFile */
			} 
		}).done(function(data){
				/* Command: toastr[data.status](data.message, "Thông Báo")
				if(data.status == "success"){	
					Command: toastr[data.status](data.message, "Thông Báo")
				location.reload();
				} */		
				console.log(data);
		}).fail(function(err){
			console.log(err);
			Command: toastr["warning"]("Thêm thất bại", "Thông Báo")
		}); 
	});
});
</script> -->
</body>
</html>