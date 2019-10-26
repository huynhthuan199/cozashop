<!-- Insert  -->

	$(document).ready(function(){
	$('.btnInsert').click(function(){
	var addusername = $('#txtAddUsername').val();
	console.log(addusername);
	var addname = $('#txtAddName').val();
	var addrules = $("input[name='rdoAddRules']:checked").val();
	var addenabled = $("input[name='rdoAddEnabled']:checked").val();
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
		<!-- Edit  -->
		$(document).ready(function(){
			$('.edituser').click(function(){
				$.ajax({
					url : "user/" + $(this).data("id"),
					type : "GET"
				}).done(function(data){
					$('#txtid').val(data.id);
					$('#txtusername').val(data.username);
					$('#txtname').val(data.name);
					$('#txtpassword').val(data.password);
					data.rules ? $('#rdorules_true').prop("checked", true) : $('#rdorules_false').prop("checked", true);
					data.enabled ? $('#rdoenabled_true').prop("checked", true) : $('#rdoenabled_false').prop("checked", true);
					$('#edit-user').modal('show');
				}).fail(function(err){
					console.log(err);
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
		<!-- Search  -->
		$(document).ready(function(){
			$('.btnSearch').click(function(){
				var id = $("#txtSearch").val();
				$.ajax({
					url : "user/" + id,
					type : "GET"
				}).done(function(data){
					if(data != null){
					Command: toastr["success"]("Có thông tin User: " + data.username, "Thông Báo")
					$('#id').val(data.id);
					$('#username').val(data.username);
					$('#name').val(data.name);
					$('#password').val(data.password);
					$('#createAt').val(data.createAt);
					data.rules ? $('#rules_true').prop("checked", true) : $('#rules_false').prop("checked", true);
					data.enabled ? $('#enabled_true').prop("checked", true) : $('#enabled_false').prop("checked", true);	
					$('#edit-user').modal('show');
					return;
				}
				}).fail(function(err){
					Command: toastr["warning"]("Tài khoản Không có trong hệ thống", "Thông Báo")
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
	var rules = $("input[name='rdorules']:checked").val();
	var enabled = $("input[name='rdoenabled']:checked").val();
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