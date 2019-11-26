<!-- Edit  -->

		$(document).ready(function(){
			$('.btnEdit').click(function(){
				$.ajax({
					url : "material/" + $(this).data("id"),
					type : "GET"
				}).done(function(data){
					$('#txtId').val(data.id);
					$('#txtName').val(data.name);
					data.enabled ? $('#inline-radio-primary2').prop("checked", true) : $('#inline-radio-info2').prop("checked", true);
					$('#edit-category').modal('show');
				}).fail(function(err){
					console.log(err);
				});
			});
		});

	
	<!-- Hiden  -->
		$(document).ready(function(){		
			$(document).on('click','.btnDelete',function(){
					Swal.fire({
					  title: 'Bạn Có Chắc?',
					  text: ' Ẩn chất liệu này',
					  type: 'question',
					  showCancelButton: true,
					  confirmButtonColor: '#3085d6',
					  cancelButtonColor: '#d33',
					  confirmButtonText: 'Ẩn',
					  cancelButtonText: "Hủy"
					}).then((result) => {
						if(result.value){
							$.ajax({
								url : "material/btnDelete",
								type : "GET",
								data : {
									id : $(this).data("id"),
									enabled : false
								}
							}).done((data) => {
								if(data != null ){
								Command: toastr["success"]("Đã tắt Màu: "+$(this).data("id"), "Thông Báo");
								$(this).parent().parent().find('td.valEnabled').children().removeClass('badge badge-primary shadow-primary')
								.addClass('badge badge-danger shadow-danger').text('Tắt').parent().parent().find('td.action').children('.checkHideShow')
								.removeClass('btnDelete btn btn-danger shadow-danger')
								.addClass('btnShow btnDelete btn btn-primary shadow-primary').children().removeClass('fa fa-unlock-alt').addClass('fa fa-unlock').text(' Bật');
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
			$(document).on('click','.btnShow',function(){
					Swal.fire({
					  title: 'Bạn Có Chắc?',
					  text: ' Hiện chất liệu này',
					  type: 'question',
					  showCancelButton: true,
					  confirmButtonColor: '#3085d6',
					  cancelButtonColor: '#d33',
					  confirmButtonText: 'Đồng ý',
					  cancelButtonText: "Hủy bỏ"
					}).then((result) => {
						if(result.value){
							$.ajax({
								url : "material/btnDelete",
								type : "GET",
								data : {
									id : $(this).data("id"),
									enabled : true
								}
							}).done((data) => {
								if(data != null ){
								Command: toastr["success"]("Đã Bật: " + $(this).data("id"), "Thông Báo");
								$(this).parent().parent().find('td.valEnabled').children().removeClass('badge badge-danger shadow-danger')
								.addClass('badge badge-primary shadow-primary').text('Bật').parent().parent().find('td.action').children('.checkHideShow')
								.removeClass('btnShow btn btn-primary shadow-primary')
								.addClass('btnDelete btn btn-danger shadow-danger').children().removeClass('fa fa-unlock').addClass('fa fa-unlock-alt').text(' Tắt');
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
					  text: ' Xóa chất liệu này',
					  type: 'question',
					  showCancelButton: true,
					  confirmButtonColor: '#3085d6',
					  cancelButtonColor: '#d33',
					  confirmButtonText: 'Đồng ý',
					  cancelButtonText: "Hủy bỏ"
					}).then((result) => {
						if(result.value){
							$.ajax({
								url : "material/btnHide",
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
	var enabled = $("input[name='rdoEnabled']:checked").val();
 		$.ajax({
 			type : "GET",
			url : "material/btnUpdate",
			data : {
				 id : id,
				 name : name,
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
	var addenabled = $("input[name='rdoAddEnabled']:checked").val();
 		$.ajax({
 			type : "Post",
			url : "material/btnInsert",
			data : {
				 name : addname,
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