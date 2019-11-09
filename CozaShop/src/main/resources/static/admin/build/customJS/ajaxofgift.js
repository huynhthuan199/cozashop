<!-- Edit  -->

		$(document).ready(function(){
			$('.btnEdit').click(function(){
				$.ajax({
					url : "gift/" + $(this).data("id"),
					type : "GET"
				}).done(function(data){
					$('#txtId').val(data.id);
					$('#txtName').val(data.name);
					$('#txtCode').val(data.code);
					$('#txtMoney').val(data.money);
					data.enabled ? $('#inline-radio-primary2').prop("checked", true) : $('#inline-radio-info2').prop("checked", true);
					$('#edit-gift').modal('show');
				}).fail(function(err){
					console.log(err);
				});
			});
		});

	
	<!-- Hiden  -->
		$(document).ready(function(){		
			$('.btnDelete').click(function(){
					Swal.fire({
					  title: 'Bạn Có Chắc?',
					  text: ' Ẩn Màu này',
					  type: 'question',
					  showCancelButton: true,
					  confirmButtonColor: '#3085d6',
					  cancelButtonColor: '#d33',
					  confirmButtonText: 'Ẩn',
					  cancelButtonText: "Hủy"
					}).then((result) => {
						if(result.value){
							$.ajax({
								url : "gift/btnDelete",
								type : "GET",
								data : {
									id : $(this).data("id"),
									enabled : false
								}
							}).done((data) => {
								if(data != null ){
								Command: toastr["success"]("Ẩn Thành Công", "Thông Báo");
								$(this).parent().parent().find('td.valEnabled').children().text('Tắt');
								}
							}).fail(function(err){
								console.log(err);
							});
						}	
					})
			});
		});
	<!-- Show  -->
		$(document).ready(function(){		
			$('.btnShow').click(function(){
					Swal.fire({
					  title: 'Bạn Có Chắc?',
					  text: ' Hiện màu này',
					  type: 'question',
					  showCancelButton: true,
					  confirmButtonColor: '#3085d6',
					  cancelButtonColor: '#d33',
					  confirmButtonText: 'Đồng ý',
					  cancelButtonText: "Hủy bỏ"
					}).then((result) => {
						if(result.value){
							$.ajax({
								url : "gift/btnDelete",
								type : "GET",
								data : {
									id : $(this).data("id"),
									enabled : true
								}
							}).done((data) => {
								if(data != null ){
								Command: toastr["success"]("Hiện Thành Công", "Thông Báo");
								$(this).parent().parent().find('td.valEnabled').children().text('Bật');
								}
							}).fail(function(err){
								console.log(err);
							});
						}	
					})
			});
		});
	<!-- Delete  -->
		$(document).ready(function(){		
			$('.btnHide').click(function(){
				var id = $('#txtId').val();
					Swal.fire({
					  title: 'Bạn Có Chắc?',
					  text: ' Xóa màu này',
					  type: 'question',
					  showCancelButton: true,
					  confirmButtonColor: '#3085d6',
					  cancelButtonColor: '#d33',
					  confirmButtonText: 'Đồng ý',
					  cancelButtonText: "Hủy bỏ"
					}).then((result) => {
						if(result.value){
							$.ajax({
								url : "gift/btnHide",
								type : "GET",
								data : {
									id : id
								}
							}).done((data) => {
								if(data != null ){
								Command: toastr["success"]("Xóa Thành Công", "Thông Báo");
								 location.reload();
								}
							}).fail(function(err){
								console.log(err);
							});
						}	
					})
			});
		});
	<!-- Update -->
	$(document).ready(function(){
	$('.btnUpdate').click(function(){
	var id = $('#txtId').val();
	var name = $('#txtName').val();
	var code = $('#txtCode').val();
	var money = $('#txtMoney').val();
	var enabled = $("input[name='rdoEnabled']:checked").val();
 		$.ajax({
 			type : "GET",
			url : "gift/btnUpdate",
				data : {
					 id : id,
					 name : name,
					 code : code,
					 money : money,
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

<!-- Insert -->
	$(document).ready(function(){
	$('.btnInsert').click(function(){
	var addname = $('#txtAddName').val();
	var addcode = $('#txtAddCode').val();
	var addmoney = $('#txtAddMoney').val();
	var addenabled = $("input[name='rdoAddEnabled']:checked").val();
 		$.ajax({
 			type : "Post",
			url : "gift/btnInsert",
			data : {
				 name : addname,
				 code : addcode,
				 money : addmoney,
				 enabled : addenabled
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