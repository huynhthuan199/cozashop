
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
  <link href="/resources/admin/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- Font Awesome -->
  <link href="/resources/admin/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <!-- NProgress -->
  <link href="/resources/admin/vendors/nprogress/nprogress.css" rel="stylesheet">
  <!-- iCheck -->
  <link href="/resources/admin/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
  <!-- bootstrap-wysiwyg -->
  <link href="/resources/admin/vendors/google-code-prettify/bin/prettify.min.css" rel="stylesheet">
  <!-- Select2 -->
  <link href="/resources/admin/vendors/select2/dist/css/select2.min.css" rel="stylesheet">
  <!-- Switchery -->
  <link href="/resources/admin/vendors/switchery/dist/switchery.min.css" rel="stylesheet">
  <!-- starrr -->
  <link href="/resources/admin/vendors/starrr/dist/starrr.css" rel="stylesheet">
  <!-- bootstrap-daterangepicker -->
  <link href="/resources/admin/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

  <!-- Custom Theme Style -->
  <link href="/resources/admin/build/css/custom.min.css" rel="stylesheet">
</head>

<body class="nav-md">

<div class="container body">
	<div class="main_container">
		<!--  include nav -->
		<%@ include file="./block/nav.jsp"%>
		<!-- top navigation -->
		<%@ include file="./block/topnav.jsp"%>
		<!-- /top navigation -->

		<!-- page content -->
		<div class="right_col" role="main">
			<div class="">
				<div class="page-title">
					<div class="title_left">
						<h3>Đơn hàng</h3>
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
								<h2>Thông tin đơn hàng</h2>
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
										<label class="control-label" for="first-name">Mã đơn
											hàng <span class="required">*</span>
										</label> <input type="text" id="first-name" required="required"
											class="form-control">
									</div>
									<div class="form-group">
										<label class="control-label" for="first-name">Mã nhân
											viên <span class="required">*</span>
										</label> <input type="text" id="first-name" required="required"
											class="form-control">
									</div>
									<div class="form-group" style="margin-top: 20px">
										<label class="control-label" for="first-name">Tên
											khách hàng <span class="required">*</span>
										</label> <input type="text" id="first-name" required="required"
											class="form-control">
									</div>
								</div>

								<div class="col-sm-4">
									<div class="form-group">
										<label class="control-label" for="first-name">Địa chỉ
											<span class="required">*</span>
										</label> <input type="text" id="first-name" required="required"
											class="form-control">
									</div>
									<div class="form-group">
										<label class="control-label" for="first-name">Email <span
											class="required">*</span>
										</label> <input type="text" id="first-name" required="required"
											class="form-control">
									</div>
									<div class="form-group" style="margin-top: 20px">
										<label class="control-label" for="first-name">Ngày đặt
										</label> <input type="text" id="first-name" required="required"
											class="form-control">
									</div>


								</div>

								<div class="col-sm-4">
									<div class="form-group">
										<label class="control-label" for="first-name">Trạng
											thái <span class="required">*</span>
										</label> <select id="first-name" required="required"
											class="form-control">
											<option>Chờ xử lý</option>
											<option>Đang xử lý</option>
											<option>Đã xử lý</option>
											<option>Đang giao</option>
											<option>Hoàn thành</option>
											<option>Thất bại</option>
										</select>
									</div>
								</div>

								<button type="button" class="btn btn-primary"
									style="float: right; margin-top: 130px">
									<i class="fa fa-refresh"> Thêm</i>
								</button>
								<button type="button" class="btn btn-danger"
									style="float: right; margin-top: 130px">
									<i class="fa fa-trash"> Xóa</i>
								</button>
								<button type="button" class="btn btn-success"
									style="float: right; margin-top: 130px">
									<i class="fa fa-inbox"> Lưu</i>
								</button>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-6 col-xs-12">
						<div class="x_panel" style="width: 1079px">
							<div class="x_title">
								<h2>Danh sách đơn hàng</h2>
								<ul class="nav navbar-right panel_toolbox">
									<li><a class="collapse-link"><i
											class="fa fa-chevron-up"></i></a></li>
									<li class="dropdown"><a href="#" class="dropdown-toggle"
										data-toggle="dropdown" role="button" aria-expanded="false"><i
											class="fa fa-wrench"></i></a></li>
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
												<th class="column-title">STT</th>
												<th class="column-title">Mã HĐ</th>
												<th class="column-title">Mã NV</th>
												<th class="column-title">Họ tên</th>
												<th class="column-title">Địa chỉ</th>
												<th class="column-title">Email</th>
												<th class="column-title">Ngày đặt hàng</th>
												<th class="column-title">Trạng thái</th>
												<th class="column-title">Hành động</th>
											</tr>
										</thead>
										<tbody>
											<tr class="even pointer">
												<td class=" ">1</td>
												<td class=" ">DH001</td>
												<td class=" ">AM001</td>
												<td class=" ">Tèo</td>
												<td class=" ">TP HCM</td>
												<td class=" ">teolm@gmail.com</td>
												<td class=" ">23-09-2019</td>
												<td class=" ">Chờ xử lý</td>
												<td class=" ">
													<button type="button" class="btn btn-warning">
														<a href="DonHangChiTiet.html" class="fa fa-eye"
															style="color: white"> </a>
													</button>
												</td>
											</tr>
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
<script src="/resources/admin/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="/resources/admin/vendors/fastclick/lib/fastclick.js"></script>
<!-- NProgress -->
<script src="/resources/admin/vendors/nprogress/nprogress.js"></script>
<!-- bootstrap-progressbar -->
<script src="/resources/admin/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
<!-- iCheck -->
<script src="/resources/admin/vendors/iCheck/icheck.min.js"></script>
<!-- bootstrap-daterangepicker -->
<script src="/resources/admin/vendors/moment/min/moment.min.js"></script>
<script src="/resources/admin/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- bootstrap-wysiwyg -->
<script src="/resources/admin/vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
<script src="/resources/admin/vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
<script src="/resources/admin/vendors/google-code-prettify/src/prettify.js"></script>
<!-- jQuery Tags Input -->
<script src="/resources/admin/vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
<!-- Switchery -->
<script src="/resources/admin/vendors/switchery/dist/switchery.min.js"></script>
<!-- Select2 -->
<script src="/resources/admin/vendors/select2/dist/js/select2.full.min.js"></script>
<!-- Parsley -->
<script src="/resources/admin/vendors/parsleyjs/dist/parsley.min.js"></script>
<!-- Autosize -->
<script src="/resources/admin/vendors/autosize/dist/autosize.min.js"></script>
<!-- jQuery autocomplete -->
<script src="/resources/admin/vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
<!-- starrr -->
<script src="/resources/admin/vendors/starrr/dist/starrr.js"></script>
<!-- Custom Theme Scripts -->
<script src="/resources/admin/build/js/custom.min.js"></script>
</body>
</html>