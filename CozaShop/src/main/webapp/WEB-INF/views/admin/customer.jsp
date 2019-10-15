
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="images/favicon.ico" type="image/ico" />
<!-- Bootstrap -->
<link
	href="/resources/admin/vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link
	href="/resources/admin/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link href="/resources/admin/vendors/nprogress/nprogress.css"
	rel="stylesheet">
<!-- iCheck -->
<link href="/resources/admin/vendors/iCheck/skins/flat/green.css"
	rel="stylesheet">
<!-- bootstrap-wysiwyg -->
<link
	href="/resources/admin/vendors/google-code-prettify/bin/prettify.min.css"
	rel="stylesheet">
<!-- Select2 -->
<link href="/resources/admin/vendors/select2/dist/css/select2.min.css"
	rel="stylesheet">
<!-- Switchery -->
<link href="/resources/admin/vendors/switchery/dist/switchery.min.css"
	rel="stylesheet">
<!-- starrr -->
<link href="/resources/admin/vendors/starrr/dist/starrr.css"
	rel="stylesheet">
<!-- bootstrap-daterangepicker -->
<link
	href="/resources/admin/vendors/bootstrap-daterangepicker/daterangepicker.css"
	rel="stylesheet">

<!-- Custom Theme Style -->
<link href="/resources/admin/build/css/custom.min.css" rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css"
	rel="stylesheet" />
<title>Coza Store</title>

</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<%@ include file="./block/nav.jsp"%>
			<!-- top navigation -->
			<%@ include file="./block/topnav.jsp"%>
			<!-- /top navigation -->
			<!-- page content -->
			<div class="right_col" role="main">
				<div class="">
					<div class="page-title">
						<div class="title_left">
							<h3>Customer</h3>
						</div>

						<div class="title_right">
							<div
								class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
								<div class="input-group">
									<input id ="txtSearch" type="text" class="form-control"
										placeholder="Search for Username ..."> <span
										class="input-group-btn">
										<button class="btn btn-default btnSearch" type="button">Go!</button>
									</span>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>Infomation Customer</h2>
									<ul class="nav navbar-right panel_toolbox">
										<li><a class="collapse-link"><i
												class="fa fa-chevron-up"></i></a></li>
										<li class="dropdown"><a href="#" class="dropdown-toggle"
											data-toggle="dropdown" role="button" aria-expanded="false"><i
												class="fa fa-wrench"></i></a>
											<ul class="dropdown-menu" role="menu">
												<li><a href="#">Settings 1</a></li>
												<li><a href="#">Settings 2</a></li>
											</ul></li>
										<li><a class="close-link"><i class="fa fa-close"></i></a>
										</li>
									</ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<br />
									<div class="col-sm-4">
										<div class="form-group" >
											<label class="control-label" for="first-name">Fullname
												<span class="required">*</span>
											</label> <input id="addname" type="text" required="required"
												class="form-control">
										</div>
										<div class="form-group" style="margin-top: 20px">
											<label class="control-label" for="first-name">Address
												<span class="required">*</span>
											</label> <input id="addaddress" type="text" required="required"
												class="form-control">
										</div>
										<div class="form-group" style="margin-top: 20px">
											<label class="control-label" for="first-name">Email <span
												class="required">*</span>
											</label> <input id="addemail" type="text" required="required"
												class="form-control">
										</div>
									</div>

									<div class="col-sm-4">
										<div class="form-group"	>
											<label class="control-label" for="first-name">Username
												<span class="required">*</span>
											</label> <input id="addusername" type="text" required="required"
												class="form-control">
										</div>
										
										<div class="form-group" style="margin-top: 20px">
											<label class="control-label" for="first-name">Phone
											 <span class="required">*</span>
											</label> <input id="addphone" type="text" required="required"
												class="form-control">
										</div>
									</div>
									<div class="col-sm-4">
										<div style="margin-top: 20px">
											<label class="control-label" for="first-name">Gender
												<span class="required">*</span>
											</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" class="custom-control-input"
												id="addgender_true" name="addgender" value="true"> <label
												class="custom-control-label" >Men</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" class="custom-control-input"
												id="addgender_flase" name="addgender" value="false"> <label
												class="custom-control-label" >Women</label>
										</div>
										<div style="margin-top: 50px">
											<label class="control-label" for="first-name">Status <span
												class="required">*</span>
											</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" class="custom-control-input"
												id="addenabled_true" name="addenabled" value="true"> <label
												class="custom-control-label" >on</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" class="custom-control-input"
												id="addenabled_false" name="addenabled" value="false"> <label
												class="custom-control-label" >off</label>
										</div>
									</div>
									<button type="button" class="btn btn-primary btnInsert"
										style="float: right; margin-top: 40px">
										<i class="fa fa-refresh"> Thêm</i>
									</button>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-12 col-xs-12">
								<div class="x_panel" style="width: 1112px">
									<div class="x_title">
										<h2>Danh sách khách hàng</h2>
										<ul class="nav navbar-right panel_toolbox">
											<li><a class="collapse-link"><i
													class="fa fa-chevron-up"></i></a></li>
											<li class="dropdown"><a href="#" class="dropdown-toggle"
												data-toggle="dropdown" role="button" aria-expanded="false"><i
													class="fa fa-wrench"></i></a>
												<ul class="dropdown-menu" role="menu">
													<li><a href="#">Settings 1</a></li>
													<li><a href="#">Settings 2</a></li>
												</ul></li>
											<li><a class="close-link"><i class="fa fa-close"></i></a>
											</li>
										</ul>
										<div class="clearfix"></div>
									</div>
									<div class="x_content">
										<div class="table-responsive">
											<table class="table table-striped jambo_table bulk_action">
												<thead>
													<tr class="headings">
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
																	<i class="fa fa-pencil"> Edit</i>
																</button>
															</td>
														</tr>
													</c:forEach>
													<hr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /page content -->

				<!-- footer content -->
				<footer>
					<%@ include file="./block/footer.jsp"%>
					<!-- /footer content -->
			</div>
		</div>

		<!-- Large modal -->
		<div id="edit-customer" class="modal fade" tabindex="-1" role="dialog"
			aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<!-- 			<form method="get"> -->
				<div class="modal-content">
					<div class="x_content">
									<br />
									<div class="col-sm-4">
										<div class="form-group">
											<label class="control-label" for="first-name">Id <span
												class="required">*</span>
											</label> <input readonly id="id" type="text" required="required"
												class="form-control">
										</div>
										<div class="form-group" style="margin-top: 20px">
											<label class="control-label" for="first-name">Fullname
												<span class="required">*</span>
											</label> <input id="name" type="text" required="required"
												class="form-control">
										</div>
										<div class="form-group" style="margin-top: 20px">
											<label class="control-label" for="first-name">Address
												<span class="required">*</span>
											</label> <input id="address" type="text" required="required"
												class="form-control">
										</div>
										<div class="form-group" style="margin-top: 20px">
											<label class="control-label" for="first-name">Ngày
												Tạo <span class="required">*</span>
											</label> <input readonly id="createAt" type="text" required="required"
												class="form-control">
										</div>
									</div>

									<div class="col-sm-4">
										<div class="form-group">
											<label class="control-label" for="first-name">Username
												<span class="required">*</span>
											</label> <input id="username" type="text" required="required"
												class="form-control">
										</div>
										<div class="form-group" style="margin-top: 20px">
											<label class="control-label" for="first-name">Password
												<span class="required">*</span>
											</label> <input id="password" type="text" required="required"
												class="form-control">
										</div>
										<div class="form-group" style="margin-top: 20px">
											<label class="control-label" for="first-name">Phone
											 <span class="required">*</span>
											</label> <input id="phone" type="text" required="required"
												class="form-control">
										</div>
										<div class="form-group" style="margin-top: 20px">
											<label class="control-label" for="first-name">Email <span
												class="required">*</span>
											</label> <input id="email" type="text" required="required"
												class="form-control">
										</div>
									</div>
									<div class="col-sm-4">
										<div style="margin-top: 20px">
											<label class="control-label" for="first-name">Gender
												<span class="required">*</span>
											</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" class="custom-control-input"
												id="gender_true" name="gender" value="true"> <label
												class="custom-control-label" >Men</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" class="custom-control-input"
												id="gender_flase" name="gender" value="false"> <label
												class="custom-control-label" >Women</label>
										</div>
										<div style="margin-top: 20px">
											<label class="control-label" for="first-name">Status <span
												class="required">*</span>
											</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" class="custom-control-input"
												id="enabled_true" name="enabled" value="true"> <label
												class="custom-control-label" for="defaultInline1">on</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" class="custom-control-input"
												id="enabled_false" name="enabled" value="false"> <label
												class="custom-control-label" for="defaultInline2">off</label>
										</div>
									</div>
								</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-success btnUpdate"
							name="btnUpdate" style="float: right; margin-top: 20px">
							<i class="fa fa-inbox"> Save</i>
						</button>
						<button type="button" class="btn btn-danger btnDelete"
							name="btnDelete" style="float: right; margin-top: 20px">
							<i class="fa fa-trash"> Delete</i>
						</button>
					</div>
			</div>
		</div>
		<!-- jQuery -->
		<script src="/resources/admin/vendors/jquery/dist/jquery.min.js"></script>
		<!-- Bootstrap -->
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
		<script
			src="/resources/admin/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
		<!-- FastClick -->
		<script src="/resources/admin/vendors/fastclick/lib/fastclick.js"></script>
		<!-- NProgress -->
		<script src="/resources/admin/vendors/nprogress/nprogress.js"></script>
		<!-- bootstrap-progressbar -->
		<script
			src="/resources/admin/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
		<!-- iCheck -->
		<script src="/resources/admin/vendors/iCheck/icheck.min.js"></script>
		<!-- bootstrap-daterangepicker -->
		<script src="/resources/admin/vendors/moment/min/moment.min.js"></script>
		<script
			src="/resources/admin/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
		<!-- bootstrap-wysiwyg -->
		<script
			src="/resources/admin/vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
		<script
			src="/resources/admin/vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
		<script
			src="/resources/admin/vendors/google-code-prettify/src/prettify.js"></script>
		<!-- jQuery Tags Input -->
		<script
			src="/resources/admin/vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
		<!-- Switchery -->
		<script src="/resources/admin/vendors/switchery/dist/switchery.min.js"></script>
		<!-- Select2 -->
		<script
			src="/resources/admin/vendors/select2/dist/js/select2.full.min.js"></script>
		<!-- Parsley -->
		<script src="/resources/admin/vendors/parsleyjs/dist/parsley.min.js"></script>
		<!-- Autosize -->
		<script src="/resources/admin/vendors/autosize/dist/autosize.min.js"></script>
		<!-- jQuery autocomplete -->
		<script
			src="/resources/admin/vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
		<!-- starrr -->
		<script src="/resources/admin/vendors/starrr/dist/starrr.js"></script>
		<!-- Custom Theme Scripts -->
		<script src="/resources/admin/build/js/custom.min.js"></script>
		
		<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>

		<!-- Edit  -->
		<script type="text/javascript">
			$(document).ready(function() {
				$('.editCustomer').click(function() {
					$.ajax({
						url : "customer/" + $(this).data("id"),
						type : "GET"
					}).done(function(data) {
						$('#id').val(data.id);
						$('#username').val(data.username);
						$('#name').val(data.name);
						$('#address').val(data.address);
						$('#password').val(data.password);
						$('#gender').val(data.gender);
						$('#email').val(data.email);
						$('#phone').val(data.phone);
						$('#createAt').val(data.createAt);
						$('#enabled').val(data.enabled);
						$('.enabled').prop("checked", data.enabled);
						$('#edit-customer').modal('show');
					}).fail(function(err) {
						console.log(err);
					});
				});
			});
		</script>

		<!-- Insert  -->
		<script type="text/javascript">
$(document).ready(function(){
	$('.btnInsert').click(function(){
	var addusername = $('#addusername').val();
	if(addusername == ""){
		Swal.fire({
			  type: 'error',
			  title: 'Thông Báo...',
			  text: 'Không Được bỏ trống tài khoản !',
			  footer: '<a href>Try it...</a>'
			})
			return;
	}
	var addname = $('#addname').val();
	if(addname == ""){
		Swal.fire({
			  type: 'error',
			  title: 'Thông Báo...',
			  text: 'Không Được bỏ trống họ tên !',
			  footer: '<a href>Try it...</a>'
			})
			return;
	}
	
	var addphone = $('#addphone').val();
	if(addname == ""){
		Swal.fire({
			  type: 'error',
			  title: 'Thông Báo...',
			  text: 'Không Được bỏ trống số diện thoại !',
			  footer: '<a href>Try it...</a>'
			})
			return;
	}
	
	var addemail = $('#addemail').val();
	if(addname == ""){
		Swal.fire({
			  type: 'error',
			  title: 'Thông Báo...',
			  text: 'Không Được bỏ trống email !',
			  footer: '<a href>Try it...</a>'
			})
			return;
	}
	
	var addaddress = $('#addaddress').val();
	if(addname == ""){
		Swal.fire({
			  type: 'error',
			  title: 'Thông Báo...',
			  text: 'Không Được bỏ trống địa chỉ !',
			  footer: '<a href>Try it...</a>'
			})
			return;
	}
	
	var addgender = $("input[name='addgender']:checked").val();
	var addenabled = $("input[name='addenabled']:checked").val();
 		$.ajax({
 			type : "GET",
			url : "customer/btnInsert",
			data : {  
				 addusername : addusername,
				 addname : addname,
				 addphone : addphone,
				 addaddress : addaddress,
				 addemail : addemail,
				 addgender : addgender,
				 addenabled : addenabled
			} 
		}).done(function(data){
				if(data != null){
					Command: toastr["success"]("Thêm Thành Công", "Thông Báo")
					toastr.options = {
					  "closeButton": false,
					  "debug": false,
					  "newestOnTop": false,
					  "progressBar": true,
					  "positionClass": "toast-top-right",
					  "preventDuplicates": false,
					  "onclick": null,
					  "showDuration": "300",
					  "hideDuration": "1000",
					  "timeOut": "5000",
					  "extendedTimeOut": "1000",
					  "showEasing": "swing",
					  "hideEasing": "linear",
					  "showMethod": "fadeIn",
					  "hideMethod": "fadeOut"
					}
				location.reload();
				}		
		}).fail(function(err){
			console.log(err);
			Command: toastr["warning"]("Thêm thất bại", "Thông Báo")
			toastr.options = {
			  "closeButton": false,
			  "debug": false,
			  "newestOnTop": true,
			  "progressBar": true,
			  "positionClass": "toast-top-right",
			  "preventDuplicates": false,
			  "onclick": null,
			  "showDuration": "300",
			  "hideDuration": "1000",
			  "timeOut": "5000",
			  "extendedTimeOut": "1000",
			  "showEasing": "swing",
			  "hideEasing": "linear",
			  "showMethod": "fadeIn",
			  "hideMethod": "fadeOut"
			}
		}); 
	});
});
</script>

		<!-- Update -->
		<script type="text/javascript">
$(document).ready(function(){
	$('.btnUpdate').click(function(){
	var id = $('#id').val();
	var username = $('#username').val();
	var password = $('#password').val();
	var name = $('#name').val();
	var phone = $('#phone').val();
	var email = $('#email').val();
	var address = $('#address').val();
	var gender = $("input[name='gender']:checked").val();
	var enabled = $("input[name='enabled']:checked").val();
 		$.ajax({
 			type : "GET",
			url : "customer/btnUpdate",
			data : {
				 id : id,
				 username : username,
				 password : password,
				 name : name,
				 phone : phone,
				 email : email,
				 address : address,
				 gender : gender,
				 enabled : enabled
			} 
		}).done(function(data){
			console.log(data);
				if(data != null){
					Command: toastr["success"]("Sửa Thành Công", "Thông Báo")
					toastr.options = {
					  "closeButton": false,
					  "debug": false,
					  "newestOnTop": false,
					  "progressBar": true,
					  "positionClass": "toast-top-right",
					  "preventDuplicates": false,
					  "onclick": null,
					  "showDuration": "300",
					  "hideDuration": "1000",
					  "timeOut": "5000",
					  "extendedTimeOut": "1000",
					  "showEasing": "swing",
					  "hideEasing": "linear",
					  "showMethod": "fadeIn",
					  "hideMethod": "fadeOut"
					}
				location.reload();
				}		
		}).fail(function(err){
			console.log(err);
			Command: toastr["warning"]("Sửa thất bại", "Thông Báo")
			toastr.options = {
			  "closeButton": false,
			  "debug": false,
			  "newestOnTop": true,
			  "progressBar": true,
			  "positionClass": "toast-top-right",
			  "preventDuplicates": false,
			  "onclick": null,
			  "showDuration": "300",
			  "hideDuration": "1000",
			  "timeOut": "5000",
			  "extendedTimeOut": "1000",
			  "showEasing": "swing",
			  "hideEasing": "linear",
			  "showMethod": "fadeIn",
			  "hideMethod": "fadeOut"
			}
		}); 
	});
});
</script>
		<!-- Delete  -->
		<script type="text/javascript">
		$(document).ready(function(){
			$('.btnDelete').click(function(){
				Swal.fire({
					  title: 'Bạn Có Chắc?',
					  text: " Xóa sẽ không khôi phục được...",
					  type: 'warning',
					  showCancelButton: true,
					  confirmButtonColor: '#3085d6',
					  cancelButtonColor: '#d33',
					  confirmButtonText: 'Yes, delete it!'
					}).then((result) => {
						var id = $('#id').val();
						$.ajax({
							url : "customer/btnDelete",
							type : "GET",
							data : {
								id : id
							}
						}).done(function(data){
							if(data != null ){
							Command: toastr["success"]("Xóa Thành Công", "Thông Báo")
							toastr.options = {
							  "closeButton": false,
							  "debug": false,
							  "newestOnTop": false,
							  "progressBar": true,
							  "positionClass": "toast-top-right",
							  "preventDuplicates": false,
							  "onclick": null,
							  "showDuration": "300",
							  "hideDuration": "1000",
							  "timeOut": "5000",
							  "extendedTimeOut": "1000",
							  "showEasing": "swing",
							  "hideEasing": "linear",
							  "showMethod": "fadeIn",
							  "hideMethod": "fadeOut"
							}
						location.reload();
						}else if(data == null){
							Command: toastr["warning"]("Xóa thất bại", "Thông Báo")
							toastr.options = {
							  "closeButton": false,
							  "debug": false,
							  "newestOnTop": true,
							  "progressBar": true,
							  "positionClass": "toast-top-right",
							  "preventDuplicates": false,
							  "onclick": null,
							  "showDuration": "300",
							  "hideDuration": "1000",
							  "timeOut": "5000",
							  "extendedTimeOut": "1000",
							  "showEasing": "swing",
							  "hideEasing": "linear",
							  "showMethod": "fadeIn",
							  "hideMethod": "fadeOut"
							}
						}
						}).fail(function(err){
							console.log(err);
						});
					})
			});
		});
	</script>
<!-- Search  -->
		<script type="text/javascript">
		$(document).ready(function(){
			$('.btnSearch').click(function(){
				var id = $("#txtSearch").val();
				$.ajax({
					url : "customer/" + id,
					type : "GET"
				}).done(function(data){
					if(data != null){
						Command: toastr["success"]("Có thông tin User", "Thông Báo")

						toastr.options = {
						  "closeButton": false,
						  "debug": false,
						  "newestOnTop": false,
						  "progressBar": true,
						  "positionClass": "toast-top-right",
						  "preventDuplicates": false,
						  "onclick": null,
						  "showDuration": "300",
						  "hideDuration": "1000",
						  "timeOut": "5000",
						  "extendedTimeOut": "1000",
						  "showEasing": "swing",
						  "hideEasing": "linear",
						  "showMethod": "fadeIn",
						  "hideMethod": "fadeOut"
						}
					$('#id').val(data.id);
					$('#username').val(data.username);
					$('#name').val(data.name);
					$('#address').val(data.address);
					$('#password').val(data.password);
					$('#gender').val(data.gender);
					$('#email').val(data.email);
					$('#phone').val(data.phone);
					$('#createAt').val(data.createAt);
					$('#enabled').val(data.enabled);
					$('.enabled').prop("checked", data.enabled);
					$('#edit-customer').modal('show');
				}
				}).fail(function(err){
					Command: toastr["warning"]("Không tồn tại User", "Thông Báo")

					toastr.options = {
					  "closeButton": false,
					  "debug": false,
					  "newestOnTop": true,
					  "progressBar": true,
					  "positionClass": "toast-top-right",
					  "preventDuplicates": false,
					  "onclick": null,
					  "showDuration": "300",
					  "hideDuration": "1000",
					  "timeOut": "5000",
					  "extendedTimeOut": "1000",
					  "showEasing": "swing",
					  "hideEasing": "linear",
					  "showMethod": "fadeIn",
					  "hideMethod": "fadeOut"
					}
				});
			});
		});
	</script>
</body>
</html>