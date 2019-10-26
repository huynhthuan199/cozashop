
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>Đăng Nhập</title>
	<!--favicon-->
	<link rel="icon" href="/resources/admin/assets/images/favicon.ico" type="image/x-icon">
	<!-- Bootstrap core CSS-->
	<link href="/resources/admin/assets/css/bootstrap.min.css" rel="stylesheet">
	<!-- animate CSS-->
	<link href="/resources/admin/assets/css/animate.css" rel="stylesheet" type="text/css">
	<!-- Icons CSS-->
	<link href="/resources/admin/assets/css/icons.css" rel="stylesheet" type="text/css">
	<!-- Custom Style-->
	<link href="/resources/admin/assets/css/app-style.css" rel="stylesheet">
	<style>
	body{
		background: #d53369;  /* fallback for old browsers */
		background: -webkit-linear-gradient(to right, #cbad6d, #d53369);  /* Chrome 10-25, Safari 5.1-6 */
		background: linear-gradient(to right, #cbad6d, #d53369); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

	}
</style>

</head>

<body class="bg-dark">
	<!-- Start wrapper-->
	<div id="wrapper">
		<div class="card card-authentication1 mx-auto my-5">
			<div class="card-body">
				<div class="card-content p-2">
					<div class="text-center">
						<img src="/resources/admin/assets/images/logo-icon.png" alt="logo icon">
					</div>
					<div class="card-title text-uppercase text-center py-3">Đăng Nhập</div>
					<form action="btnLogin" method="post">
						<div class="form-group">
							<label for="exampleInputUsername" class="">Tài Khoản</label>
							<div class="position-relative has-icon-right">
								<input type="text" id="txtUsername" name="username" class="form-control input-shadow" placeholder="Tài khoản">
								<div class="form-control-position">
									<i class="icon-user"></i>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="exampleInputPassword" class="">Mật Khẩu</label>
							<div class="position-relative has-icon-right">
								<input type="password" id="txtPassword" name="password" class="form-control input-shadow" placeholder="Mật khẩu">
								<div class="form-control-position">
									<i class="icon-lock"></i>
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-6">
								<div class="icheck-material-primary">
									<input type="checkbox" id="user-checkbox" checked="">
									<label for="user-checkbox">Ghi nhớ</label>
								</div>
							</div>
							<div class="form-group col-6 text-right">
								<a href="./recover">Quên mật khẩu</a>
							</div>
						</div>
						<button type="submit" class="btn btn-primary shadow-primary btn-block waves-effect waves-light btnLogin">Đăng Nhập</button>
						</form>
						<div class="text-center mt-3">Đăng nhập với</div>
						
						<div class="form-row mt-4">
							<div class="form-group mb-0 col-6">
								<button type="button" class="btn btn-facebook shadow-facebook btn-block text-white"><i class="fa fa-facebook-square"></i> Facebook</button>
							</div>
							<div class="form-group mb-0 col-6 text-right">
								<button type="button" class="btn btn-twitter shadow-twitter btn-block text-white"><i class="fa fa-twitter-square"></i> Twitter</button>
							</div>
						</div>
				</div>
			</div>
			<div class="card-footer text-center py-3">
				<p class="text-muted mb-0">Bạn chưa có tài khoản? <a href="authentication-signup.html"> Đăng Kí Ngay</a></p>
			</div>
		</div>
		
		<!--Start Back To Top Button-->
		<a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
		<!--End Back To Top Button-->
	</div><!--wrapper-->
	
	<!-- Bootstrap core JavaScript-->
	<script src="/resources/admin/assets/js/jquery.min.js"></script>
	<script src="/resources/admin/assets/js/popper.min.js"></script>
	<script src="/resources/admin/assets/js/bootstrap.min.js"></script>
	
</body>
</html>
	