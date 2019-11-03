<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Product</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
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
<!--===============================================================================================-->
<!-- Toastr -->
<link
	href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css"
	rel="stylesheet">
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
	<!-- Product -->
	<div class="bg0 m-t-23 p-b-140">
		<div id="container" class="container">
			<div class="flex-w flex-sb-m p-b-52">
				<div class="flex-w flex-l-m filter-tope-group m-tb-10">
<!-- 					<button
						class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1 btncategogy"
						data-filter="findAll">Tất cả sản phẩm</button> -->
					<c:forEach var="listCategory" items="${listCategory}">
						<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 btncategogy"
							data-filter="${listCategory.id }">${listCategory.name }
						</button>
					</c:forEach>
				</div>

				<div class="flex-w flex-c-m m-tb-10">
					<div
						class="flex-c-m stext-106 cl6 size-104 bor4 pointer hov-btn3 trans-04 m-r-8 m-tb-4 js-show-filter">
						<i
							class="icon-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-filter-list"></i>
						<i
							class="icon-close-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
						Filter
					</div>

					<div
						class="flex-c-m stext-106 cl6 size-105 bor4 pointer hov-btn3 trans-04 m-tb-4 js-show-search">
						<i class="icon-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-search"></i>
						<i
							class="icon-close-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
						Search
					</div>
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

				<!-- Filter -->
				<div class="dis-none panel-filter w-full p-t-10">
					<div class="wrap-filter flex-w bg6 w-full p-lr-40 p-t-27 p-lr-15-sm">
						<div class="filter-col1 p-r-15 p-b-27">
							<div class="mtext-102 cl2 p-b-15">Lọc Theo</div>
							<ul>
								<li class="p-b-6"><a href="#"
									class="filter-link stext-106 trans-04 sortByPrice " data-value="findAll"> Mặc Định 
								</a></li>
									
								<li class="p-b-6"><a href="#"
									class="filter-link stext-106 trans-04 sortByPrice "  data-value="DESC"> Giá: Giảm Dần
								</a></li>

								<li class="p-b-6"><a href="#"
									class="filter-link stext-106 trans-04 sortByPrice"  data-value="ASC"> Giá: Tăng Dần
								</a></li>
							</ul>
						</div>
						
						<div class="filter-col2 p-r-15 p-b-27">
							<div class="mtext-102 cl2 p-b-15">Giá</div>
							<ul>
								<li class="p-b-6"><a href="#"
									class="filter-link stext-106 trans-04 Price" data-start="100000" data-end="200000"> 100.000  -  200.000 VNĐ </a></li>

								<li class="p-b-6"><a href="#"
									class="filter-link stext-106 trans-04 Price" data-start="200000" data-end="500000"> 200.00  -  500.000 VNĐ </a></li>

								<li class="p-b-6"><a href="#"
									class="filter-link stext-106 trans-04 Price" data-start="500000" data-end="600000"> 500.000  -  600.000 VNĐ </a>
								</li>

								<li class="p-b-6"><a href="#"
									class="filter-link stext-106 trans-04 Price" data-start="600000" data-end="1000000"> 6000.000  -  1.000.000 VNĐ </a>
								</li>

								<li class="p-b-6"><a href="#"
									class="filter-link stext-106 trans-04 Price" data-start="2000000" data-end="9999999"> 2.000.000 VNĐ + </a></li>
							</ul>
						</div>
						
						<div class="filter-col3 p-r-15 p-b-27">
							<div class="mtext-102 cl2 p-b-15">Màu Sắc</div>

							<ul>
								<li class="p-b-6"><span class="fs-15 lh-12 m-r-6"
									style="color: #222;"> <i class="zmdi zmdi-circle"></i>
								</span> <a href="#" class="filter-link stext-106 trans-04 Color" data-color="Đen"> Đen </a>
								</li>

								<li class="p-b-6"><span class="fs-15 lh-12 m-r-6"
									style="color: #4272d7;"> <i class="zmdi zmdi-circle"></i>
								</span> <a href="#"
									class="filter-link stext-106 trans-04 filter-link-active Color" data-color="Nâu">
										Nâu </a></li>

								<li class="p-b-6"><span class="fs-15 lh-12 m-r-6"
									style="color: #b3b3b3;"> <i class="zmdi zmdi-circle"></i>
								</span> <a href="#" class="filter-link stext-106 trans-04 Color" data-color="Xám"> Xám </a></li>

								<li class="p-b-6"><span class="fs-15 lh-12 m-r-6"
									style="color: #00ad5f;"> <i class="zmdi zmdi-circle"></i>
								</span> <a href="#" class="filter-link stext-106 trans-04 Color" data-color="Xanh"> Xanh </a>
								</li>
								<li class="p-b-6"><span class="fs-15 lh-12 m-r-6"
									style="color: #fa4251;"> <i class="zmdi zmdi-circle"></i>
								</span> <a href="#" class="filter-link stext-106 trans-04 Color" data-color="Đỏ"> Đỏ </a></li>

								<li class="p-b-6"><span class="fs-15 lh-12 m-r-6"
									style="color: #aaa;"> <i class="zmdi zmdi-circle-o"></i>
								</span> <a href="#" class="filter-link stext-106 trans-04 Color" data-color="Trắng"> Trắng </a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="row" id="load-product">
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
										href="./productdetail/${listProduct.id }"
										class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										${listProduct.name } </a> <span class="stext-105 cl3">
										<fmt:formatNumber type = "number" 
         maxFractionDigits = "3" value = "${listProduct.price }" /> VNĐ </span>
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
			<!-- Load more -->
			<div class="flex-c-m flex-w w-full p-t-45">
				<a href=""
					class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04 btnloadMore" id="loadmore">
					Load More </a>
			</div>
		</div>
	</div>
	<!-- Footer -->
	<footer class="bg3 p-t-75 p-b-32">
		<%@ include file="./block/footer.jsp"%>
	</footer>


	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>

	<!-- Modal1 -->
	<div id="show-product" class="wrap-modal1 js-modal1 p-t-60 p-b-20">
		<div class="overlay-modal1 js-hide-modal1"></div>
		<div class="container">
			<div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent">
				<button class="how-pos3 hov3 trans-04 js-hide-modal1">
					<img src="/resources/web/images/icons/icon-close.png" alt="CLOSE">
				</button>

				<div class="row">
					<div class="col-md-6 col-lg-7 p-b-30">
						<div class="p-l-25 p-r-30 p-lr-0-lg">
							<div class="wrap-slick3 flex-sb flex-w">
								<div class="wrap-slick3-dots"></div>
								<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>
								<div class="slick3 gallery-lb">
									<div id="div-image1" class="item-slick3"
										data-thumb="/resources/web/images/Products/CV1.jpg">
										<div id="hover-image1" class="wrap-pic-w pos-relative">
											<img id="image1" src="" alt="IMG-PRODUCT"> <a
												id="a-image1"
												class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
												href="/resources/web/images/product-detail-01.jpg"> <i
												class="fa fa-expand"></i>
											</a>
										</div>
									</div>

									<div id="div-image2" class="item-slick3"
										data-thumb="/resources/web/images/Products/CV2.jpg">
										<div id="hover-image2" class="wrap-pic-w pos-relative">
											<img id="image2" src="" alt="IMG-PRODUCT"> <a
												id="a-image2"
												class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
												href="/resources/web/images/product-detail-02.jpg"> <i
												class="fa fa-expand"></i>
											</a>
										</div>
									</div>

									<div id="div-image3" class="item-slick3"
										data-thumb="/resources/web/images/Products/CV3.jpg">
										<div id="hover-image3" class="wrap-pic-w pos-relative">
											<img id="image3" src="" alt="IMG-PRODUCT"> <a
												id="a-image3"
												class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
												href="/resources/web/images/product-detail-03.jpg"> <i
												class="fa fa-expand"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-6 col-lg-5 p-b-30">
						<div class="p-r-50 p-t-5 p-lr-0-lg">
							<h4 id="name" class="mtext-105 cl2 js-name-detail p-b-14"></h4>

							<span id="price" class="mtext-106 cl2"></span>

							<p id="description" class="stext-102 cl3 p-t-23"></p>

							<!--  -->
							<div class="p-t-33">
								<div class="flex-w flex-r-m p-b-10">
									<div class="size-203 flex-c-m respon6">Size</div>

									<div class="size-204 respon6-next">
										<div class="rs1-select2 bor8 bg0">
											<select class="js-select2" name="time">
												<option>Choose an option</option>
												<option>Size S</option>
												<option>Size M</option>
												<option>Size L</option>
												<option>Size XL</option>
											</select>
											<div class="dropDownSelect2"></div>
										</div>
									</div>
								</div>

								<div class="flex-w flex-r-m p-b-10">
									<div class="size-203 flex-c-m respon6">Color</div>

									<div class="size-204 respon6-next">
										<div class="rs1-select2 bor8 bg0">
											<select disabled id="txtcolor" class="form-control"
												name="time">
												<c:forEach var="listColor" items="${listColor }">
													<option value="${listColor.name }">${listColor.name }</option>
												</c:forEach>
											</select>
										</div>
									</div>
								</div>

								<div class="flex-w flex-r-m p-b-10">
									<div class="size-204 flex-w flex-m respon6-next">
										<div class="wrap-num-product flex-w m-r-20 m-tb-10">
											<div
												class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-minus"></i>
											</div>
											<input readonly id="txtquantity"
												class="mtext-104 cl3 txt-center num-product" type="number"
												name="num-product" value="1">
											<div
												class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-plus"></i>
											</div>
										</div>
										<button id="addToCart"
											class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
											Add to cart</button>
									</div>
								</div>
							</div>

							<!--  -->
							<div class="flex-w flex-m p-l-100 p-t-40 respon7">
								<div class="flex-m bor9 p-r-10 m-r-11">
									<a href="#"
										class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100"
										data-tooltip="Add to Wishlist"> <i
										class="zmdi zmdi-favorite"></i>
									</a>
								</div>

								<a href="#"
									class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
									data-tooltip="Facebook"> <i class="fa fa-facebook"></i>
								</a> <a href="#"
									class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
									data-tooltip="Twitter"> <i class="fa fa-twitter"></i>
								</a> <a href="#"
									class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
									data-tooltip="Google Plus"> <i class="fa fa-google-plus"></i>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div> <!-- End Modal  -->

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
	<script src="resources/web/vendor/sweetalert/sweetalert.min.js"></script>
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
		$('.js-addwish-b2, .js-addwish-detail').on('click', function(e) {
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

		/* $('.js-addwish-detail').each(
			function() {
				var nameProduct = $(this).parent().parent().parent().find(
						'.js-name-detail').html();

				$(this).on('click', function() {
					swal(nameProduct, "is added to wishlist !", "success");

					$(this).addClass('js-addedwish-detail');
					$(this).off('click');
				});
			});
		 */
		/*---------------------------------------------*/

		/* $('.js-addcart-detail').each(
				function() {
					var nameProduct = $(this).parent().parent().parent()
							.parent().find('.js-name-detail').html();
					$(this).on('click', function() {
						swal(nameProduct, "is added to cart !", "success");
					});
				});  */
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
	<script src="/resources/web/js/main2.js"></script>
	<script src="/resources/web/js/custom.js"></script>
	<script src="/resources/web/js/sort.js"></script>
	<!-- <script>
		$(document).ready(function() {
			
		});
	</script> -->
	<!-- <script>
	
	$(document).ready(function(){
		 var croll = true;
		 var a;
		 var b;
		 var start;
		 var end;
		 $('.sortByPrice').click(function(){
			 $('a#loadmore').css('display','flex'); 
			 a = $(this).data('value')
			 $('.animsition').animsition();
			 $('.animsition').fadeOut();
			 $('#load-product').load('/product3?color=false&field=price&order='+a+'&page='+Math.floor((parseInt($('#load-product .isotope-item').length) / 4)), function(){
				 $('.animsition-loading').remove();
				$('.animsition').fadeIn(); 
			});
		})
		
		 $('.btncategogy').click(function(){
			 b = $(this).data('filter');
			 console.log(b)
			 $('.animsition').animsition();
			$('.animsition').fadeOut();
			$('#load-product').load('/product3?color=false&field=price&order='+b+'&page='+Math.floor((parseInt($('#load-product .isotope-item').length) / 4)), function(){
			 	 if(b == 'findAll'){
			 		$('a#loadmore').css('display','flex'); 
			 	 }else{
			 		$('a#loadmore').css('display','none'); 
			 	 }
				
				 $('.animsition-loading').remove();
				$('.animsition').fadeIn(); 
			});
		});
		 
		 $('.Color').click(function(){
			 b = $(this).data('color');
			
			 $('.animsition').animsition();
			$('.animsition').fadeOut();
			$('#load-product').load('/product4?color=true&field=price&order='+b+'&page='+Math.floor((parseInt($('#load-product .isotope-item').length) / 4)), function(){
			 	 $('a#loadmore').css('display','none'); 
				 $('.animsition-loading').remove();
				$('.animsition').fadeIn(); 
			});
		});
		 
		 $('.Price').click(function(){
			 start = $(this).data('start');
			 end = $(this).data('end');
			 $('.animsition').animsition();
			$('.animsition').fadeOut();
			$('#load-product').load('/product5?start='+ start +'&field=price&end='+end+'&page='+Math.floor((parseInt($('#load-product .isotope-item').length) / 4)), function(){
			 	 $('a#loadmore').css('display','none'); 
				 $('.animsition-loading').remove();
				$('.animsition').fadeIn(); 
			});
		});
		
		$('#loadmore').click(function(e){
			console.log(a)
			e.preventDefault();
			$.ajax({
				url : '/product3?color=false&field=price&order='+a+'&page='+Math.floor((parseInt($('#load-product .isotope-item').length) / 4)),
			beforeSend :function(){
			   	croll = false;
	    	}		
	    	}).done(function(data){							
	    		$('#load-product').append(data);
	    		croll = true;
	    	}).fail(function(err){
	    		console.log(err);
	    	})
		})
	})
	</script> -->
</body>
</html>