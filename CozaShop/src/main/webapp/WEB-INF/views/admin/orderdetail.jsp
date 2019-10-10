
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
<style type="text/css">
  .delivery-info{
    font-size: 13px;
  }
  .delivery-title h3, .delivery-title a, .delivery-title i {
    font-size: 18px;
  }
  .delivery-info .delivery-title {
    background-color: #ecf3fb;
    margin-left: -15px;
    margin-right: -15px;
    padding: 10px 20px;
  }
  .delivery-title a, .delivery-title i, .delivery-title a:visited, .delivery-title a:focus, .delivery-title a .next-heading {
    color: #479ccf;
  }
  .delivery-title.cancelled a, .delivery-title.cancelled i, .delivery-title.cancelled a:visited, .delivery-title.cancelled a:focus, .delivery-title.cancelled a .next-heading {
    color: #8a8b8c;
  }
  .delivery-info .delivery-title.cancelled {
    background-color: #ececec;
  }
  .delivery-info .delivery-icon {
    margin-right: 5px;
  }
  .padding-top {
    padding-top: 10px !important;
  }
  .padding-bottom {
    padding-bottom: 10px;
  }
  .type-subdued {
    color: #798c9c;
  }
  hr.no-margin-top {
    margin-top: 0;
    margin-bottom: 18px;
    border: 0;
    border-top: 1px solid #eee;
  }
  .margin-md-bottom {
    margin-bottom: 16px !important;
  }
  .no-margin {
    margin: 0;
  }
  .btn-default {
    background-color: #fcfcfc;
    color: #479ccf;
  }
  .btn.disabled {
    background: #fafbfc;
    color: #c3cfd8;
    border: 1px solid #d3dbe2;
  }
  .panel-title {
    line-height: 25px;
  }
</style>
 <link href="/resources/admin/vendors/nprogress/nprogress.css" rel="stylesheet">
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
					<div class="col-md-8 pull-left col-sm-12 col-xs-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">Chi tiết Đơn hàng (TG Shopme)</h3>
							</div>
							<div class="panel-body">
								<table class="table table-bordered">
									<thead>
										<tr>
											<td style="width: 50%;" class="text-left">Địa chỉ thanh
												toán</td>
											<td style="width: 50%;" class="text-left">Địa chỉ nhận
												hàng</td>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="text-left">nguyen van a<br>la ca<br>Hà
												Giang<br>Hà Giang<br>Việt Nam
											</td>
											<td class="text-left">nguyen van a<br>la ca<br>Hà
												Giang<br>Hà Giang<br>Việt Nam
											</td>
										</tr>
									</tbody>
								</table>
								<table class="table">
									<thead>
										<tr>
											<td class="text-left">Sản phẩm</td>
											<td class="text-right">Unit Price</td>
											<td width="1"></td>
											<td class="text-right"></td>
											<td class="text-right">Tổng</td>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="text-left"><img src=""> <strong><a>Tảo
														xoắn Spirulina</a></strong></td>
											<td class="text-right">550.000đ</td>
											<td width="1" class="hidden-sm hidden-xs">×</td>
											<td class="text-left">1</td>
											<td class="text-right">550.000đ</td>
										</tr>
										<tr>
											<td colspan="4" class="text-right">Thành tiền</td>
											<td class="text-right">550.000đ</td>
										</tr>
										<tr>
											<td colspan="4" class="text-right">Phí vận chuyển Toàn
												Quốc</td>
											<td class="text-right">35.000đ</td>
										</tr>
										<tr>
											<td colspan="4" class="text-right">Tổng số</td>
											<td class="text-right">585.000đ</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>


					</div>

					<div class="col-md-4 pull-right col-sm-12 col-xs-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">Khách hàng</h3>
							</div>
							<table class="table">
								<tbody>
									<tr>
										<td style="width: 1%;">
											<button data-toggle="tooltip" title=""
												class="btn btn-info btn-xs" data-original-title="Khách hàng">
												<i class="fa fa-user fa-fw"></i>
											</button>
										</td>
										<td>nguyen van a</td>
									</tr>
									<tr>
										<td>
											<button data-toggle="tooltip" title=""
												class="btn btn-info btn-xs"
												data-original-title="Nhóm khách hàng">
												<i class="fa fa-group fa-fw"></i>
											</button>
										</td>
										<td>Default</td>
									</tr>
									<tr>
										<td>
											<button data-toggle="tooltip" title=""
												class="btn btn-info btn-xs" data-original-title="Email">
												<i class="fa fa-envelope-o fa-fw"></i>
											</button>
										</td>
										<td><a href="mailto:ptduong1988@gmai.com">ptduong1988@gmai.com</a></td>
									</tr>
									<tr>
										<td>
											<button data-toggle="tooltip" title=""
												class="btn btn-info btn-xs" data-original-title="Điện thoại">
												<i class="fa fa-phone fa-fw"></i>
											</button>
										</td>
										<td>0974979958</td>
									</tr>
								</tbody>
							</table>
						</div>

						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">Thông tin bổ sung</h3>
							</div>
							<table class="table">
								<tbody>
									<tr>
										<td>Hoá đơn</td>
										<td id="invoice" class="text-right"></td>
										<td style="width: 1%;" class="text-center">
											<button id="button-invoice" data-loading-text="Đang xử lý..."
												data-toggle="tooltip" title=""
												class="btn btn-success btn-xs"
												data-original-title="Tạo mã mới">
												<i class="fa fa-cog"></i>
											</button>
										</td>
									</tr>
									<tr>
										<td>Điểm thưởng</td>
										<td class="text-right">0</td>
										<td class="text-center">
											<button disabled="disabled" class="btn btn-success btn-xs">
												<i class="fa fa-plus-circle"></i>
											</button>
										</td>
									</tr>
									<tr>
										<td>Cộng tác viên</td>
										<td class="text-right">0đ</td>
										<td class="text-center">
											<button disabled="disabled" class="btn btn-success btn-xs">
												<i class="fa fa-plus-circle"></i>
											</button>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>

				<div class="row"></div>
			</div>
		</div>
		<!-- /page content -->

		<!-- footer content -->
		<%@ include file="./block/footer.jsp"%>
		<!-- /footer content -->
	</div>
</div>
<script src="/resources/admin/vendors/jquery/dist/jquery.min.js"></script>
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