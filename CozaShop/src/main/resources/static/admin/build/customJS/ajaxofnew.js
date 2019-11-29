<!-- Edit  -->

		$(document).ready(function(){
			$('.btnEdit').click(function(){
				$.ajax({
					url : "news/" + $(this).data("id"),
					type : "GET"
				}).done(function(data){
					$('#txtId').val(data.id);
					$('#txtName').val(data.name);
					$('#txtTitle').val(data.title);
					$('#txtDescription').val(data.description);
					$('#txtTags').val(data.tags);
					$('#txtContent').val(data.content);
					data.enabled ? $('#inline-radio-primary2').prop("checked", true) : $('#inline-radio-info2').prop("checked", true);
					$('#edit-category').modal('show');
				}).fail(function(err){
					console.log(err);
				});
			});
		
<!-- Update -->
		$('.btnUpdate').click(function(){
			var form = $('#fileUploadForm')[0];
			var formData = new FormData(form);
	 		$.ajax({
	 			type : "POST",
				url : "news/btnUpdate",
				data : formData,
				cache: false,
		 	    contentType: false,
		 	    processData: false
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
		
		<!-- Insert -->
		$('.btnInsert').click(function(){
			var form = $('#fileInsertForm')[0];
			var formData = new FormData(form);
			formData.append( 'idUser', $('#lblidUser').text());
	 		$.ajax({
	 			type : "POST",
				url : "news/btnInsert",
				data :formData,
				cache: false,
		 	    contentType: false,
		 	    processData: false
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
		
		<!-- Hiden  -->
		$(document).ready(function(){		
			$(document).on('click','.btnDelete',function(){
					Swal.fire({
					  title: 'Bạn Có Chắc?',
					  text: ' Tắt Bài Viết Này?',
					  type: 'question',
					  showCancelButton: true,
					  confirmButtonColor: '#3085d6',
					  cancelButtonColor: '#d33',
					  confirmButtonText: 'Ẩn',
					  cancelButtonText: "Hủy"
					}).then((result) => {
						if(result.value){
							$.ajax({
								url : "news/btnDelete",
								type : "GET",
								data : {
									id : $(this).data("id"),
									enabled : false
								}
							}).done((data) => {
								if(data != null ){
								Command: toastr["success"]("Đã Tắt Bài Viết: "+ $(this).data("id"), "Thông Báo");
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
					  text: 'Bật Bài Viết Này?',
					  type: 'question',
					  showCancelButton: true,
					  confirmButtonColor: '#3085d6',
					  cancelButtonColor: '#d33',
					  confirmButtonText: 'Đồng ý',
					  cancelButtonText: "Hủy bỏ"
					}).then((result) => {
						if(result.value){
							$.ajax({
								url : "news/btnDelete",
								type : "GET",
								data : {
									id : $(this).data("id"),
									enabled : true
								}
							}).done((data) => {
								if(data != null ){
								Command: toastr["success"]("Đã bật bài viết: " + $(this).data('id'), "Thông Báo");
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
					  text: ' Xóa bài viết này',
					  type: 'question',
					  showCancelButton: true,
					  confirmButtonColor: '#3085d6',
					  cancelButtonColor: '#d33',
					  confirmButtonText: 'Đồng ý',
					  cancelButtonText: "Hủy bỏ"
					}).then((result) => {
						if(result.value){
							$.ajax({
								url : "news/btnHide",
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
	});