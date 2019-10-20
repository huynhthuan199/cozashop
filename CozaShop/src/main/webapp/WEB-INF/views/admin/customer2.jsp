
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

<body>
	<div class="row">
		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="x_panel">
				<div class="x_title">
					<h2>Thông tin khách hàng</h2>
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
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
				<div class="x_content">
					<br />
					<div class="col-sm-4">
						<div class="form-group" style="margin-top: 20px">
							<label class="control-label" for="first-name">Province
								<span class="required">*</span>
							</label> <select id="province" name="province"
								required="required" class="form-control" onchange="">
								<c:forEach var="listProvince" items="${listProvince }">
									<option value="${listProvince.matp }">${listProvince.name }</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group" style="margin-top: 20px">
							<label class="control-label" for="first-name">District
								<span class="required">*</span>
							</label> <select id="district" name="district"
								required="required" class="form-control">
								<c:forEach var="listDictricts" items="${listDictricts }">
									<option value="${listDictricts.maqh }">${listDictricts.name }</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group" style="margin-top: 20px">
							<label class="control-label" for="first-name">Ward
								<span class="required">*</span>
							</label> <select id="ward" name="ward"
								required="required" class="form-control" onchange="">
								<c:forEach var="listWard" items="${listWard }">
									<option value="${listWard.xaid }">${listWard.name }</option>
								</c:forEach>
							</select>
						</div>
					</div>

				</div>
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

	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
	<!-- Update -->


<script type="text/javascript">
$(document).ready(function(){
	$('#province').change(function(){
 		$.ajax({
 			type : "Post",
			url : "test",
			data : {
				 id : $(this).val()
			} 
		}).done(function(data){
			$('#district').children().remove();
			for(var i = 0;i < data.length ; i++){
				$('#district').append('<option value=' + data[i].maqh + '>' + data[i].name +'</option>');
			}
					
		}).fail(function(err){
			console.log(err);
		}); 
	});
});
</script>

<script type="text/javascript">
$(document).ready(function(){
	$('#district').change(function(){
 		$.ajax({
 			type : "Post",
			url : "test3",
			data : {
				 id : $(this).val()
			} 
		}).done(function(data){
			$('#ward').children().remove();
			for(var i = 0;i < data.length ; i++){
				$('#ward').append('<option value=' + data[i].maqh + '>' + data[i].name +'</option>');
			}
					
		}).fail(function(err){
			console.log(err);
		}); 
	});
});
</script>
</body>
</html>