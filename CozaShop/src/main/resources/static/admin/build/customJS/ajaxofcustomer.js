			<!-- Edit  -->
			$(document).ready(function() {
				$('.editCustomer').click(function() {
					$.ajax({
						url : "customer/" + $(this).data("id"),
						type : "GET"
					}).done(function(data) {
						$('#txtid').val(data.id);
						$('#txtusername').val(data.username);
						$('#txtname').val(data.name);
						$('#txtaddress').val(data.address);
						$('#txtpassword').val(data.password);
						$('#txtemail').val(data.email);
						$('#txtphone').val(data.phone);
						data.enabled ? $('#rdoenabled_true').prop("checked", true) : $('#rdoenabled_false').prop("checked", true);
						data.gender ? $('#rdoGender_true').prop("checked", true) : $('#rdoGender_false').prop("checked", true);
						$('#edit-customer').modal('show');
					}).fail(function(err) {
						console.log(err);
					});
				});
			});

			<!-- Insert  -->
$(document).ready(function(){
	$('.btnInsert').click(function(){
	var addusername = $('#txtAddUsername').val();
	var addname = $('#txtAddName').val();
	var addphone = $('#txtAddPhone').val();
	var addemail = $('#txtAddEmail').val();
	var addaddress = $('#txtAddAddress').val();
	var addprovince = $('#province :selected').text();
	var adddistrict = $('#district :selected').text();
	var addward = $('#ward :selected').text();
	var addgender = $("input[name='rdoAddGender']:checked").val();
 		$.ajax({
 			type : "Post",
			url : "customer/btnInsert",
			data : {  
				 username : addusername,
				 name : addname,
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
			location.reload();
			}else{
				Command: toastr[data.status](data.message, "Thông Báo")
				}		
		}).fail(function(err){
			console.log(err);
			Command: toastr["warning"]("Thêm thất bại", "Thông Báo")
		}); 
	});
});
			<!-- Update -->
$(document).ready(function(){
	$('.btnUpdate').click(function(){
	var id = $('#txtid').val();
	var username = $('#txtusername').val();
	var password = $('#txtpassword').val();
	var name = $('#txtname').val();
	var phone = $('#txtphone').val();
	var email = $('#txtemail').val();
	var address = $('#txtaddress').val();
	var gender = $("input[name='rdoGender']:checked").val();
	var enabled = $("input[name='rdoenabled']:checked").val();
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
			if(data.status == "success"){	
				Command: toastr[data.status](data.message, "Thông Báo")
			location.reload();
			}else{
				Command: toastr[data.status](data.message, "Thông Báo")
			}
			
			
						
		}).fail(function(err){
			console.log(err);
			Command: toastr["warning"]("Sửa thất bại", "Thông Báo")
		}); 
	});
});
			<!-- Delete  -->
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
					  confirmCancelText: 'Hủy'
					}).then((result) => {
						if(result.value){
							$.ajax({
								url : "customer/btnDelete",
								type : "GET",
								data : {
									id :$(this).data("id")
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
			<!-- Search  -->
		$(document).ready(function(){
			$('.btnSearch').click(function(){
				var id = $("#txtSearch").val();
				$.ajax({
					url : "customer/" + id,
					type : "GET"
				}).done(function(data){
					if(data != null){
					Command: toastr["success"]("Có thông tin Khách hàng: " + data.username, "Thông Báo")
					$('#id').val(data.id);
					$('#username').val(data.username);
					$('#name').val(data.name);
					$('#address').val(data.address);
					$('#password').val(data.password);
					$('#gender').val(data.gender);
					$('#email').val(data.email);
					$('#phone').val(data.phone);
					$('#createAt').val(data.createAt);
					data.enabled ? $('#enabled_true').prop("checked", true) : $('#enabled_false').prop("checked", true);
					data.gender ? $('#gender_true').prop("checked", true) : $('#gender_false').prop("checked", true);
					$('#edit-customer').modal('show');
				}
				}).fail(function(err){
					Command: toastr["warning"]("Không tồn tại User", "Thông Báo")
				});
			});
		});
	