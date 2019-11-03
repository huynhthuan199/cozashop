<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Quên Mật Khẩu</title>
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
		  <div class="card-title text-uppercase pb-2 text-center text-primary">Quên Mật Khẩu</div>
		    <p class="pb-2 text-center">Vui lòng nhập địa chỉ email, bạn sẽ nhận được link để reset mật khẩu.</p>
			  <div class="form-group">
			  <label for="exampleInputEmailAddress" class="">Địa chỉ Email</label>
			   <div class="position-relative has-icon-right">
				  <input type="text" id="txtemail" class="form-control input-shadow" placeholder="Nhập địa chỉ email">
				  <div class="form-control-position">
					  <i class="icon-envelope-open"></i>
				  </div>
			   </div>
			  </div>
			  <button type="button" class="btn btn-primary shadow-primary btn-block waves-effect waves-light mt-3 submit">Xác nhận</button>
		   </div>
		  </div>
		   <div class="card-footer text-center py-3">
		    <p class="text-muted mb-0">Trở về trang <a href="./login"> Đăng nhập</a></p>
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
	  $('.submit').click(function(){
		  var email = $('#txtemail').val();
		  $.ajax({
			  url : '/submit',
			  type : 'POST',
			  data :{
				  email : email
			  },
			  beforeSend: function() {
				  Swal.fire({
					  title: 'Vui lòng đợi trong giây lát',
					  animation: false,
					  showConfirmButton: false,
					  customClass: {
					    popup: 'animated tada'
					  }
					})
              }
		  }).done(function(data){
				if(data.status == 'success'){
					Swal.fire({
						  type: 'success',
						  title: 'Thông Báo',
						  showConfirmButton: false,
						  text: 'Kiểm tra email để nhận mật khẩu mới!',
						  footer: '<a href="./changepassword">Click vào đây để đổi mật khẩu!</a>'
						})
				}else if(data.status == 'danger'){
					Swal.fire({
						  position: 'top-end',
						  type: 'warning',
						  title: data.message,
						  showConfirmButton: false,
						  timer: 1500
						})
				}
		  }).fail(function(err){
			  console.log(err)
		  })
	  })
  })
  </script>
	
</body>
</html>
