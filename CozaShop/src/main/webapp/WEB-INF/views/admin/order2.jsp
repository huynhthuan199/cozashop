
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Quản Lý Hóa Đơn</title>
<!--favicon-->
<link rel="icon" href="/resources/admin/assets/images/favicon.ico"
	type="image/x-icon">
<!-- simplebar CSS-->
<link href="/resources/admin/assets/plugins/simplebar/css/simplebar.css"
	rel="stylesheet">
<!-- Bootstrap core CSS-->
<link href="/resources/admin/assets/css/bootstrap.min.css"
	rel="stylesheet">
<!--Data Tables -->
<link
	href="/resources/admin/assets/plugins/bootstrap-datatable/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" type="text/css">
<link
	href="/resources/admin/assets/plugins/bootstrap-datatable/css/buttons.bootstrap4.min.css"
	rel="stylesheet" type="text/css">
<!-- animate CSS-->
<link href="/resources/admin/assets/css/animate.css" rel="stylesheet"
	type="text/css">
<!-- Icons CSS-->
<link href="/resources/admin/assets/css/icons.css" rel="stylesheet"
	type="text/css">
<!-- Sidebar CSS-->
<link href="/resources/admin/assets/css/sidebar-menu.css"
	rel="stylesheet">

<link href="/resources/admin/assets/plugins/select2/css/select2.min.css"
	rel="stylesheet">
<!-- Toastr -->
<link
	href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css"
	rel="stylesheet">
<!-- Custom Style-->
<link href="/resources/admin/assets/css/app-style.css" rel="stylesheet">
<style>
.myimage {
	width: 100px;
	height: 400px
}
</style>

</head>

<body>

	<!-- Start wrapper-->
	<div id="wrapper">
		<!--Start sidebar-wrapper-->
		<%@ include file="./block/nav.jsp"%>
		<!--End sidebar-wrapper-->
		<!--Start topbar header-->
		<%@ include file="./block/header.jsp"%>
		<!--End topbar header-->
		<div class="clearfix"></div>
		<div class="content-wrapper">
			<div class="container-fluid">
				<!-- Breadcrumb-->
				<div class="row pt-2 pb-2">
					<div class="col-sm-9">
						<h4 class="page-title">Quản Lý Hóa Đơn</h4>
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="./home">Trang Chủ</a></li>
							<li class="breadcrumb-item"><a href="./order">Quản Lý</a></li>
							<li class="breadcrumb-item active" aria-current="page">Hóa Đơn</li>
						</ol>
					</div>
				</div>
				<!-- End Breadcrumb-->
				<!-- Content  -->
				<!--Row-->
				<!--End Row-->
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-header">
								<i class="fa fa-table"></i> Danh Sách Hóa Đơn
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table id="example" class="table table-bordered">
										<thead class="thead-light">
											<tr>
												<th class="column-title text-center">Id</th>
												<th class="column-title text-center">Khách Hàng</th>
												<th class="column-title text-center">Tổng Tiền (VNĐ)</th>
												<th class="column-title text-center">Ngày Tạo</th>
												<th class="column-title text-center">Trạng Thái</th>
												<th class="column-title text-center">Chức Năng</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="order" items="${listOrder}">
												<tr class="even pointer">
													<td class=" ">${order.id }</td>
													<td class="lblidCustomer" data-id="${order.customer.id }">${order.customer.name }</td>
													<td class="text-justify"><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${order.totalmoney }" /></td>
													<td class=" "><fmt:formatDate pattern = "yyyy-MM-dd" value = "${order.createAt}" /></td>
													<td class="valEnabled "><span class=" check2 badge badge-danger shadow-danger m-1">${order.enabled == true ? "Đã Duyệt" : "Chờ Xử lý" }</span></td>
													<td class="text-center action">
														<button type="button" data-id="${order.id }"
															class="btn btn-outline-dark waves-effect waves-light m-1 show">
															<i class="fa fa-pencil"> Xem</i>
														</button>
														<button type="button"
															class="btn btn-outline-success waves-effect waves-light m-1 btnShow"
															data-id="${order.id }" name="btnDelete">
															<i class="fa fa-trash"> Xác Nhận</i>
														</button>
														<button type="button"
															class="btn btn-outline-primary waves-effect waves-light m-1 btnprint"
															data-id="${order.id }" name="btnDelete">
															<i class="fa fa-print">In Hóa Đơn</i>
														</button>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- End Row-->

			</div>
			<!-- End container-fluid-->

		</div>
		<!--End content-wrapper-->
		<!--Start Back To Top Button-->
		<a href="javaScript:void();" class="back-to-top"><i
			class="fa fa-angle-double-up"></i> </a>
		<!--End Back To Top Button-->

		<!--Start footer-->
		<%@ include file="./block/footer.jsp"%>
		<!--End footer-->
		<!-- Modal -->
		<!-- Modal -->
                <div class="modal fade" id="show-orderdetail">
                  <div class="modal-dialog modal-lg" style="max-width: 1000px;">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title">Chi Tiết Đơn Hàng</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body" id="show-body">
                        
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-inverse-primary" data-dismiss="modal"><i class="fa fa-times"></i> Đóng</button>
                        <!-- <button type="button" class="btn btn-primary btnprint" data-dismiss="modal"><i class="fa fa-print"></i> In Hóa Đơn</button> -->
                      </div>
                    </div>
                  </div>
                </div>
		<!-- Modal -->
		<!-- Side Modal Top Right -->
	</div>
	<!--End wrapper-->


	<!-- Bootstrap core JavaScript-->
	<script src="/resources/admin/assets/js/jquery.min.js"></script>
	<script src="/resources/admin/assets/js/popper.min.js"></script>
	<script src="/resources/admin/assets/js/bootstrap.min.js"></script>

	<!-- simplebar js -->
	<script src="/resources/admin/assets/plugins/simplebar/js/simplebar.js"></script>
	<!-- waves effect js -->
	<script src="/resources/admin/assets/js/waves.js"></script>
	<!-- sidebar-menu js -->
	<script src="/resources/admin/assets/js/sidebar-menu.js"></script>
	<!-- Custom scripts -->
	<script src="/resources/admin/assets/js/app-script.js"></script>
	<!--Data Tables js-->
	<script
		src="/resources/admin/assets/plugins/bootstrap-datatable/js/jquery.dataTables.min.js"></script>
	<script
		src="/resources/admin/assets/plugins/bootstrap-datatable/js/dataTables.bootstrap4.min.js"></script>
	<script
		src="/resources/admin/assets/plugins/bootstrap-datatable/js/dataTables.buttons.min.js"></script>
	<script
		src="/resources/admin/assets/plugins/bootstrap-datatable/js/buttons.bootstrap4.min.js"></script>
	<script
		src="/resources/admin/assets/plugins/bootstrap-datatable/js/jszip.min.js"></script>
	<script
		src="/resources/admin/assets/plugins/bootstrap-datatable/js/pdfmake.min.js"></script>
	<script
		src="/resources/admin/assets/plugins/bootstrap-datatable/js/vfs_fonts.js"></script>
	<script
		src="/resources/admin/assets/plugins/bootstrap-datatable/js/buttons.html5.min.js"></script>
	<script
		src="/resources/admin/assets/plugins/bootstrap-datatable/js/buttons.print.min.js"></script>
	<script
		src="/resources/admin/assets/plugins/bootstrap-datatable/js/buttons.colVis.min.js"></script>

	<!--Sweet Alerts -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
	<!--Toastr -->
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
	<!--Select Plugins Js-->
	<script src="/resources/admin/assets/plugins/select2/js/select2.min.js"></script>
	
	<script src="/resources/admin/build/customJS/ajaxoforder.js"></script>
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
	<script>
		$(document).ready(function() {
					//Default data table
					$('#default-datatable').DataTable();
					var table = $('#example').DataTable({
								lengthChange : true,
								buttons : [ 'copy', 'excel', 'pdf', 'print',
										'colvis' ],
								"lengthMenu" : [ [ 5, 10, 25, 50, -1 ],
										[ 5, 10, 25, 50, "All" ] ]
							});
					table.buttons().container().appendTo(
							'#example_wrapper .col-md-6:eq(0)');
				});
	</script>
</body>
</html>