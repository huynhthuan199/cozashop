
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
</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<%@ include file="./block/nav.jsp"%>
			<!-- top navigation -->
			<%@ include file="./block/topnav.jsp"%>
			<!-- /top navigation -->
			<form method="post">
				<!-- page content -->
				<div class="right_col" role="main">
					<div class="">
						<div class="page-title">
							<div class="title_left">
								<h3>Tài khoản</h3>
							</div>
							<div class="title_right">
								<div
									class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
									<div class="input-group">
										<input name="txtSearch" type="text" class="form-control"
											placeholder="Search for..."> <span
											class="input-group-btn">
											<button type="submit" name="btnSearch"
												class="btn btn-default">Go!</button>
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
										<h2>Thông tin tài khoản</h2>
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
										<div class="col-sm-6">

											<div class="form-group">
												<label class="control-label" for="first-name">Id <span
													class="required">*</span>
												</label> <input name="id" type="text" id="first-name"
													required="required" class="form-control"
													value="${editID.id }">
											</div>
											<div class="form-group">
												<label class="control-label" for="first-name">Id <span
													class="required">*</span>
												</label> <input name="username" type="text" id="first-name"
													required="required" class="form-control"
													value="${editID.username }">
											</div>
											<div class="form-group">
												<label class="control-label" for="first-name">Pasword<span
													class="required">*</span>
												</label> <input name="pass" type="text" id="first-name"
													required="required" class="form-control"
													value="${editID.password }">
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label class="control-label" for="first-name">Họ tên
													<span class="required">*</span>
												</label> <input name="name" type="text" id="first-name"
													required="required" class="form-control"
													value="${editID.name }">
											</div>
											<div class="form-group">
												<label class="control-label" for="first-name">Vai
													trò <span class="required">*</span>
												</label> <input class="form-control"
													${editID.rules=='true'?'checked':''} type="radio"
													name="rules" value="true"> Quản Lý<br> <input
													class="form-control" ${editID.rules=='false'?'checked':''}
													type="radio" name="rules" value="false"> Nhân Viên<br>
											</div>
										</div>
										<button type="submit" class="btn btn-primary" name="btnInsert"
											style="float: right; margin-top: 20px">
											<i class="fa fa-refresh"> Thêm</i>
										</button>
										<button type="submit" class="btn btn-danger" name="btnDelete"
											style="float: right; margin-top: 20px">
											<i class="fa fa-trash"> Xóa</i>
										</button>
										<button type="submit" class="btn btn-success" name="btnUpdate"
											style="float: right; margin-top: 20px">
											<i class="fa fa-inbox"> Lưu</i>
										</button>
									</div>
								</div>
							</div>
						</div>
			</form>
			<div class="row">
				<div class="col-md-6 col-xs-12">
					<div class="x_panel" style="width: 1079px">
						<div class="x_title">
							<h2>Danh sách tài khoản</h2>

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
											<th class="column-title">STT</th>
											<th class="column-title">ID</th>
											<th class="column-title">Username</th>
											<th class="column-title">Password</th>
											<th class="column-title">Họ tên</th>
											<th class="column-title">Vai trò</th>
											<th class="column-title">Hành động</th>
										</tr>
									</thead>

									<tbody>
<%-- 										<c:if test="${empty txtSearch}"> --%>
											<c:set var="salary" scope="session" value="${0}" />
											<c:forEach var="users" items="${listusers}">
												<tr class="even pointer">
													<td class=" ">${salary + 1}</td>
													<td class=" ">${users.id}</td>
													<td class=" ">${users.username}</td>
													<input type="hidden" name="id" value="${users.id}">
													<td class=" ">${users.password }</td>
													<td class=" ">${users.name }</td>
													<td class=" ">${users.rules }</td>
													<td class=" ">
														<button type="button" class="btn btn-warning">
															<a href="?edit=&id=${users.id }"><i
																class="fa fa-pencil"> Sửa</i></a>
														</button>
													</td>
												</tr>
											</c:forEach>
<%-- 										</c:if> --%>
<%-- 										<c:if test="${not empty txtSearch}">
											<tr class="even pointer">
												<td class=" ">${listuser.id}</td>
												<td class=" ">${listuser.username}</td>
												<input type="hidden" name="id" value="${users.id}">
												<td class=" ">${listuser.password }</td>
												<td class=" ">${listuser.name }</td>
												<td class=" ">${listuser.rules }</td>
												<td class=" ">
													<button type="button" class="btn btn-warning">
														<a href="?edit=&username=${listuser.username }"><i
															class="fa fa-pencil"> Sửa</i></a>
													</button>
												</td>
											</tr>
											<hr>
										</c:if> --%>
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
                  <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">Large modal</button>

                  <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">

                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                        </div>
                        <div class="modal-body">
                          <h4>Text in a modal</h4>
                          <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                          <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                          <button type="button" class="btn btn-primary">Save changes</button>
                        </div>

                      </div>
                    </div>
                  </div>
	<!-- jQuery -->
	<script src="/resources/admin/vendors/jquery/dist/jquery.min.js"></script>
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
	<script src="/resources/admin/vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
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
</body>
</html>