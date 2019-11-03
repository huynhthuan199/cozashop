<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix ="fmt" uri ="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="total" value="0" />
<ul id="cart-modal" class="header-cart-wrapitem w-full"  id="listCart" >
	<c:if test="${empty CART}">
		<li class="header-cart-item flex-w flex-t m-b-12">
			<div class="text-center red">Giỏ hành rỗng</div>
		</li>
	</c:if>
	<c:if test="${not empty CART}">
		<c:forEach var="cart" items="${CART}">
			<li data-id="${cart.value.product.id}" class="header-cart-item flex-w flex-t m-b-12 delete-item-md">
				<div class="header-cart-item-img">
					<img src="/resources/web/images/Products/${cart.value.product.image}" alt="IMG">
				</div>
				<div class="header-cart-item-txt p-t-8">
					<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
						${cart.value.product.name} </a> <span class="header-cart-item-info">${cart.value.quantity}
						x ${cart.value.product.price}</span>
				</div>
			</li>
			<c:set var="total" value="${total + cart.value.quantity * cart.value.product.price}" />
		</c:forEach>
	</c:if>
<div class="header-cart-total w-full p-tb-40">Tổng Tiền: <fmt:formatNumber type = "number" 
         maxFractionDigits = "3" value = "${total}" /> VNĐ </div>
</ul>
