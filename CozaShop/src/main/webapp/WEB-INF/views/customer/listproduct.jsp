<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<c:if test="${empty listProduct}">
<span style="text-align:center">
Danh Mục Này Hiện Tại Đã Hết Hàng
</span>
</c:if>
<c:if test="${not empty listProduct}">
<c:forEach var="listProduct" items="${listProduct}">
	<div
		class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item ${listProduct.category.id }">
		<div class="block2">
			<div class="block2-pic hov-img0">
				<img src="/resources/web/images/Products/${listProduct.image }"
					alt="IMG-PRODUCT">
				<div data-id="${listProduct.id }">
					<button
						class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1 btnShow">
						Quick View </button>
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
						class="btn-addwish-b2 dis-block pos-relative js-addwish-b2"> <img
						class="icon-heart1 dis-block trans-04"
						src="/resources/web/images/icons/icon-heart-01.png" alt="ICON">
						<img class="icon-heart2 dis-block trans-04 ab-t-l"
						src="/resources/web/images/icons/icon-heart-02.png" alt="ICON">
					</a>
				</div>
			</div>
		</div>
	</div>
</c:forEach>
</c:if>