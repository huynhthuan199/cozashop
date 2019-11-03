<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<c:if test="${empty CART}">
							<tr>
								<td colspan="5" class="text-center red">Giỏ hàng trống</td>
							</tr>
						</c:if>
						<c:if test="${not empty CART}">
							<c:set var="total" value="0" />
							<c:forEach var="cart" items="${CART}">
								<tr class="table_row">
									<td class="column-1">
										<div class="how-itemcart1 delete-item-tb"
											data-id="${cart.value.product.id}">
											<img
												src="/resources/web/images/Products/${cart.value.product.image}"
												alt="IMG">
										</div>
									</td>
									<td class="column-2">${cart.value.product.name}</td>
									<td id="lblpriceProduct" class="column-3"><fmt:formatNumber
											type="number" maxFractionDigits="3"
											value="${cart.value.product.price}" /> VNĐ</td>
									<td class="column-4">
										<div class="wrap-num-product flex-w m-l-auto m-r-0">
											<div data-id="${cart.value.product.id}"
												class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m btnbackQuantity">
												<i class="fs-16 zmdi zmdi-minus"></i>
											</div>
											<input class="mtext-104 cl3 txt-center num-product" readonly
												type="number" name="num-product1"
												value="${cart.value.quantity}">
											<div data-id="${cart.value.product.id}"
												class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m btnupQuantity">
												<i class="fs-16 zmdi zmdi-plus"></i>
											</div>
										</div>
									</td>
									<td class="column-5"><fmt:formatNumber type="number"
											maxFractionDigits="3"
											value="${cart.value.product.price * cart.value.quantity}" />
										VNĐ</td>
								</tr>
								<c:set var="total"
									value="${total + cart.value.quantity * cart.value.product.price}" />
							</c:forEach>
						</c:if>