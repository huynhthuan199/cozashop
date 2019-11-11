<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
span {
	margin: 10px
}

td {
	padding: 10px
}
</style>
</head>
<body>
	<h1 style="text-align: center">COZA SHOP</h1>
	<div style="float:left ;width:50%">
		<span style="display: block"> Anh/Chị:
			${customeOrderdetail.name} </span> <span style="display: block"> Số
			Điện Thoại: ${customeOrderdetail.phone} </span> <span style="display: block">
			Địa Chỉ: ${customeOrderdetail.address} </span>
	</div>
	<div style="float:left ;width:50%"">
		<span style="display: block"> Mã Hóa Đơn: ${listOrder.id} </span> 
		<span style="display: block"> Ngày Tạo: ${listOrder.createAt} </span>
	</div>
	<div style="clear: both"></div>
	<h1 style="text-align: center">HÓA ĐƠN BÁN HÀNG</h1>
	<h1 style="text-align: center">-------</h1>
	<div>
		<table align='center' cellpadding='0' cellspacing='0' width='500'
			style="margin-top: 30px; border-collapse: collapse; border-style: 1px dotted;">
			<thead>
				<tr>
					<th class="">Sản Phẩm</th>
					<th class="">Số Lượng</th>
					<th class="">Giá (VNĐ)</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="list" items="${listOrderdetail}">
					<td style="">${list.product.name }</td>
					<td style="text-align: center">${list.quantity }</td>
					<td style="text-align: center"><fmt:formatNumber type="number"
							maxFractionDigits="3" value="${list.price }" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div style="margin-left : 50% ;margin-top:30px ;margin-bottom:30px">
		<span style="display: block"> Tổng tiền hàng : <fmt:formatNumber type="number" maxFractionDigits="3" value="${listOrder.totalmoney -30000}" /> VNĐ</span> 
		<span style="display: block"> Phí Ship: 30,000 VNĐ </span>
		<span style="display: block"> Tổng tiền hàng : <fmt:formatNumber type="number" maxFractionDigits="3" value="${listOrder.totalmoney}" /> VNĐ</span> 
	</div>
	<div align='center'>
		<span style="display: block">Cảm ơn quý khách đã mua hàng tại Coza Store</span> 
		<span style="display: block">Vui lòng kiểm tra lại hóa đơn trước khi rời khỏi cửa hàng</span> 
	</div>
</body>
</html>