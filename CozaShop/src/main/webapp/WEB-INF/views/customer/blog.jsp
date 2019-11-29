<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Tin tức</title>

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
</head>
<body>

	<!-- Header -->
	<header class="header-v4">
		<%@ include file="./block/header.jsp"%>
	</header>
	<!-- Cart -->
		<%@ include file="./block/card.jsp"%>
	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92"
		style="background-image: url('resources/web/images/bg-02.jpg');">
		<h2 class="ltext-105 cl0 txt-center"  style="font-family: Verdana; font-weight: bold;">Tin tức thời trang</h2>
	</section>
	<!-- Content page -->
	<section class="bg0 p-t-62 p-b-60">
		<div class="container">
			<div class="row">
			<c:forEach var="listNews" items="${listNews}">
			<fmt:formatDate var="year" value="${listNews.createAt}" pattern="yyyy" />
				<div class="col-md-12 col-lg-12 p-b-80">
					<div class="p-r-45 p-r-0-lg">
						<!-- item blog -->
						<div class="p-b-63">
							<a href="blog-detail?id=${listNews.id }&categogyName=${listNews.categoryNews.id}" class="hov-img0 how-pos5-parent">
								<img src="resources/web/images/blog-04.jpg" alt="IMG-BLOG">
								<div class="flex-col-c-m size-123 bg9 how-pos5">
									<span class="ltext-107 cl2 txt-center">${listNews.id} </span> <span
										class="stext-109 cl3 txt-center">${year}</span>
								</div>
							</a>
							<div class="p-t-32">
								<h4 class="p-b-15">
									<a href="blog-detail?id=${listNews.id }&categogyName=${listNews.categoryNews.id}"
										class="ltext-108 cl2 hov-cl1 trans-04">${listNews.title} </a>
								</h4>
								<p class="stext-117 cl6">${listNews.content}</p>
								<div class="flex-w flex-sb-m p-t-18">
									<span class="flex-w flex-m stext-111 cl2 p-r-30 m-tb-10">
										<span> <span class="cl4">By  </span>${listNews.user.name}<span
											class="cl12 m-l-4 m-r-6">|</span>
									</span> <span> StreetStyle, Fashion, Couple <span
											class="cl12 m-l-4 m-r-6"></span><span
											class="cl12 m-l-4 m-r-6">|</span>
											<fmt:formatDate type = "date" value = "${listNews.createAt}" />
									</span>
									</span> <a href="blog-detail?id=${listNews.id }&categogyName=${listNews.categoryNews.id}"
										class="stext-101 cl2 hov-cl1 trans-04 m-tb-10"> Continue
										Reading <i class="fa fa-long-arrow-right m-l-9"></i>
									</a>
								</div>
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