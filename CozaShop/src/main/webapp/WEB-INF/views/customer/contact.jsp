<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Liên hệ</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="resources/web/images/icons/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/web/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/web/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/web/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/web/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/web/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="resources/web/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/web/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/web/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/web/vendor/perfect-scrollbar/perfect-scrollbar.css">
	<!-- Toastr -->
<link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/web/css/util.css">
	<link rel="stylesheet" type="text/css" href="resources/web/css/main.css">
<!--===============================================================================================-->

</head>
<body class="animsition">
	
	<!-- Header -->
	<header class="header-v4">
		<%@ include file="./block/header.jsp"%>
	</header>

	<!-- Cart -->
	<%@ include file="./block/card.jsp"%>


	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('resources/web/images/bg-01.jpg');">
		<h2 class="ltext-105 cl0 txt-center"  style="font-family: Verdana; font-weight: bold;">
			Liên hệ
		</h2>
	</section>	
	<!-- Content page -->
	<section class="bg0 p-t-104 p-b-116">
		<div class="container">
			<div class="flex-w flex-tr">
				<div class="size-210 bor10 p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md">
					<form method="POST"
						id="fileSendForm">
						<h4 class="mtext-105 cl2 txt-center p-b-30">
							Gửi tin nhắn cho chúng tôi
						</h4>

						<div class="bor8 m-b-20 how-pos4-parent">
							<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="text" name="gmail" placeholder="Địa chỉ email của bạn">
							<img class="how-pos4 pointer-none" src="resources/web/images/icons/icon-email.png" alt="ICON">
						</div>

						<div class="bor8 m-b-30">
							<textarea class="stext-111 cl2 plh3 size-120 p-lr-28 p-tb-25" name="content" placeholder="Bạn cần giúp gì ?"></textarea>
						</div>

						<button type="button" class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer btnSend">
							Gởi Chúng Tôi
						</button>
					</form>
				</div>

				<div class="size-210 bor10 flex-w flex-col-m p-lr-93 p-tb-30 p-lr-15-lg w-full-md">
					<div class="flex-w w-full p-b-42">
						<span class="fs-18 cl5 txt-center size-211">
							<span class="lnr lnr-map-marker"></span>
						</span>
						<div class="size-212 p-t-2">
							<span class="mtext-110 cl2">
								Địa chỉ
							</span>

							<p class="stext-115 cl6 size-213 p-t-18">
								Lầu 3, 391A đường Nam Kỳ Khởi Nghĩa, Quận 3, TP Hồ Chí Minh
							</p>
						</div>
					</div>

					<div class="flex-w w-full p-b-42">
						<span class="fs-18 cl5 txt-center size-211">
							<span class="lnr lnr-phone-handset"></span>
						</span>

						<div class="size-212 p-t-2">
							<span class="mtext-110 cl2">
								Điện thoại liên hệ
							</span>

							<p class="stext-115 cl1 size-213 p-t-18">
								+84 939 135074
							</p>
						</div>
					</div>

					<div class="flex-w w-full">
						<span class="fs-18 cl5 txt-center size-211">
							<span class="lnr lnr-envelope"></span>
						</span>

						<div class="size-212 p-t-2">
							<span class="mtext-110 cl2">
								Nhân viên hỗ trợ
							</span>

							<p class="stext-115 cl1 size-213 p-t-18">
								thuannhps07773@fpt.edu.vn (Coza Shop)
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>	
	
	
	<!-- Map -->
	<div class="map">
		<div class="size-303" id="google_map" data-map-x="40.691446" data-map-y="-73.886787" data-pin="resources/web/images/icons/pin.png" data-scrollwhell="0" data-draggable="1" data-zoom="11"></div>
	</div>



	<!-- Footer -->
	<footer class="bg3 p-t-75 p-b-32">
		<%@ include file="./block/footer.jsp"%>
	</footer>


	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>

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
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="resources/web/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/web/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
<!--===============================================================================================-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKFWBqlKAGCeS1rMVoaNlwyayu0e0YRes"></script>
	<script src="resources/web/js/map-custom.js"></script>
<!--===============================================================================================-->
<!--Sweet Alerts -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
	<!--Toastr -->
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
	<script src="resources/web/js/main.js"></script>
<script src="/resources/web/js/custom.js"></script>


		<script type="text/javascript">
		toastr.options = {
			"closeButton" : false,
			"debug" : false,
			"newestOnTop" : true,
			"progressBar" : true,
			"positionClass" : "toast-top-right",
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
		<!-- Ajax  -->
	<script src="/resources/admin/build/customJS/ajaxofcontact.js"></script>
</body>
</html>