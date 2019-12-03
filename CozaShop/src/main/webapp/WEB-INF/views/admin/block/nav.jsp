
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<div id="sidebar-wrapper" data-simplebar=""
	data-simplebar-auto-hide="true">
	<div class="brand-logo">
		<a href="./home"> <img
			src="/resources/admin/assets/images/logo-icon.png" class="logo-icon"
			alt="logo icon">
			
		</a>
	</div>
	<div class="mx-auto mt-20" style="text-align: center;margin-top: 20px ">
			<img style="border-radius: 50px;" src="/resources/admin/assets/images/avatars/" alt="profile-image" class="profile">
			<h5 class="logo-text"><sec:authentication property="principal.fullname" /> </h5>
			<span id="lblidUser" style="display: none"><sec:authentication property="principal.id" /> </span>
			</div>
			
	<ul class="sidebar-menu do-nicescrol">
		<li class="sidebar-header">Quản Lí Hệ Thống</li>
		<li><a href="./home" class="waves-effect"> <i
				class="zmdi zmdi-view-dashboard"></i> <span>Trang Chủ</span></i>
		</a></li>
		<sec:authorize access="hasRole('ROLE_ADMIN') and isAuthenticated()">
			<li><a href="javaScript:void();" class="waves-effect"> <i
					class="zmdi zmdi-accounts"></i> <span>Quản Lí Tài Khoản</span> <i
					class="fa fa-angle-left pull-right"></i>
			</a>
				<ul class="sidebar-submenu">
					<li><a href="./user"><i
							class="zmdi zmdi-assignment-account"></i>Nhân Viên</a></li>
					<li><a href="./customer"><i class="zmdi zmdi-account"></i>Khách
							Hàng</a></li>
				</ul>
			</li>
		</sec:authorize>
			<li><a href="javaScript:void();" class="waves-effect"> <i
					class="zmdi zmdi-layers"></i> <span>Quản Lí Sản Phẩm</span> <i
					class="fa fa-angle-left pull-right"></i>
			</a>
				<ul class="sidebar-submenu">
					<li><a href="./category"><i class="zmdi zmdi-star-outline"></i>Danh
							Mục</a></li>
					<li><a href="./infoproduct"><i
							class="zmdi zmdi-star-outline"></i>Sản Phẩm</a></li>
				</ul></li>
			<li><a href="javaScript:void();" class="waves-effect"> <i
					class="zmdi zmdi-layers"></i> <span>Quản Lí </span> <i
					class="fa fa-angle-left pull-right"></i>
			</a>
				<ul class="sidebar-submenu">
					<li><a href="./color"><i class="zmdi zmdi-star-outline"></i>Màu
							Sắc</a></li>
					<li><a href="./material"><i class="zmdi zmdi-star-outline"></i>Chất
							Liệu</a></li>
							<li><a href="./gift"><i class="zmdi zmdi-star-outline"></i>Khuyến Mãi</a></li>
				</ul></li>
			<li><a href="javaScript:void();" class="waves-effect"> <i
					class="zmdi zmdi-layers"></i> <span>Quản Lí </span> <i
					class="fa fa-angle-left pull-right"></i>
			</a>
				<ul class="sidebar-submenu">
					<li><a href="./contact"><i class="zmdi zmdi-star-outline"></i>Liên
							Hệ</a></li>
					<li><a href="./news"><i class="zmdi zmdi-star-outline"></i>Tin
							Tức</a></li>
				</ul></li>
	</ul>

</div>