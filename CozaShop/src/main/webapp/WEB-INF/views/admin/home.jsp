
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	rel="stylesheet" type="text/css">
<!-- iCheck -->
<link
	href="/resources/admin/vendors/iCheck/skins/flat/green.css"
	rel="stylesheet" type="text/css">

<!-- bootstrap-progressbar -->
<link
	href="/resources/admin/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css"
	rel="stylesheet">
<!-- JQVMap -->
<link
	href="/resources/admin/vendors/jqvmap/dist/jqvmap.min.css"
	rel="stylesheet" />
<!-- bootstrap-daterangepicker -->
<link
	href="/resources/admin/vendors/bootstrap-daterangepicker/daterangepicker.css"
	rel="stylesheet">
<!-- Custom Theme Style -->
<link href="/resources/admin/build/css/custom.min.css"
	rel="stylesheet">
</head>

<body class="nav-md">
	<!-- body  -->
	<div class="container body">
		<div class="main_container">
			<!-- include navbar  -->
			<%@ include file="./block/nav.jsp"%>
			<!-- top navigation -->
			<%@ include file="./block/topnav.jsp"%>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">
				<!-- top tiles -->
				<div class="row tile_count">
					<div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
						<span class="count_top"><i class="fa fa-shopping-cart"></i>
							Tổng đơn hàng</span>
						<div class="count">0</div>
						<span class="count_bottom"><i class="green">4% </i>Trong
							tuần này</span>
					</div>
					<div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
						<span class="count_top"><i class="fa fa-clock-o"></i> Doanh
							số </span>
						<div class="count">0</div>
						<span class="count_bottom"><i class="green">4% </i>Trong
							tuần này</span>
					</div>
					<div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
						<span class="count_top"><i class="fa fa-user"></i> Tổng số
							khách hàng</span>
						<div class="count green">0</div>
						<span class="count_bottom"><i class="green">4% </i>Trong
							tuần này</span>
					</div>
					<div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
						<span class="count_top"><i class="fa fa-user"></i> Khách
							đang truy cập</span>
						<div class="count">0</div>
						<span class="count_bottom"><i class="green">4% </i>Trong
							tuần này</span>
					</div>
				</div>
				<!-- /top tiles -->

				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="dashboard_graph">

							<div class="row x_title">
								<div class="col-md-6">
									<h3>Thống kê bán hàng</h3>
								</div>
								<div class="col-md-6">
									<div id="reportrange" class="pull-right"
										style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc">
										<i class="glyphicon glyphicon-calendar fa fa-calendar"></i> <span>Tháng
											9 23, 2019 - Tháng 12 03, 2019</span> <b class="caret"></b>
									</div>
								</div>
							</div>

							<div class="col-md-9 col-sm-9 col-xs-12">
								<div id="chart_plot_01" class="demo-placeholder"></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-12 bg-white">
								<div class="x_title">
									<h2>Chú thích</h2>
									<div class="clearfix"></div>
								</div>

								<div class="col-md-12 col-sm-12 col-xs-6">
									<div>
										<p>Đơn hàng đã bán</p>
										<div class="">
											<div class="progress progress_sm" style="width: 76%;">
												<div class="progress-bar bg-green" role="progressbar"
													data-transitiongoal="80"></div>
											</div>
										</div>
									</div>
									<div>
										<p>Nguồn khách hàng</p>
										<div class="">
											<div class="progress progress_sm" style="width: 76%;">
												<div class="progress-bar bg-green" role="progressbar"
													data-transitiongoal="60"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>

				</div>
				<br />

				<div class="row">
					<div class="col-md-4 col-sm-4 col-xs-12">
						<div class="x_panel tile fixed_height_320 overflow_hidden"
							style="width: 1079px; height: 379px">
							<div class="x_title">
								<h2>Thông tin nhân viên tiêu biểu</h2>
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
									<li><a class="close-link"><i class="fa fa-close"></i></a></li>
								</ul>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<div class="x_content">

									<p>
										Add class
										<code>bulk_action</code>
										to table for bulk actions options on row select
									</p>

									<div class="table-responsive">
										<table class="table table-striped jambo_table bulk_action">
											<thead>
												<tr class="headings">
													<th><input type="checkbox" id="check-all" class="flat">
													</th>
													<th class="column-title">Id</th>
													<th class="column-title">Họ Tên</th>
													<th class="column-title">Số điện thoại</th>
													<th class="column-title">Giới tính</th>
													<th class="column-title">Ngày thống kê</th>
													<th class="column-title no-link last"><span
														class="nobr">Action</span></th>
													<th class="bulk-actions" colspan="7"><a class="antoo"
														style="color: #fff; font-weight: 500;">Bulk Actions (
															<span class="action-cnt"> </span> ) <i
															class="fa fa-chevron-down"></i>
													</a></th>
												</tr>
											</thead>

											<tbody>
												<tr class="even pointer">
													<td class="a-center "><input type="checkbox"
														class="flat" name="table_records"></td>
													<td class=" ">121000040</td>
													<td class=" ">Ngyễn Ngọc Gia Huy</td>
													<td class=" ">0939135074</td>
													<td class=" ">Nam</td>
													<td class=" ">May 23, 2014 11:47:56 PM</td>
													<td class=" last"><a href="#">
															<button type="button" class="btn btn-success">Info</button>
													</a></td>
												</tr>
												<tr class="even pointer">
													<td class="a-center "><input type="checkbox"
														class="flat" name="table_records"></td>
													<td class=" ">121000041</td>
													<td class=" ">Ngyễn Huỳnh Thuận</td>
													<td class=" ">0868926037</td>
													<td class=" ">Nam</td>
													<td class=" ">May 23, 2014 11:47:56 PM</td>
													<td class=" last"><a href="#">
															<button type="button" class="btn btn-success">Info</button>
													</a></td>
												</tr>
												<tr class="even pointer">
													<td class="a-center "><input type="checkbox"
														class="flat" name="table_records"></td>
													<td class=" ">121000042</td>
													<td class=" ">Lê Định Thành</td>
													<td class=" ">0929357148</td>
													<td class=" ">Nam</td>
													<td class=" ">May 23, 2014 11:47:56 PM</td>
													<td class=" last"><a href="#">
															<button type="button" class="btn btn-success">Info</button>
													</a></td>
												</tr>
												<tr class="even pointer">
													<td class="a-center "><input type="checkbox"
														class="flat" name="table_records"></td>
													<td class=" ">121000043</td>
													<td class=" ">Ngyễn Phúc Khang</td>
													<td class=" ">0342487692</td>
													<td class=" ">Nam</td>
													<td class=" ">May 23, 2014 11:47:56 PM</td>
													<td class=" last"><a href="#">
															<button type="button" class="btn btn-success">Info</button>
													</a></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-8 col-sm-8 col-xs-12">
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12" style="width: 1099px">
								<div class="x_panel">
									<div class="x_title">
										<h2>Bản đồ</h2>
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
										<div class="dashboard-widget-content">
											<div id="world-map-gdp" class="col-md-8 col-sm-12 col-xs-12"
												style="height: 340px; width: 1099px"></div>
										</div>
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
	<script
		src="/resources/admin/vendors/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script
		src="/resources/admin/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script
		src="/resources/admin/vendors/fastclick/lib/fastclick.js"></script>
	<!-- NProgress -->
	<script src="/resources/admin/vendors/nprogress/nprogress.js"></script>
	<!-- Chart.js -->
	<script
		src="/resources/admin/vendors/Chart.js/dist/Chart.min.js"></script>
	<!-- gauge.js -->
	<script
		src="/resources/admin/vendors/gauge.js/dist/gauge.min.js"></script>
	<!-- bootstrap-progressbar -->
	<script
		src="/resources/admin/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
	<!-- iCheck -->
	<script src="/resources/admin/vendors/iCheck/icheck.min.js"></script>
	<!-- Skycons -->
	<script src="/resources/admin/vendors/skycons/skycons.js"></script>
	<!-- Flot -->
	<script src="/resources/admin/vendors/Flot/jquery.flot.js"></script>
	<script
		src="/resources/admin/vendors/Flot/jquery.flot.pie.js"></script>
	<script
		src="/resources/admin/vendors/Flot/jquery.flot.time.js"></script>
	<script
		src="/resources/admin/vendors/Flot/jquery.flot.stack.js"></script>
	<script
		src="/resources/admin/vendors/Flot/jquery.flot.resize.js"></script>
	<!-- Flot plugins -->
	<script
		src="/resources/admin/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
	<script
		src="/resources/admin/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
	<script
		src="/resources/admin/vendors/flot.curvedlines/curvedLines.js"></script>
	<!-- DateJS -->
	<script src="/resources/admin/vendors/DateJS/build/date.js"></script>
	<!-- JQVMap -->
	<script
		src="/resources/admin/vendors/jqvmap/dist/jquery.vmap.js"></script>
	<script
		src="/resources/admin/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
	<script
		src="/resources/admin/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
	<!-- bootstrap-daterangepicker -->
	<script
		src="/resources/admin/vendors/moment/min/moment.min.js"></script>
	<script
		src="/resources/admin/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
	<!-- Custom Theme Scripts -->
	<script src="/resources/admin/build/js/custom.min.js"></script>
</body>
</html>