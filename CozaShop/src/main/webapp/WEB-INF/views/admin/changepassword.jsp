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
	<title>Đổi Mật Khẩu</title>
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
					<div class="card-title text-uppercase text-center py-3">Đổi Mật Khẩu</div>
						<div class="form-group">
							<label for="exampleInputUsername" class="">Tài Khoản</label>
							<div class="position-relative has-icon-right">
								<input type="text" id="txtusername" name="username" class="form-control input-shadow" placeholder="Tài khoản">
								<div class="form-control-position">
									<i class="icon-user"></i>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="exampleInputPassword" class="">Mã check</label>
							<div class="position-relative has-icon-right">
								<input type="password" id="txtoldPassword" name="oldpassword" class="form-control input-shadow" placeholder="Mật khẩu củ">
								<div class="form-control-position">
									<i class="icon-lock"></i>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="exampleInputPassword" class="">Mật Khẩu Mới</label>
							<div class="position-relative has-icon-right">
								<input type="password" id="txtnewPassword" name="password" class="form-control input-shadow" placeholder="Mật khẩu mới">
								<div class="form-control-position">
									<i class="icon-lock"></i>
								</div>
							</div>
						</div>
						<div class="form-row">
						<div class="form-group col-6 text-right">
								
							</div>
							<div class="form-group col-6 text-right">
								<a href="./recover">Quên mật khẩu</a>
							</div>
						</div>
						<button type="button" class="btn btn-primary shadow-primary btn-block waves-effect waves-light btnchangePassword">Đổi Mật Khẩu</button>
				</div>
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
	 <!--Sweet Alerts -->
		<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
	<script>
	$(document).ready(function(){
		$('.btnchangePassword').click(function(){
			var username = $('#txtusername').val();
			var password =  $('#txtnewPassword').val();
			var oldpassword =  $('#txtoldPassword').val();
			$.ajax({
				url : '/changepassword',
				type : 'POST',
				data : {
					username : username,
					password : password,
					oldpassword : oldpassword
				}
			}).done(function(data){
				if(data.status == 'danger'){
					Swal.fire({
						  position: 'top-end',
						  type: 'warning',
						  title: data.message,
						  showConfirmButton: false,
						  timer: 1500
						})
				}else if(data.status == 'success'){
					Swal.fire({
						  type: 'success',
						  title: 'Thông Báo',
						  showConfirmButton: false,
						  text: 'Đổi mật khẩu thành công!',
						  footer: '<a href="./login">Click vào đây để đăng nhập!</a>'
						})
				}
			}).fail(function(err){
				
			})
		})
	})
	</script>
	
</body>
</html>