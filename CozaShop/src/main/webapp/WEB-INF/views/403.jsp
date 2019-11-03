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
  <title>Rukada - Responsive Bootstrap4  Admin Dashboard Template</title>
  <!--favicon-->
  <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
  <!-- simplebar CSS-->
  <link href="/resources/admin/assets/plugins/simplebar/css/simplebar.css" rel="stylesheet">
  <!-- Bootstrap core CSS-->
  <link href="/resources/admin/assets/css/bootstrap.min.css" rel="stylesheet">
  <!-- animate CSS-->
  <link href="/resources/admin/assets/css/animate.css" rel="stylesheet" type="text/css">
  <!-- Icons CSS-->
  <link href="/resources/admin/assets/css/icons.css" rel="stylesheet" type="text/css">
  <!-- Sidebar CSS-->
  <link href="/resources/admin/assets/css/sidebar-menu.css" rel="stylesheet">
  <!-- Custom Style-->
  <link href="/resources/admin/assets/css/app-style.css" rel="stylesheet">
  
</head>

<body class="gradient-ohhappiness">

<!-- Start wrapper-->
 <div id="wrapper">
 
    <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="text-center error-pages">
                        <h1 class="error-title text-white"> 403</h1>
                        <h2 class="error-sub-title text-white">Bạn Không Phải Là ADMIN</h2>

                        <p class="error-message text-white text-uppercase">Bạn Không có quyền vào trang quản lí này</p>
                        <div class="mt-4">
                          <a href="index.html" class="btn btn-danger btn-round shadow-danger m-1" onclick="goBack()">Quay trở lại </a>
                          <a href="javascript:void();" class="btn btn-danger btn-round m-1">Previous Page</a>
                        </div>

                        <div class="mt-4">
                            <p class="text-white">Copyright © 2018 CoZa | All rights reserved.</p>
                        </div>
                           <hr class="w-50">
                        <div class="mt-2">
                            <a href="javascript:void()" class="btn-social btn-social-circle btn-facebook waves-effect waves-light m-1"><i class="fa fa-facebook"></i></a>
                            <a href="javascript:void()" class="btn-social btn-social-circle btn-google-plus waves-effect waves-light m-1"><i class="fa fa-google-plus"></i></a>
                            <a href="javascript:void()" class="btn-social btn-social-circle btn-behance waves-effect waves-light m-1"><i class="fa fa-behance"></i></a>
                            <a href="javascript:void()" class="btn-social btn-social-circle btn-dribbble waves-effect waves-light m-1"><i class="fa fa-dribbble"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

 </div><!--wrapper-->


  <!-- Bootstrap core JavaScript-->
  <script src="/resources/admin/assets/js/jquery.min.js"></script>
  <script src="/resources/admin/assets/js/popper.min.js"></script>
  <script src="/resources/admin/assets/js/bootstrap.min.js"></script>
  <!-- simplebar js -->
  <script src="/resources/admin/assets/plugins/simplebar/js/simplebar.js"></script>
  <!-- waves effect js -->
  <script src="/resources/admin/assets/js/waves.js"></script>
  <!-- sidebar-menu js -->
  <script src="/resources/admin/assets/js/sidebar-menu.js"></script>
  <!-- Custom scripts -->
  <script src="/resources/admin/assets/js/app-script.js"></script>
	<script>
function goBack() {
  window.history.back();
}
</script>
</body>
</html>
