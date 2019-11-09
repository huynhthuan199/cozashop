<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Shoping Cart</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="/resources/web/images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/web/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/web/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/web/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/web/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/web/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/web/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/web/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/web/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<!-- jquery steps CSS-->
<link rel="stylesheet" type="text/css"
	href="/resources/admin/assets/plugins/jquery.steps/css/jquery.steps.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/web/vendor/perfect-scrollbar/perfect-scrollbar.css">

<!-- Toastr -->
<link
	href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css"
	rel="stylesheet">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/web/css/util.css">
<link rel="stylesheet" type="text/css"
	href="/resources/web/css/main.css">
<!--===============================================================================================-->
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
			<a href="index.html" class="stext-109 cl8 hov-cl1 trans-04"
				style="font-size: 15px"> Trang chủ <i
				class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a> <span class="stext-109 cl4" style="font-size: 15px"> Giỏ hàng
			</span>
		</div>
	</div>


	<!-- Shoping Cart -->
	<div class="container">
		<div class="row m-b-50px">
			<div class="col-lg-12">
				<table class="table-shopping-cart">
					<tr class="table_head">
						<th class="column-1"
							style="font-family: Verdana; font-weight: bold; font-size: 13px">Sản
							phẩm</th>
						<th class="column-2"
							style="font-family: Verdana; font-weight: bold; font-size: 13px"></th>
						<th class="column-3"
							style="font-family: Verdana; font-weight: bold; font-size: 13px">Giá</th>
						<th class="column-4"
							style="font-family: Verdana; font-weight: bold; font-size: 13px">Số
							lượng</th>
						<th class="column-5"
							style="font-family: Verdana; font-weight: bold; font-size: 13px">Tổng
							Tiền</th>
					</tr>
					<tbody id="cart-table">
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
												style="width: 45px; text-align: center"
												class=" cl8 hov-btn3 trans-04 flex-c-m btnbackQuantity">
												<i class="fs-16 zmdi zmdi-minus"></i>
											</div>
											<input class="mtext-104 cl3 txt-center num-product" readonly
												type="number" name="num-product1"
												value="${cart.value.quantity}">
											<div data-id="${cart.value.product.id}"
												style="width: 45px; text-align: center"
												class="cl8 hov-btn3 trans-04 flex-c-m btnupQuantity">
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
					</tbody>
				</table>
			</div>
		</div>
		<div class="row m-t-30 border border-dark border-bottom-0 border-radius-5">
		<span class="m-t-30 m-b-30 mx-auto text-uppercase font-italic font-weight-bold"> Thông Tin Nhận Hàng</span>
		</div>
		<div class="row m-b-30 border border-dark border-top-0">
			<div class="col-lg-6">
				<div class="m-r-30 m-l-30 m-t-6">
					<div class="form-group">
						<label for="input-29" class="font-italic">Tỉnh/Thành Phố</label> <select id="province"
							name="province" class="form-control single-select">
							<c:forEach var="listProvince" items="${listProvince }">
								<option value="${listProvince.matp }">${listProvince.name }</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="input-29" class="font-italic">Huyện/Quận</label> <select
							id="district" name="district" class="form-control single-select">
							<c:forEach var="listDictricts" items="${listDictricts }">
								<option value="${listDictricts.maqh }">${listDictricts.name }</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="input-29" class="font-italic">Xã/Phường</label> <select id="ward"
							name="ward" class="form-control single-select">
							<c:forEach var="listWard" items="${listWard }">
								<option value="${listWard.xaid }">${listWard.name }</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group m-t-32">
						<label for="input-27" class="font-italic">Địa Chỉ Cụ Thể</label> <input
							type="text" class="form-control form-control-rounded"
							id="txtaddress" name="txtAddAddress" value="abc"
							placeholder="Nhập địa chỉ như tên đường, địa điểm nhận dạng...">
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="m-r-30 m-l-30">
					<div class="form-group">
						<label class="font-italic"> Họ Và Tên *</label> <input id="txtname" id="txtname" value="abc"
							type="text" class="form-control">
					</div>
					<div class="form-group">
						<label class="font-italic">Số Điện Thoại *</label> <input id="txtphone" type="text" value="0868926024"
							class="form-control">
					</div>
					<div class="form-group">
						<label class="font-italic">Email *</label> <input id="txtemail" type="text" value="huynhthuan199@gmail.com"
							class="form-control">
					</div>
					<div class="form-group">
						<label class="font-italic">Mã Khuyến Mãi *</label> 
						<div class="">
						<input id="txtcode" type="text"
							class="form-control">
							<button type="button" class="form-control btn btn-inverse-primary m-t-10 btnCheck">
						<i class=""></i> Kiểm Tra
					</button>
						</div>
						
					</div>
				</div>
			</div>

			<button class="btn btn-dark btn-block m-r-44 m-l-44 m-b-30 m-t-30" id="totalmoney">Đặt Hàng</button>
		</div>
	</div>

	<!-- End Breadcrumb-->


	<!--  <button class="btn btn-info btn-lg btn-round btn-block waves-effect waves-light " style="margin-bottom: 30px" id="totalmoney">Xác Nhận </button> -->


	<!-- Large Size Modal -->
	<!-- Modal -->
	<div class="modal fade" style="z-index: 99999" id="largesizemodal">
		<div class="modal-dialog modal-lg">
			<div class="modal-content" style="margin-top: 100px;">
				<div class="modal-header">
					<h5 class="modal-title font-weight-bold">Kiểm Tra Thông Tin</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div
						class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm"
						style="margin-top: 20px">
						<h4 class="mtext-109 cl2 p-b-30"
							style="font-family: Verdana; font-weight: bold text-align:center">
							Tổng giỏ hàng</h4>

						<div class="flex-w flex-t bor12 p-b-13">
							<div class="size-208">
								<span class="stext-110 cl2"> Tiền hàng : </span>
							</div>

							<div class="size-209">
								<span id="totalMoney" class="mtext-110 cl2"></span>
							</div>
						</div>

						<div class="flex-w flex-t bor12 p-t-15 p-b-30">
							<div class="size-208">
								<span class="stext-110 cl2"> Phí ship: </span>
							</div>

							<div class="size-209">
								<span class="mtext-110 cl2"> 30,000 VNĐ </span>
							</div>
						</div>

						<div class="flex-w flex-t p-t-27 p-b-33">
							<div class="size-208">
								<span class="mtext-101 cl2"> Tổng Tiền: </span>
							</div>

							<div class="size-209 p-t-1">
								<span id="total" class="mtext-110 cl2"></span>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-inverse-primary"
						data-dismiss="modal">
						<i class="fa fa-times"></i> Close
					</button>
					<button type="button" class="btn btn-primary btncheckOut">
						<i class="fa fa-check-square-o"></i> Xác Nhận
					</button>
				</div>
			</div>
		</div>
	</div>
	</div>
	<!-- End Row-->
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
	<script src="/resources/web/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="/resources/web/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="/resources/web/vendor/bootstrap/js/popper.js"></script>
	<script src="/resources/web/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--Toastr -->
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
	<!--===============================================================================================-->
	<script src="/resources/admin/assets/plugins/select2/js/select2.min.js"></script>
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
		src="/resources/web/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="/resources/web/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script src="/resources/web/js/main.js"></script>
	<!--Form Wizard-->
	<script
		src="/resources/admin/assets/plugins/jquery.steps/js/jquery.steps.min.js"></script>
	<script
		src="/resources/admin/assets/plugins/jquery-validation/js/jquery.validate.min.js"></script>
	<!--wizard initialization-->
	<script
		src="/resources/admin/assets/plugins/jquery.steps/js/jquery.wizard-init.js"></script>
	<script src="/resources/web/js/custom.js"></script>
	<!--Sweet Alerts -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>

	<script>
		$(document).ready(function() {
			$('.single-select').select2();
		});
	</script>
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
	<script>
	$(document).ready(function() {
		 $('#cart-remove').remove();
		 $('#district').change(function() {
		  $.ajax({
		    type: "Post",
		    url: "/admin/test3",
		    data: {
		     id: $('#district').val().toString()
		    },
		    beforeSend: function() {
		     $('#icon2').css({display: "inline-block"});
		    }
		   }).done(function(data) {
		    $('#icon2').css({display: "none"});
		    $('#ward').children().remove();
		    for (var i = 0; i < data.length; i++) {
		     $('#ward').append('<option value=' + data[i].maqh + '>' +data[i].name +'</option>');
		    }
		   }).fail(function(err) {
		    console.log(err);
		   });
		 });

		 $('#province').change(function() {
		    $.ajax({
		      type: "Post",
		      url: "/admin/test",
		      data: {
		       id: $('#province').val().toString()
		      },
		      beforeSend: function() {
		       $('#icon2').css({display: "inline-block"});
		      }
		     }).done(
		      function(data) {
		       $('#icon2').css({display: "none"});
		       $('#district').children().remove();
		       for (var i = 0; i < data.length; i++) {
		        $('#district').append('<option value=' + data[i].maqh + '>' +data[i].name +'</option>');
		       }
		      })
		     .fail(function(err) {
		      console.log(err);
		     });
		   });

		 $(document).on('click','.btncheckOut', function() {
		    var addname = $('#txtname').val();
		    var addphone = $('#txtphone').val();
		    var addemail = $('#txtemail').val();
		    var addcode = $('#txtcode').val();
		    var addaddress = $('#txtaddress').val();
		    var addprovince = $('#province :selected').text();
		    var adddistrict = $('#district :selected').text();
		    var addward = $('#ward :selected').text();
		    $.ajax({
		      type: "POST",
		      url: "/cart/checkout",
		      data: {
		       name: addname,
		       code: addcode,
		       phone: addphone,
		       address: addaddress,
		       email: addemail,
		       province: addprovince,
		       district: adddistrict,
		       ward: addward
		      }
		     }).done(
		      function(data) {
		       if (data.status == 'warning') {
		        Swal
		         .fire({
		          type: 'info',
		          title: 'Oops...',
		          text: 'Chưa có gì để thanh toán đâu ^^',
		          footer: "<a href='/product'>Quay lại trang sản phẩm</a>"
		         })
		       } else if (data.status == 'success') {
		        Command: toastr[data.status](data.message,"Thông Báo")
		       }
		      }).fail(function(err) {
		       console.log(err);
		       Command: toastr["warning"]("Thêm thất bại","Thông Báo")
		      });
		   });
		});
	</script>
</body>
</html>