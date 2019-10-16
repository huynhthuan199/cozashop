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

<title>Coza Store</title>
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
							<h3>Users</h3>
						</div>
						<div class="title_right">
							<div
								class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
								<div class="input-group">
									<input id="txtSearch" name="txtSearch" type="text"
										class="form-control" placeholder="Search With ID User...">
									<span class="input-group-btn">
										<button type="button" class="btn btn-default btnSearch">Go!</button>
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
									<h2>Infomation Users</h2>
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

								<!-- 								<form method="post"> -->
								<div class="x_content">
									<br />
									<div class="col-sm-6">
										<div class="form-group">
											<label class="control-label" for="first-name">Username
												<span class="required">*</span>
											</label> <input id="addusername" name="addusername" type="text"
												id="first-name" class="form-control" value="">
										</div>
										<div class="form-group">
											<label class="control-label" for="first-name">Fullname
												<span class="required">*</span>
											</label> <input id="addname" name="addname" type="text"
												id="first-name" class="form-control" value="">
										</div>
									</div>
									<div class="col-sm-6" style="padding-left: 40px">

										<div>
											<label class="control-label" for="first-name">Rules <span
												class="required">*</span>
											</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" class="custom-control-input"
												id="addrules_true" name="addrules" value="true"> <label
												class="custom-control-label">Manager</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" class="custom-control-input"
												id="addrules_false" name="addrules" value="false"> <label
												class="custom-control-label">Employees</label>
										</div>

										<div>
											<label class="control-label" for="first-name">Status
												<span class="required">*</span>
											</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" class="custom-control-input"
												id="addenabled_true" name="addenabled" value="true">
											<label class="custom-control-label">On</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" class="custom-control-input"
												id="addenabled_false" name="addenabled" value="false">
											<label class="custom-control-label">Off</label>
										</div>
									</div>
									<button type="submit" class="btn btn-primary btnInsert"
										name="btnInsert" style="float: right; margin-top: 20px">
										<i class="fa fa-refresh"> Insert</i>
									</button>

								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-12 col-xs-12">
								<div class="x_panel" style="width: 1112px">
									<div class="x_title">
										<h2>List Users</h2>

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
											<li><a class="close-link"><i class="fa fa-close"></i></a></li>
										</ul>
										<div class="clearfix"></div>

									</div>
									<div class="x_content" style="margin-top: -20px">

										<br />
										<div class="table-responsive">
											<table class="table table-striped jambo_table bulk_action">
												<thead>
													<tr class="headings">
														<th class="column-title">Id</th>
														<th class="column-title">Username</th>
														<th class="column-title">Password</th>
														<th class="column-title">Fullname</th>
														<th class="column-title">Rules</th>
														<th class="column-title">CreateAt</th>
														<th class="column-title">Status</th>
														<th class="column-title">Action</th>
													</tr>
												</thead>

												<tbody>
													<c:forEach var="users" items="${listusers}">
														<tr class="even pointer">
															<td class=" ">${users.id}</td>
															<td class=" ">${users.username}</td>
															<input type="hidden" name="id" value="${users.id}">
															<td class=" ">${users.password }</td>
															<td class=" ">${users.name }</td>
															<td class=" ">${users.rules }</td>
															<td class=" ">${users.createAt}</td>
															<td class=" ">${users.enabled}</td>
															<td class=" ">
																<button type="button" data-id="${users.id }"
																	class="btn btn-warning edituser">
																	<i class="fa fa-pencil"> Edit</i>
																</button>

																<button type="button" class="btn btn-danger btnDelete"
																	name="btnDelete" data-id="${users.id }">
																	<i class="fa fa-trash"> Delete</i>
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
					</div>
				</div>
				<!-- /page content -->

				<!-- footer content -->
				<%@ include file="./block/footer.jsp"%>
				<!-- /footer content -->
			</div>
		</div>
		<!-- Large modal -->

		<div id="edit-user" class="modal fade" tabindex="-1" role="dialog"
			aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<!-- 			<form method="get"> -->
				<div class="modal-content">
					<div class="x_content">
						<br />
						<div class="col-sm-6">

							<div class="form-group">
								<label class="control-label" for="first-name">Id <span
									class="required">*</span>
								</label> <input readonly id="id" name="id" type="text" id="first-name"
									required="required" class="form-control" value="">
							</div>
							<div class="form-group">
								<label class="control-label" for="first-name">Username <span
									class="required">*</span>
								</label> <input id="username" name="username" type="text"
									id="first-name" required="required" class="form-control"
									value="">
							</div>
							<div class="form-group">
								<label class="control-label" for="first-name">Password<span
									class="required">*</span>
								</label> <input id="password" name="password" type="text"
									id="first-name" required="required" class="form-control"
									value="">
							</div>

							<div class="form-group">
								<label class="control-label" for="first-name">CreateAt<span
									class="required">*</span>
								</label> <input readonly id="createAt" name="createAt" type="datetime"
									id="first-name" required="required" class="form-control"
									value="">
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label class="control-label" for="first-name">Fullname <span
									class="required">*</span>
								</label> <input id="name" name="name" type="text" id="first-name"
									required="required" class="form-control" value="">
							</div>
							<div style="margin-top: 20px">
								<label class="control-label" for="first-name">Rules <span
									class="required">*</span>
								</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" class="custom-control-input" id="rules_true"
									name="rules" value="true"> <label class="custom-control-label"
									>Manager</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" class="custom-control-input"
									id="rules_false" name="rules" value="false"> <label
									class="custom-control-label" >Employees</label>
							</div>

							<div>
								<label class="control-label" for="first-name">Status <span
									class="required">*</span>
								</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" class="custom-control-input"
									id="enabled_true" name="enabled" value="true"> <label
									class="custom-control-label" >On</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" class="custom-control-input"
									id="enabled_false" name="enabled" value="false"> <label
									class="custom-control-label" >Off</label>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-success btnUpdate"
							name="btnUpdate" style="float: right; margin-top: 20px">
							<i class="fa fa-inbox"> Save</i>
						</button>
					</div>
				</div>
				<!-- 			</form> -->
			</div>
		</div>
		<!-- jQuery -->
		<script src="/resources/admin/vendors/jquery/dist/jquery.min.js"></script>
		<!-- jQuery -->
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
		<!-- Bootstrap -->
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
		<script type="text/javascript">
		
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
			</script>
		<!-- Insert  -->
		<script type="text/javascript">
	$(document).ready(function(){
	$('.btnInsert').click(function(){
	var addusername = $('#addusername').val();
	console.log(addusername);
	var addname = $('#addname').val();
	var addrules = $("input[name='addrules']:checked").val();
	var addenabled = $("input[name='addenabled']:checked").val();
 		$.ajax({
 			type : "POST",
			url : "user/btnInsert",
			data : {  
				 username : addusername,
				 name : addname,
				 rules : addrules,
				 enabled : addenabled
			} 
		}).done(function(data){
				Command: toastr[data.status](data.message, "Thông Báo");
				if(data.status == 'success'){
					location.reload();
				} 		
		}).fail(function(err){
			console.log(err);
			Command: toastr["warning"]("Thêm thất bại", "Thông Báo")
		}); 
	});
});
</script>
		<!-- Edit  -->
		<script type="text/javascript">
		$(document).ready(function(){
			$('.edituser').click(function(){
				$.ajax({
					url : "user/" + $(this).data("id"),
					type : "GET"
				}).done(function(data){
					$('#id').val(data.id);
					$('#username').val(data.username);
					$('#name').val(data.name);
					$('#password').val(data.password);
					$('#createAt').val(data.createAt);
					$('.enabled').prop("checked", data.enabled);
					$('.rules').prop("checked", data.rules);
					data.rules ? $('#rules_true').prop("checked", true) : $('#rules_false').prop("checked", true);
					data.enabled ? $('#enabled_true').prop("checked", true) : $('#enabled_false').prop("checked", true);
					$('#edit-user').modal('show');
				}).fail(function(err){
					console.log(err);
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
					  confirmButtonText: 'Xóa',
					  cancelButtonText: "Hủy"
					}).then((result) => {
						if(result.value){
							$.ajax({
								url : "user/btnDelete",
								type : "GET",
								data : {
									id : $(this).data("id")
								}
							}).done((data) => {
								if(data != null ){
								Command: toastr["success"]("Xóa Thành Công", "Thông Báo")
								$(this).parent().parent().remove();
							}
							}).fail(function(err){
								console.log(err);
							});
						}	
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
					url : "user/" + id,
					type : "GET"
				}).done(function(data){
					if(data != null){
						Command: toastr["success"]("Có thông tin User", "Thông Báo")
					$('#id').val(data.id);
					$('#username').val(data.username);
					$('#name').val(data.name);
					$('#password').val(data.password);
					$('#createAt').val(data.createAt);
					data.rules ? $('#rules_true').prop("checked", true) : $('#rules_false').prop("checked", true);
					data.enabled ? $('#enabled_true').prop("checked", true) : $('#enabled_false').prop("checked", true);	
					$('#edit-user').modal('show');
				}
				}).fail(function(err){
					Command: toastr["warning"]("Không tồn tại User", "Thông Báo")
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
	var rules = $("input[name='rules']:checked").val();
	var enabled = $("input[name='enabled']:checked").val();
	console.log(rules);
	console.log(enabled);
 		$.ajax({
 			type : "GET",
			url : "user/btnUpdate",
			data : {
				 id : id,
				 username : username,
				 password : password,
				 name : name,
				 rules : rules,
				 enabled : enabled
			} 
		}).done(function(data){
			Command: toastr[data.status](data.message, "Thông Báo")
				if(data.status == 'success'){
					
				location.reload();
				}		
		}).fail(function(err){
			console.log(err);
			Command: toastr["warning"]("Sửa thất bại", "Thông Báo")
		}); 
	});
});
</script>
</body>
</html>