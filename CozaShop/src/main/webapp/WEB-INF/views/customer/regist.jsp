<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Home</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<style type="text/css">
.hov1:hover {
	font-weight: bold
}
;
.myimg{
height: 50px
}
;
</style>
<link rel="icon" type="image/png"
	href="resources/web/images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/web/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/web/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/web/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/web/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/web/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/web/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/web/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/web/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/web/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/web/vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/web/vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/web/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!-- Toastr -->
<link
	href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css"
	rel="stylesheet">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="resources/web/css/util.css">
<link rel="stylesheet" type="text/css" href="resources/web/css/main.css">
<!--===============================================================================================-->

</head>
<body class="animsition">

	<!-- Header -->
	<header>
		<%@ include file="./block/header.jsp"%>
	</header>

	<!-- Cart -->
	<%@ include file="./block/card.jsp"%>

<div class="d-flex flex-row" style="background-color: yellow; margin-top: 100px">

</div>


	<!-- Product -->
	<section class="bg0 p-t-23 p-b-140">
		<div class="container">
			<div class="p-b-10">
				<h3
					style="font-family: Verdana; font-weight: bold; text-align: center; color: black; font-size: 35px">
					Đăng Ký</h3>
			</div>

			<div class="">
						<div class="form-group row">
							<label for="input-27" class="col-sm-2 col-form-label">Id</label>
							<div class="col-sm-10">
								<input  type="text"
									class="form-control form-control-rounded" id="txtid"
									name="txtid" placeholder="Id">
							</div>
						</div>
						<div class="form-group row">
							<label for="input-27" class="col-sm-2 col-form-label">Tài
								Khoản</label>
							<div class="col-sm-10">
								<input  type="text" class="form-control form-control-rounded"
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
							<div class="col-sm-4" style="display: flex;">
									<input type="radio" id="rdoGender_true" name="rdoGender"
										checked value="true"> <label for="rdoGender_true">   Nam</label>
									<input type="radio" id="rdoGender_false" name="rdoGender"
										value="false"> <label for="rdoGender_false">   Nữ</label>
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
						<div class="form-group row text-center">
							<button type="button"
							class="btn btn-info shadow-info btn-round px-5 btnUpdate">
							<i class="fa fa-check-square-o"></i> Đăng Ký
						</button>
						</div>
				<!-- Search product -->
				<div class="dis-none panel-search w-full p-t-10 p-b-15">
					<div class="bor8 dis-flex p-l-15">
						<button class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04">
							<i class="zmdi zmdi-search"></i>
						</button>

						<input class="mtext-107 cl2 size-114 plh2 p-r-15" type="text"
							name="search-product" placeholder="Search">
					</div>
				</div>
			</div>

			<div class="row isotope-grid">
				<c:forEach var="listProduct" items="${listProduct }">
					<div
						class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item ${listProduct.category.id }">
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img src="/resources/web/images/Products/${listProduct.image }"
									alt="IMG-PRODUCT">
								<div data-id="${listProduct.id }">
									<button
										class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1 btnShow">
										Quick View</button>
								</div>
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a id="nameProduct" data-name="${listProduct.name }"
										href="productdetail/${listProduct.id }"
										class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										${listProduct.name } </a> <span class="stext-105 cl3"> <fmt:formatNumber
											type="number" maxFractionDigits="3"
											value="${listProduct.price }" /> VNĐ
									</span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#"
										class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04"
										src="/resources/web/images/icons/icon-heart-01.png" alt="ICON">
										<img class="icon-heart2 dis-block trans-04 ab-t-l"
										src="/resources/web/images/icons/icon-heart-02.png" alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>


	<!-- Footer -->
	<footer class="bg3 p-t-75 p-b-32">
		<%@ include file="./block/footer.jsp"%>
	</footer>


	<!--===============================================================================================-->
	<script src="resources/web/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="resources/web/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="resources/web/vendor/bootstrap/js/popper.js"></script>
	<script src="resources/web/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="resources/web/vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function() {
			$(this).select2({
				minimumResultsForSearch : 20,
				dropdownParent : $(this).next('.dropDownSelect2')
			});
		})
	</script>
	<!--===============================================================================================-->
	<script src="resources/web/vendor/daterangepicker/moment.min.js"></script>
	<script src="resources/web/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="resources/web/vendor/slick/slick.min.js"></script>
	<script src="resources/web/js/slick-custom.js"></script>
	<!--===============================================================================================-->
	<script src="resources/web/vendor/parallax100/parallax100.js"></script>
	<script>
		$('.parallax100').parallax100();
	</script>
	<!--===============================================================================================-->
	<script
		src="resources/web/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
				delegate : 'a', // the selector for gallery item
				type : 'image',
				gallery : {
					enabled : true
				},
				mainClass : 'mfp-fade'
			});
		});
	</script>
	<!--===============================================================================================-->
	<script src="resources/web/vendor/isotope/isotope.pkgd.min.js"></script>
	<!--===============================================================================================-->
	<!--Sweet Alerts -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
	<!--Toastr -->
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
	<script type="text/javascript">
		toastr.options = {
			"closeButton" : false,
			"debug" : false,
			"newestOnTop" : true,
			"progressBar" : true,
			"positionClass" : "toast-top-left",
			"preventDuplicates" : false,
			"onclick" : null,
			"showDuration" : "300",
			"hideDuration" : "1000",
			"timeOut" : "5000",
			"extendedTimeOut" : "1000",
			"showEasing" : "swing",
			"hideEasing" : "linear",
			"showMethod" : "fadeIn",
			"hideMethod" : "fadeOut"
		}
	</script>
	<script>
		$('.js-addwish-b2').on('click', function(e) {
			e.preventDefault();
		});

		$('.js-addwish-b2').each(
				function() {
					var nameProduct = $(this).parent().parent().find(
							'.js-name-b2').html();
					$(this).on('click', function() {
						swal(nameProduct, "is added to wishlist !", "success");

						$(this).addClass('js-addedwish-b2');
						$(this).off('click');
					});
				});

		$('.js-addwish-detail').each(
				function() {
					var nameProduct = $(this).parent().parent().parent().find(
							'.js-name-detail').html();

					$(this).on('click', function() {
						swal(nameProduct, "is added to wishlist !", "success");

						$(this).addClass('js-addedwish-detail');
						$(this).off('click');
					});
				});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(
				function() {
					var nameProduct = $(this).parent().parent().parent()
							.parent().find('.js-name-detail').html();
					$(this).on(
							'click',
							function() {
								swal(nameProduct, "thêm sản phẩm thành công !",
										"success");
							});
				});
	</script>
	<!--===============================================================================================-->
	<script
		src="resources/web/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function() {
			$(this).css('position', 'relative');
			$(this).css('overflow', 'hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed : 1,
				scrollingThreshold : 1000,
				wheelPropagation : false,
			});

			$(window).on('resize', function() {
				ps.update();
			})
		});
	</script>
	<!--===============================================================================================-->
	<script src="resources/web/js/main.js"></script>
	<script src="/resources/web/js/custom.js"></script>
</body>
</html>