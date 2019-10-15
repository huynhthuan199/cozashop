
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="col-md-3 left_col">
	<div class="left_col scroll-view">
		<div class="navbar nav_title" style="border: 0;">
			<a href="/admin/home" class="site_title"><i class="fa fa-paw"></i> <span>Coza
					Store</span></a>
		</div>

		<div class="clearfix"></div>

		<!-- menu profile quick info -->
		<div class="profile clearfix">
			<div class="profile_pic">
				<img src="/resources/admin/images/img.jpg" alt="..."
					class="img-circle profile_img">
			</div>
			<div class="profile_info">
				<span>Hello,</span>
				<h2>ADMIN</h2>
			</div>
		</div>
		<!-- /menu profile quick info -->

		<br />

		<!-- sidebar menu -->
		<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
			<div class="menu_section">
				<h3>General</h3>
				<ul class="nav side-menu">
					<li><a href="home"><i class="fa fa-home"></i> Trang
							chủ</a></li>
					<li><a><i class="fa fa-user"></i> Người dùng <span
							class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu">
							<li><a href="/admin/user">Quản trị</a></li>
							<li><a href="/admin/customer">Khách hàng</a></li>
						</ul></li>
					<li><a><i class="fa fa-edit"></i> Sản phẩm <span
							class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu">
							<li><a href="/admin/infoproduct">Thông tin sản phẩm</a></li>
							<li><a href="/admin/category">Danh mục sản phẩm</a></li>
						</ul></li>
					<li><a><i class="fa fa-desktop"></i> Đơn hàng <span
							class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu">
							<!--                     <li><a href="general_elements.html">Phiếu giao hàng</a></li> -->
							<li><a href="/admin/order">Đơn hàng</a></li>
						</ul></li>
					<li><a><i class="fa fa-bar-chart-o"></i> Thống kê <span
							class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu">
							<li><a href="chartjs.html">Doanh thu</a></li>
							<li><a href="chartjs2.html">Sản phẩm</a></li>
							<li><a href="morisjs.html">Đơn hàng</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<!-- /sidebar menu -->

		<!-- /menu footer buttons -->
		<div class="sidebar-footer hidden-small">
			<a data-toggle="tooltip" data-placement="top" title="Settings"> <span
				class="glyphicon glyphicon-cog" aria-hidden="true"></span>
			</a> <a data-toggle="tooltip" data-placement="top" title="FullScreen">
				<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
			</a> <a data-toggle="tooltip" data-placement="top" title="Lock"> <span
				class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
			</a> <a data-toggle="tooltip" data-placement="top" title="Logout"
				href="login.html"> <span class="glyphicon glyphicon-off"
				aria-hidden="true"></span>
			</a>
		</div>
		<!-- /menu footer buttons -->
	</div>
</div>