<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <!-- Toastr -->
	<link
	href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css"
	rel="stylesheet">
	<!-- Select2 -->
	<link href="/resources/admin/assets/plugins/select2/css/select2.min.css"
	rel="stylesheet">
    <title>Đăng Nhập</title>
    <style>
    
    input select{
    margin: 10px;
    }
    /* sign in FORM */
    
#logreg-forms{
    width:412px;
    margin:10vh auto;
    background-color:#f3f3f3;
    box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
  transition: all 0.3s cubic-bezier(.25,.8,.25,1);
}
#logreg-forms form {
    width: 100%;
    max-width: 410px;
    padding: 15px;
    margin: auto;
}
#logreg-forms .form-control {
    position: relative;
    box-sizing: border-box;
    height: auto;
    padding: 10px;
    font-size: 16px;
}
#logreg-forms .form-control:focus { z-index: 2; }
#logreg-forms .form-signin input[type="email"] {
    margin-bottom: -1px;
    border-bottom-right-radius: 0;
    border-bottom-left-radius: 0;
}
#logreg-forms .form-signin input[type="password"] {
    border-top-left-radius: 0;
    border-top-right-radius: 0;
}

#logreg-forms .social-login{
    width:390px;
    margin:0 auto;
    margin-bottom: 14px;
}
#logreg-forms .social-btn{
    font-weight: 100;
    color:white;
    width:190px;
    font-size: 0.9rem;
}

#logreg-forms a{
    display: block;
    padding-top:10px;
    color:lightseagreen;
}

#logreg-form .lines{
    width:200px;
    border:1px solid red;
}


#logreg-forms button[type="submit"]{ margin-top:10px; }

#logreg-forms .facebook-btn{  background-color:#3C589C; }

#logreg-forms .google-btn{ background-color: #DF4B3B; }

#logreg-forms .form-reset, #logreg-forms .form-signup{ display: none; }

#logreg-forms .form-signup .social-btn{ width:210px; }

#logreg-forms .form-signup input { margin-bottom: 2px;}

.form-signup .social-login{
    width:210px !important;
    margin: 0 auto;
}

/* Mobile */

@media screen and (max-width:500px){
    #logreg-forms{
        width:300px;
    }
    
    #logreg-forms  .social-login{
        width:200px;
        margin:0 auto;
        margin-bottom: 10px;
    }
    #logreg-forms  .social-btn{
        font-size: 1.3rem;
        font-weight: 100;
        color:white;
        width:200px;
        height: 56px;
        
    }
    #logreg-forms .social-btn:nth-child(1){
        margin-bottom: 5px;
    }
    #logreg-forms .social-btn span{
        display: none;
    }
    #logreg-forms  .facebook-btn:after{
        content:'Facebook';
    }
  
    #logreg-forms  .google-btn:after{
        content:'Google+';
    }
    </style>
</head>
<body style="background: #d53369;
		background: -webkit-linear-gradient(to right, #cbad6d, #d53369);
		background: linear-gradient(to right, #cbad6d, #d53369);">
    <div id="logreg-forms">
        <form class="form-signin" id="form-signin">
            <h1 class="h3 mb-3 font-weight-normal" style="text-align: center">Đăng Nhập</h1>
            <div class="social-login">
                <button disabled="disabled" class="btn facebook-btn social-btn" type="button"><span><i class="fab fa-facebook-f"></i> Sign in with Facebook</span> </button>
                <button disabled="disabled" class="btn google-btn social-btn" type="button"><span><i class="fab fa-google-plus-g"></i> Sign in with Google+</span> </button>
            </div>
            <p style="text-align:center"> Hoặc </p>
            <input type="text"  class="form-control" name="username" placeholder="Nhập tài khoản" value="0v0VjBRz" required="">
            <input type="password"  class="form-control" name="password" placeholder="Nhập mật Khẩu" value="OYTNNCkJqa" required="">
            
            <button class="btn btn-success btn-block" type="button" id="btnlogin"><i class="fas fa-sign-in-alt"></i>Đăng Nhập</button>
            <a href="#" id="forgot_pswd">Quên Mật Khẩu?</a>
            <hr>
            <!-- <p>Don't have an account!</p>  -->
            <button class="btn btn-primary btn-block" type="button"  id="btn-signup"><i class="fas fa-user-plus"></i>Chưa Có Tài Khoản</button>
            </form>
            <form class="form-reset" id="form-reset">
                <input type="email" name="email" id="resetEmail" class="form-control" placeholder="Nhập địa chỉ email..." required="" autofocus="">
                <button class="btn btn-primary btn-block" type="button" id="btnreset">Reset Password</button>
                <a href="#" id="cancel_reset"><i class="fas fa-angle-left"></i> Back</a>
            </form>
            
            <form class="form-signup">
                <p class="h3 mb-3 font-weight-normal" style="text-align:center">Đăng Ký</p>
                <hr>
										<input type="text" class="form-control form-control-rounded"
											id="txtAddUsername" name="txtAddUsername"
											placeholder="Nhập vào tài khoản...">
									
										<input type="text" class="form-control form-control-rounded"
											id="txtAddName" name="txtAddName"
											placeholder="Nhập vào họ tên...">
									
								<div class="form-group row">
									<label style="margin-top: 2px;" for="input-27" class="col-sm-3 col-form-label">Giới
										Tính</label>
									<div class="col-sm-9">
										<div style="margin-top: 9px;">
											<input type="radio" id="rdoAddGender_true"
												name="rdoAddGender" checked value="true"> <label style="margin-right: 10px;"
												for="rdoAddGender_true">Nam</label>
											<input type="radio" id="rdoAddGender_false"
												name="rdoAddGender" value="false"> <label
												for="rdoAddGender_false">Nữ</label>
										</div>
									</div>
								</div>
								
										<input type="text" class="form-control form-control-rounded"
											id="txtAddPassword" name="txtAddPassword"
											placeholder="Nhập vào mật khẩu...">
									
										<select id="province" name="province"
											class="form-control multiple-select" multiple="multiple">
											<c:forEach var="listProvince" items="${listProvince }">
												<option value="${listProvince.matp }">${listProvince.name }</option>
											</c:forEach>
										</select>
									
										<select id="district" name="district"
											class="form-control multiple-select" multiple="multiple">
											<c:forEach var="listDictricts" items="${listDictricts }">
												<option value="${listDictricts.maqh }">${listDictricts.name }</option>
											</c:forEach>
										</select>
										
										<select id="ward" name="ward"
											class="form-control multiple-select" multiple="multiple">
											<c:forEach var="listWard" items="${listWard }">
												<option value="${listWard.xaid }">${listWard.name }</option>
											</c:forEach>
										</select>
										
										<input type="text" class="form-control form-control-rounded"
											id="txtAddAddress" name="txtAddAddress"
											placeholder="Nhập địa chỉ như tên đường, địa điểm nhận dạng...">
									
										<input type="text" class="form-control form-control-rounded"
											id="txtAddEmail" name="txtAddEmail"
											placeholder="Nhập vào địa chỉ Email của bạn...">
																
										<input type="text" class="form-control form-control-rounded"
											id="txtAddPhone" name="txtAddPhone"
											placeholder="Nhập vào số điện thoại của bạn...">
											
                <button class="btn btn-primary btn-block" type="button" id="btnInsert"><i class="fas fa-user-plus" ></i>Đăng Ký</button>
                <a href="#" id="cancel_signup"><i class="fas fa-angle-left"></i> Back</a>
            </form>
            <br>
            
    </div>
    <p style="text-align:center">
        <a href="./index" target="_blank" style="color:black">Coza Shop</a>
    </p>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    	<!--Sweet Alerts -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
	<!--Toastr -->
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
		<!--Select Plugins Js-->
	<script src="/resources/admin/assets/plugins/select2/js/select2.min.js"></script>
    <script src="/resources/web/js/custom.js"></script>
    	<script>
		$(document).ready(function() {
			$('.multiple-select').select2({
				placeholder: "Click chọn địa chỉ",
				maximumSelectionSize :1,
				tags: true,
				cache: false,
				allowClear: true,
			})
			 $('#district').change(function(){
                 $.ajax({
                         type: "Post",
                         url: "/admin/test3",
                         data: {
                             id: $('#district').val().toString()
                         },
                         beforeSend: function() {
                             $('#icon2').css({display: "inline-block"});
                         }
                     })
                     .done(function(data) {
                             $('#icon2').css({display: "none"});
                             $('#ward').children().remove();
                             for (var i = 0; i < data.length; i++) {
                                 $('#ward').append('<option value=' + data[i].maqh + '>' + data[i].name + '</option>');
                             }
                         })
                     .fail(function(err) {
                         console.log(err);
                     });
             });
     
     $('#province').change(function(){
         $.ajax({
                 type: "Post",
                 url: "/admin/test",
                 data: {
                     id: $('#province').val().toString()
                 },
                 beforeSend: function() {
                     $('#icon2').css({display: "inline-block"});
                 }
             }).done(function(data) {
                     $('#icon2').css({display: "none"});
                     $('#district').children().remove();
                     for (var i = 0; i < data.length; i++) {
                         $('#district').append('<option value=' + data[i].maqh + '>' + data[i].name + '</option>');
                     }
                 })
             .fail(function(err) {
                 console.log(err);
             });
     });
     
     <!-- Insert  -->
     	$('#btnInsert').click(function(){
     	var addusername = $('#txtAddUsername').val();
     	var addname = $('#txtAddName').val();
     	var addphone = $('#txtAddPhone').val();
     	var addpassword = $('#txtAddPassword').val();
     	var addemail = $('#txtAddEmail').val();
     	var addaddress = $('#txtAddAddress').val();
     	var addprovince = $('#province :selected').text();
     	var adddistrict = $('#district :selected').text();
     	var addward = $('#ward :selected').text();
     	var addgender = $("input[name='rdoAddGender']:checked").val();
      		$.ajax({
      			type : "Post",
     			url : "/regist",
     			data : {  
     				 username : addusername,
     				 name : addname,
     				 password : addpassword,
     				 phone : addphone,
     				 address : addaddress,
     				 email : addemail,
     				 province : addprovince,
     				 district : adddistrict,
     				 ward : addward,
     				 gender : addgender
     			} 
     		}).done(function(data){
     			if(data.status == "success"){	
     				Command: toastr[data.status](data.message, "Thông Báo")
     				$('#logreg-forms .form-signin').toggle(); 
     	        	$('#logreg-forms .form-signup').toggle();
     			}else{
     				Command: toastr[data.status](data.message, "Thông Báo")
     				}		
     		}).fail(function(err){
     			console.log(err);
     			Command: toastr["warning"]("Thêm thất bại", "Thông Báo")
     		}); 
     	});
     	
     	$('#btnreset').click(function(){
     		 var form = $('#form-reset')[0];
			 var formData = new FormData(form);
     		$.ajax({
     				url : '/submit2',
     				type : 'Post',
     				data : formData,
     				cache: false,
			 	    contentType: false,
			 	    processData: false,
     		 beforeSend: function() {
				  Swal.fire({
					  title: 'Vui lòng đợi trong giây lát',
					  animation: false,
					  showConfirmButton: false,
					  customClass: {
					    popup: 'animated tada'
					  }
					})
             }
     			}).done((data)=>{
     				if(data.status == 'success'){
    					Swal.fire({
    						  type: 'success',
    						  title: 'Thông Báo',
    						  showConfirmButton: false,
    						  text: 'Kiểm tra email để nhận mật khẩu mới!',
    						  footer: '<a href="./changepassword">Click vào đây để đổi mật khẩu!</a>'
    						})
    				}else if(data.status == 'danger'){
    					Swal.fire({
    						  position: 'top-end',
    						  type: 'warning',
    						  title: data.message,
    						  showConfirmButton: false,
    						  timer: 1500
    						})
    				}
     			}).fail(()=>{
     				
     			})
     		})
		});
	</script>
    <script>
    function toggleResetPswd(e){
        e.preventDefault();
        $('#logreg-forms .form-signin').toggle() // display:block or none
        $('#logreg-forms .form-reset').toggle() // display:block or none
    }

    function toggleSignUp(e){
        e.preventDefault();
        $('#logreg-forms .form-signin').toggle(); // display:block or none
        $('#logreg-forms .form-signup').toggle(); // display:block or none
    }

    $(()=>{
        // Login Register Form
        $('#logreg-forms #forgot_pswd').click(toggleResetPswd);
        $('#logreg-forms #cancel_reset').click(toggleResetPswd);
        $('#logreg-forms #btn-signup').click(toggleSignUp);
        $('#logreg-forms #cancel_signup').click(toggleSignUp);
    })
    </script>
</body>
</html>