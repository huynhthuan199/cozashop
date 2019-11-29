<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Blog Detail</title>
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
	href="resources/web/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="resources/web/css/util.css">
<link rel="stylesheet" type="text/css" href="resources/web/css/main.css">
<!--===============================================================================================-->
<style>
.imageProduct{
width: 100px;
height: 100px;
}
</style>
</head>

<body class="animsition">

	<!-- Header -->
	<header class="header-v4">
		<%@ include file="./block/header.jsp"%>
	</header>

	<!-- Cart -->
	<%@ include file="./block/card.jsp"%>


	<!-- breadcrumb -->
	<div class="container">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="/" class="stext-109 cl8 hov-cl1 trans-04"> Home
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a> <a href="./blog" class="stext-109 cl8 hov-cl1 trans-04"> Blog
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a> <span class="stext-109 cl4"> ${blogdetails.title } </span>
		</div>
	</div>


	<!-- Content page -->
	<section class="bg0 p-t-52 p-b-20">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-lg-9 p-b-80">
					<div class="p-r-45 p-r-0-lg">
						<!--  -->
						<div class="wrap-pic-w how-pos5-parent">
							<img src="resources/web/images/blog-04.jpg" alt="IMG-BLOG">

							<div class="flex-col-c-m size-123 bg9 how-pos5">
								<span class="ltext-107 cl2 txt-center"><fmt:formatDate pattern = "dd" value = "${blogdetails.createAt}" /></span> <span
									class="stext-109 cl3 txt-center"><fmt:formatDate type = "date" pattern = "MM-yyyy" value ="${blogdetails.createAt}" /></span>
							</div>
						</div>

						<div class="p-t-32">
							<span class="flex-w flex-m stext-111 cl2 p-b-19"> <span>
									<span class="cl4">By  </span>${blogdetails.user.name } <span
									class="cl12 m-l-4 m-r-6">|</span>
							</span> <span><fmt:formatDate type = "date" value = "${blogdetails.createAt}" /><span class="cl12 m-l-4 m-r-6">|</span>
							</span> <span>
							<c:forEach var="items" items="${listTags }">
							${items}
							</c:forEach>
							<span
									class="cl12 m-l-4 m-r-6">|</span>
							</span>
							</span>

							<h4 class="ltext-109 cl2 p-b-28">${blogdetails.title }</h4>

							<p class="stext-117 cl6 p-b-26">${blogdetails.description }</p>
						</div>

						<div class="flex-w flex-t p-t-16">
							<span class="size-216 stext-116 cl8 p-t-4"> Tags </span>

							<div class="flex-w size-217">
							<c:forEach var="item" items="${listTags }">
								<a href="#"
									class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									${item } </a>
									</c:forEach>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-4 col-lg-3 p-b-80">
					<div class="side-menu">

						<div class="">
							<h4 class="mtext-112 cl2 p-b-33">Danh Mục</h4>

							<ul>
							<c:forEach var="listCategory" items="${listCategory }">
							
								<li class="bor18"><a href="/product?categogyName=${listCategory.id } "
									class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
										${listCategory.name } </a></li>
							</c:forEach>
							</ul>
						</div>

						<div class="p-t-65">
							<h4 class="mtext-112 cl2 p-b-33">Sản Phẩm Liên Quan</h4>
							<c:forEach var="items" items="${listProduct }">
							<ul>
								<li class="flex-w flex-t p-b-30"><a href="./productdetail/${items.id }"
									class="wrao-pic-w size-214 hov-ovelay1 m-r-20"> <img class="imageProduct"
										src="/resources/web/images/Products/${items.image }" alt="PRODUCT">
								</a>
									<div class="size-215 flex-col-t p-t-8">
										<a href="./productdetail/${items.id }" class="stext-116 cl8 hov-cl1 trans-04"> ${items.name }</a> <span
											class="stext-116 cl6 p-t-20"><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${items.price }" /> VNĐ</span>
									</div></li>
							</ul>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>



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
	<script
		src="resources/web/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
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