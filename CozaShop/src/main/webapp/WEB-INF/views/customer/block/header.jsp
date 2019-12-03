<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- Header desktop -->
<div class="container-menu-desktop">
	<!-- Topbar -->
	<div class="top-bar" id="profile">
		<div class="content-topbar flex-sb-m h-full container">
			<div class="left-top-bar">
				<marquee>Miễn Phí Ship Cho Đơn hàng Trên 1.000.000 VNĐ</marquee>
			</div>
			 <c:if test="${customer == null }"> 
			<div class="right-top-bar flex-w h-full">
				<a href="./contact" class="flex-c-m trans-04 p-lr-25"> Help & FAQs </a>
				<button style="border: 0px">
					<a href="/login?regist=regist" class="flex-c-m trans-04 p-lr-25"> Đăng ký </a>
				</button>
				<button style="border: 0px" type="button" data-toggle="modal"
	data-target="#loginCustomer">
					<a href="/login" class="flex-c-m trans-04 p-lr-25">Đăng nhập</a>
				</button>
				<a href="#" class="flex-c-m trans-04 p-lr-25"> VIETNAM </a> <a
					href="#" class="flex-c-m trans-04 p-lr-25"> VNĐ </a>
			</div>
			 </c:if>
		 	<c:if test="${customer != null }">
			<div class="right-top-bar flex-w h-full">
				<a href="#" class="flex-c-m trans-04 p-lr-25">Xin Chào ${customer.name }</a>
				<button data-id="${customer.id }" style="border: 0px" type="button" class="editCustomer">
					 <a href="#" class="flex-c-m trans-04 p-lr-25">Thông tin</a>
				</button>
				<button style="border: 0px" type="submit">
					<a href="/logout2" class="flex-c-m trans-04 p-lr-25">Đăng xuất</a>
				</button>
				<a href="#" class="flex-c-m trans-04 p-lr-25"> VIETNAM </a> <a
					href="#" class="flex-c-m trans-04 p-lr-25"> VNĐ </a>
			</div>
			</c:if> 
		</div>
	</div>
	<div class="wrap-menu-desktop">
		<nav class="limiter-menu-desktop container">

			<!-- Logo desktop -->
			<a href="/index" class="logo"> <img
				src="/resources/web/images/icons/logo-01.png" alt="IMG-LOGO">
			</a>

			<!-- Menu desktop -->
			<div class="menu-desktop">
				<ul class="main-menu">
					<li class="active-menu"><a href="/index">Trang chủ</a></li>
					<li class="label1" data-label1="hot"><a href="/product">Sản
							phẩm</a></li>
					<li><a href="/cart/show">Giỏ hàng</a></li>
					<li class="label1" data-label1="new"><a href="/blog">Tin
							tức</a></li>
					<li><a href="/about">Về chúng tôi</a></li>
					<li><a href="/contact">Liên hệ</a></li>
				</ul>
			</div>
			<!-- Icon header -->
			<div class="wrap-icon-header flex-w flex-r-m">
				<div
					class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
					<i class="zmdi zmdi-search"></i>
				</div>
				<div id="cart-remove"
					class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart"
					data-notify="0">
					<i id="show-cart" class="zmdi zmdi-shopping-cart show-cart"></i>
				</div>
				<a href="#"
					class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti"
					data-notify="0"> <i class="zmdi zmdi-favorite-outline"></i>
				</a>
			</div>
		</nav>
	</div>
</div>

<!-- Header Mobile -->
<div class="wrap-header-mobile">
	<!-- Logo moblie -->
	<div class="logo-mobile">
		<a href="index"><img src="/resources/web/images/icons/logo-01.png"
			alt="IMG-LOGO"></a>
	</div>

	<!-- Icon header -->
	<div class="wrap-icon-header flex-w flex-r-m m-r-15">
		<div
			class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
			<i class="zmdi zmdi-search"></i>
		</div>

		<div
			class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart"
			data-notify="2">
			<i class="zmdi zmdi-shopping-cart"></i>
		</div>

		<a href="#"
			class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti"
			data-notify="0"> <i class="zmdi zmdi-favorite-outline"></i>
		</a>
	</div>

	<!-- Button show menu -->
	<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
		<span class="hamburger-box"> <span class="hamburger-inner"></span>
		</span>
	</div>
</div>


<!-- Menu Mobile -->
<div class="menu-mobile">
	<ul class="topbar-mobile">
		<li>
			<div class="left-top-bar">Free shipping for standard order over
				$100</div>
		</li>

		<li>
			<div class="right-top-bar flex-w h-full">
				<a href="#" class="flex-c-m p-lr-10 trans-04"> Help & FAQs </a> <a
					href="#" class="flex-c-m p-lr-10 trans-04"> My Account </a> <a
					href="#" class="flex-c-m p-lr-10 trans-04"> EN </a> <a href="#"
					class="flex-c-m p-lr-10 trans-04"> USD </a>
			</div>
		</li>
	</ul>

	<ul class="main-menu-m">
		<li><a href="index">Home</a>
			<ul class="sub-menu-m">
				<li><a href="index">Home page</a></li>
			</ul> <span class="arrow-main-menu-m"> <i class="fa fa-angle-right"
				aria-hidden="true"></i>
		</span></li>

		<li><a href="product">Shop</a></li>

		<li><a href="shopingcart" class="label1 rs1" data-label1="hot">Features</a></li>

		<li><a href="blog">Blog</a></li>

		<li><a href="about">About</a></li>

		<li><a href="contact">Contact</a></li>
	</ul>
</div>

 <!-- Login Modal -->
<!--<div class="modal fade" style="z-index: 9999; margin-top:100px" id="loginCustomer"
	tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
	aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">Đăng Nhập</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
			<form action ="/login" method="POST">
				<div class="form-group">
					<label class="font-italic">Tài Khoản *</label>
					 <input id="txtloginUsername" value="OC4eHRcH" name="txtloginUsername" type="text" class="form-control">
				</div>
				<div class="form-group">
					<label class="font-italic">Mật Khẩu *</label> 
					<input id="txtloginPassword" value="rvrPbzeHXw" name="txtloginPassword" type="text" class="form-control">
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button type="submit" class="btn btn-primary" name="btnlogin">Đăng Nhập</button>
			</div>
			</form>
		</div>
	</div>
</div> -->
		<!-- Modal -->
		<div class="modal fade" style="z-index: 99999999" id="edit-customer">
			<div class="modal-dialog" style="max-width: 700px">
				<div class="modal-content animated jackInTheBox">
					<div class="modal-header">
						<h5 class="modal-title">Chỉnh Sửa Thông Tin Khách Hàng</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="form-group row">
							<label for="input-27" class="col-sm-2 col-form-label">Id</label>
							<div class="col-sm-10">
								<input readonly type="text"
									class="form-control form-control-rounded" id="txtid"
									name="txtid" placeholder="Id">
							</div>
						</div>
						<div class="form-group row">
							<label for="input-27" class="col-sm-2 col-form-label">Tài
								Khoản</label>
							<div class="col-sm-10">
								<input readonly type="text" class="form-control form-control-rounded"
									id="txtusername" name="txtusername"
									placeholder="Nhập vào tài khoản...">
							</div>
						</div>
						<div class="form-group row">
							<label for="input-27" class="col-sm-2 col-form-label">Họ
								Tên</label>
							<div class="col-sm-10">
								<input type="text" class="form-control form-control-rounded"
									id="txtname1" name="txtname" placeholder="Nhập vào họ tên...">
							</div>
						</div>
						<div class="form-group row">
							<label for="input-27" class="col-sm-2 col-form-label">Giới
								Tính</label>
							<div class="col-sm-4">
								<div class="icheck-material-primary icheck-inline">
									<input type="radio" id="rdoGender_true" name="rdoGender"
										checked value="true"> <label for="rdoGender_true">Nam</label>
								</div>
								<div class="icheck-material-info icheck-inline">
									<input type="radio" id="rdoGender_false" name="rdoGender"
										value="false"> <label for="rdoGender_false">Nữ</label>
								</div>
							</div>
							<label for="input-27" class="col-sm-2 col-form-label">Trạng
								Thái</label>
							<div class="col-sm-4">
								<div class="icheck-material-primary icheck-inline">
									<input type="radio" id="rdoenabled_true" name="rdoenabled"
										checked value="true"> <label for="rdoenabled_true">Bật</label>
								</div>
								<div class="icheck-material-info icheck-inline">
									<input type="radio" id="rdoenabled_false" name="rdoenabled"
										value="false"> <label for="rdoenabled_false">Tắt</label>
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label for="input-27" class="col-sm-2 col-form-label">Mật
								Khẩu</label>
							<div class="col-sm-10">
								<input type="password" class="form-control form-control-rounded"
									id="txtpassword" name="txtpassword"
									placeholder="Nhập vào mật khẩu...">
							</div>
						</div>
						<div class="form-group row">
							<label for="input-27" class="col-sm-2 col-form-label">Địa
								Chỉ Cụ Thể</label>
							<div class="col-sm-10">
								<input type="text" class="form-control form-control-rounded"
									id="txtaddress1" name="txtaddress"
									placeholder="Nhập địa chỉ như tên đường, địa điểm nhận dạng...">
							</div>
						</div>
						<div class="form-group row">
							<label for="input-27" class="col-sm-2 col-form-label">Email</label>
							<div class="col-sm-10">
								<input type="text" class="form-control form-control-rounded"
									id="txtemail1" name="txtemail"
									placeholder="Nhập vào địa chỉ Email của bạn...">
							</div>
						</div>
						<div class="form-group row">
							<label for="input-27" class="col-sm-2 col-form-label">Số
								Điện Thoại</label>
							<div class="col-sm-10">
								<input type="text" class="form-control form-control-rounded"
									id="txtphone1" name="txtphone"
									placeholder="Nhập vào số điện thoại của bạn...">
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button"
							class="btn btn-danger shadow-danger btn-round px-5"
							data-dismiss="modal">
							<i class="fa fa-times"></i> Quay lại
						</button>
						<button type="button"
							class="btn btn-info shadow-info btn-round px-5 btnUpdate">
							<i class="fa fa-check-square-o"></i> Lưu
						</button>
					</div>
				</div>
			</div>
		</div>
		<!--End Modal -->

<!-- Modal Search -->
<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
	<div class="container-search-header">
		<button
			class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
			<img src="/resources/web/images/icons/icon-close2.png" alt="CLOSE">
		</button>

		<form class="wrap-search-header flex-w p-l-15">
			<button class="flex-c-m trans-04">
				<i class="zmdi zmdi-search"></i>
			</button>
			<input class="plh3" type="text" name="search" placeholder="Search...">
		</form>
	</div>
</div>
