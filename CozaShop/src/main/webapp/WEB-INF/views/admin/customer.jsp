
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Rukada - Responsive Bootstrap4 Admin Dashboard Template</title>
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
						<h4 class="page-title">Form Layouts</h4>
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="javaScript:void();">Rukada</a></li>
							<li class="breadcrumb-item"><a href="javaScript:void();">Forms</a></li>
							<li class="breadcrumb-item active" aria-current="page">Form
								Layouts</li>
						</ol>
					</div>
					<div class="col-sm-3">
						<div class="btn-group float-sm-right">
							<button type="button"
								class="btn btn-outline-primary waves-effect waves-light">
								<i class="fa fa-cog mr-1"></i> Setting
							</button>
							<button type="button"
								class="btn btn-outline-primary dropdown-toggle dropdown-toggle-split waves-effect waves-light"
								data-toggle="dropdown">
								<span class="caret"></span>
							</button>
							<div class="dropdown-menu">
								<a href="javaScript:void();" class="dropdown-item">Action</a> <a
									href="javaScript:void();" class="dropdown-item">Another
									action</a> <a href="javaScript:void();" class="dropdown-item">Something
									else here</a>
								<div class="dropdown-divider"></div>
								<a href="javaScript:void();" class="dropdown-item">Separated
									link</a>
							</div>
						</div>
					</div>
				</div>
				<!-- End Breadcrumb-->

				<!-- Content  -->
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-body">
								<div class="card-title text-info">Thông tin Khách Hàng</div>
								<hr>
								<div class="form-group row">
									<label for="input-27" class="col-sm-2 col-form-label">Tài
										Khoản</label>
									<div class="col-sm-10">
										<input type="text" class="form-control form-control-rounded"
											id="txtAddUsername" name="txtAddUsername"
											placeholder="Nhập vào tài khoản...">
									</div>
								</div>
								<div class="form-group row">
									<label for="input-27" class="col-sm-2 col-form-label">Họ
										Tên</label>
									<div class="col-sm-10">
										<input type="text" class="form-control form-control-rounded"
											id="txtAddName" name="txtAddName"
											placeholder="Nhập vào họ tên...">
									</div>
								</div>
								<div class="form-group row">
									<label for="input-27" class="col-sm-2 col-form-label">Giới
										Tính</label>
									<div class="col-sm-10">
										<div class="icheck-material-primary icheck-inline">
											<input type="radio" id="rdoAddGender_true"
												name="rdoAddGender" checked value="true"> <label
												for="rdoAddGender_true">Nam</label>
										</div>
										<div class="icheck-material-info icheck-inline">
											<input type="radio" id="rdoAddGender_false"
												name="rdoAddGender" value="false"> <label
												for="rdoAddGender_false">Nữ</label>
										</div>
									</div>
								</div>
								<div class="form-group row">
									<label for="input-27" class="col-sm-2 col-form-label">Mật
										Khẩu</label>
									<div class="col-sm-10">
										<input type="text" class="form-control form-control-rounded"
											id="txtAddPassword" name="txtAddPassword"
											placeholder="Nhập vào mật khẩu...">
									</div>
								</div>
								<div class="form-group row">
									<label for="input-29" class="col-sm-2 col-form-label">Tỉnh/Thành
										Phố</label>
									<div class="col-sm-10">
										<select id="province" name="province"
											class="form-control multiple-select" multiple="multiple">
											<c:forEach var="listProvince" items="${listProvince }">
												<option value="${listProvince.matp }">${listProvince.name }</option>
											</c:forEach>
										</select>
									</div>
								</div>
								<div class="form-group row">
									<label for="input-29" class="col-sm-2 col-form-label">Huyện/Quận</label>

									<div class="col-sm-10">
										<select id="district" name="district"
											class="form-control multiple-select" multiple="multiple">
											<c:forEach var="listDictricts" items="${listDictricts }">
												<option value="${listDictricts.maqh }">${listDictricts.name }</option>
											</c:forEach>
										</select>
									</div>
								</div>
								<div class="form-group row">
									<label for="input-29" class="col-sm-2 col-form-label">Xã/Phường</label>

									<div class="col-sm-10">
										<select id="ward" name="ward"
											class="form-control multiple-select" multiple="multiple">
											<c:forEach var="listWard" items="${listWard }">
												<option value="${listWard.xaid }">${listWard.name }</option>
											</c:forEach>
										</select>
									</div>
								</div>
								<div class="form-group row">
									<label for="input-27" class="col-sm-2 col-form-label">Địa
										Chỉ Cụ Thể</label>
									<div class="col-sm-10">
										<input type="text" class="form-control form-control-rounded"
											id="txtAddAddress" name="txtAddAddress"
											placeholder="Nhập địa chỉ như tên đường, địa điểm nhận dạng...">
									</div>
								</div>
								<div class="form-group row">
									<label for="input-27" class="col-sm-2 col-form-label">Email</label>
									<div class="col-sm-10">
										<input type="text" class="form-control form-control-rounded"
											id="txtAddEmail" name="txtAddEmail"
											placeholder="Nhập vào địa chỉ Email của bạn...">
									</div>
								</div>
								<div class="form-group row">
									<label for="input-27" class="col-sm-2 col-form-label">Số
										Điện Thoại</label>
									<div class="col-sm-10">
										<input type="text" class="form-control form-control-rounded"
											id="txtAddPhone" name="txtAddPhone"
											placeholder="Nhập vào số điện thoại của bạn...">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label"></label>
									<div class="col-sm-10">
										<button type="submit" name="btnInsert"
											class="btn btn-info shadow-info btn-round px-5 btnInsert">
											<i class="zmdi zmdi-collection-plus"></i> Thêm
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--End Row-->
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-header">
								<i class="fa fa-table"></i> Data Exporting
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table id="example" class="table table-bordered">
										<thead>
											<tr>
												<th class="column-title">Id</th>
												<th class="column-title">Fullname</th>
												<th class="column-title">Username</th>
												<th class="column-title">Password</th>
												<th class="column-title">Email</th>
												<th class="column-title">Phone</th>
												<th class="column-title">Address</th>
												<th class="column-title">Gender</th>
												<th class="column-title">createAt</th>
												<th class="column-title">Status</th>
												<th class="column-title">Action</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="customers" items="${listCustomer}">
												<tr class="even pointer">
													<td class=" ">${customers.id }</td>
													<td class=" ">${customers.name }</td>
													<td class=" ">${customers.username }</td>
													<td class=" ">${customers.password }</td>
													<td class=" ">${customers.email }</td>
													<td class=" ">${customers.phone }</td>
													<td class=" ">${customers.address }</td>
													<td class=" ">${customers.gender }</td>
													<td class=" ">${customers.createAt }</td>
													<td class=" ">${customers.enabled }</td>
													<td class=" ">
														<button type="button" data-id="${customers.id }"
															class="btn btn-warning editCustomer">
															<i class="fa fa-pencil"> Sửa</i>
														</button>
														<button type="button" class="btn btn-danger btnDelete"
															data-id="${customers.id }" name="btnDelete">
															<i class="fa fa-trash"> Xóa</i>
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
		<div class="modal fade" id="edit-customer">
			<div class="modal-dialog" style="max-width: 700px">
				<div class="modal-content animated jackInTheBox">
					<div class="modal-header">
						<h5 class="modal-title">Chỉnh Sửa Thông Tin Khách Hàng</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="form-group row">
							<label for="input-27" class="col-sm-2 col-form-label">Id</label>
							<div class="col-sm-10">
								<input readonly type="text"
									class="form-control form-control-rounded" id="txtid"
									name="txtid" placeholder="Id">
							</div>
						</div>
						<div class="form-group row">
							<label for="input-27" class="col-sm-2 col-form-label">Tài
								Khoản</label>
							<div class="col-sm-10">
								<input readonly type="text" class="form-control form-control-rounded"
									id="txtusername" name="txtusername"
									placeholder="Nhập vào tài khoản...">
							</div>
						</div>
						<div class="form-group row">
							<label for="input-27" class="col-sm-2 col-form-label">Họ
								Tên</label>
							<div class="col-sm-10">
								<input type="text" class="form-control form-control-rounded"
									id="txtname" name="txtname" placeholder="Nhập vào họ tên...">
							</div>
						</div>
						<div class="form-group row">
							<label for="input-27" class="col-sm-2 col-form-label">Giới
								Tính</label>
							<div class="col-sm-4">
								<div class="icheck-material-primary icheck-inline">
									<input type="radio" id="rdoGender_true" name="rdoGender"
										checked value="true"> <label for="rdoGender_true">Nam</label>
								</div>
								<div class="icheck-material-info icheck-inline">
									<input type="radio" id="rdoGender_false" name="rdoGender"
										value="false"> <label for="rdoGender_false">Nữ</label>
								</div>
							</div>
							<label for="input-27" class="col-sm-2 col-form-label">Trạng
								Thái</label>
							<div class="col-sm-4">
								<div class="icheck-material-primary icheck-inline">
									<input type="radio" id="rdoenabled_true" name="rdoenabled"
										checked value="true"> <label for="rdoenabled_true">Bật</label>
								</div>
								<div class="icheck-material-info icheck-inline">
									<input type="radio" id="rdoenabled_false" name="rdoenabled"
										value="false"> <label for="rdoenabled_false">Tắt</label>
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label for="input-27" class="col-sm-2 col-form-label">Mật
								Khẩu</label>
							<div class="col-sm-10">
								<input type="text" class="form-control form-control-rounded"
									id="txtpassword" name="txtpassword"
									placeholder="Nhập vào mật khẩu...">
							</div>
						</div>
						<div class="form-group row">
							<label for="input-27" class="col-sm-2 col-form-label">Địa
								Chỉ Cụ Thể</label>
							<div class="col-sm-10">
								<input type="text" class="form-control form-control-rounded"
									id="txtaddress" name="txtaddress"
									placeholder="Nhập địa chỉ như tên đường, địa điểm nhận dạng...">
							</div>
						</div>
						<div class="form-group row">
							<label for="input-27" class="col-sm-2 col-form-label">Email</label>
							<div class="col-sm-10">
								<input type="text" class="form-control form-control-rounded"
									id="txtemail" name="txtemail"
									placeholder="Nhập vào địa chỉ Email của bạn...">
							</div>
						</div>
						<div class="form-group row">
							<label for="input-27" class="col-sm-2 col-form-label">Số
								Điện Thoại</label>
							<div class="col-sm-10">
								<input type="text" class="form-control form-control-rounded"
									id="txtphone" name="txtphone"
									placeholder="Nhập vào số điện thoại của bạn...">
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button"
							class="btn btn-danger shadow-danger btn-round px-5"
							data-dismiss="modal">
							<i class="fa fa-times"></i> Quay lại
						</button>
						<button type="button"
							class="btn btn-info shadow-info btn-round px-5 btnUpdate">
							<i class="fa fa-check-square-o"></i> Lưu
						</button>
					</div>
				</div>
			</div>
		</div>
		<!--End Modal -->
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
	<!-- Ajax  -->
	<script src="/resources/admin/build/customJS/ajaxofcustomer.js"></script>
	<!--Select Plugins Js-->
	<script src="/resources/admin/assets/plugins/select2/js/select2.min.js"></script>
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
		$(document).ready(
				function() {
					
					//Default data table
					$('#default-datatable').DataTable();
				        
					var table = $('#example').DataTable({
						lengthChange : false,
						buttons : [ 'copy', 'excel', 'pdf', 'print', 'colvis' ],
						"lengthMenu": [[5, 10, 25, 50, -1], [5, 10, 25, 50, "All"]]
					});

					table.buttons().container().appendTo(
							'#example_wrapper .col-md-6:eq(0)');

				});
	</script>

	<script>
		$(document).ready(function() {
			$('.multiple-select').select2();
		});
	</script>
<script type = "text/javascript" >
    $(document)
    .ready(
        function() {
            $('#district')
                .change(
                    function() {

                        $
                            .ajax({
                                type: "Post",
                                url: "/admin/test3",
                                data: {
                                    id: $(
                                            '#district')
                                        .val()
                                        .toString()
                                },
                                beforeSend: function() {
                                    $(
                                            '#icon2')
                                        .css({
                                            display: "inline-block"
                                        });
                                }
                            })
                            .done(
                                function(data) {
                                    $('#icon2')
                                        .css({
                                            display: "none"
                                        });
                                    $('#ward')
                                        .children()
                                        .remove();
                                    for (var i = 0; i < data.length; i++) {
                                        $(
                                                '#ward')
                                            .append(
                                                '<option value=' + data[i].maqh + '>' + data[i].name + '</option>');
                                    }
                                })
                            .fail(function(err) {
                                console.log(err);
                            });
                    });
        }); 
    </script>
</body>
</html>