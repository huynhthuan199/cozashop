<!-- Edit -->
		$(document).ready(
				function() {
					$('.btnEdit').click(
							function() {
								$.ajax({
									type : "GET",
									url : "infoproduct/" + $(this).data("id")
								}).done(
										function(data) {
											$('#txtid').val(data.id);
											$('#txtname').val(data.name);
											$('#txtprice').val(data.price);
											$('#txtmaterial').val(data.material);
											$('#txtcolor').val(data.color);
											$('#txtdescription').val(data.description);
											$('#txtshortDescription').val(data.shortdescription);
											$('#txtcategoryId').val(data.category.id);
											$("#image").attr("src","/resources/web/images/Products/"+data.image);
											$("#image2").attr("src","/resources/web/images/Products/"+data.image2);
											$("#image3").attr("src","/resources/web/images/Products/"+data.image3);
											$('#edit-product').modal('show');
										}).fail(
										function(err) {
											console.log(err);
											Command: toastr["warning"](
													"Thêm thất bại",
													"Thông Báo")
										});
							});


<!-- Delete  -->	
			$('.btnDelete').click(function(){
					Swal.fire({
					  title: 'Bạn Có Chắc?',
					  text: " Xóa sẽ không khôi phục được...",
					  type: 'question',
					  showCancelButton: true,
					  confirmButtonColor: '#3085d6',
					  cancelButtonColor: '#d33',
					  confirmButtonText: 'Xóa',
					  cancelButtonText: "Hủy"
					}).then((result) => {
						if(result.value){
							$.ajax({
								url : "infoproduct/btnDelete",
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
			
<!-- Insert  -->
		$('.btnInsert1').click(()=>{
			var form = $('#dropzone')[0]
			var formData = new FormData(form);
			$.ajax({
				type : "Post",
				url : "infoproduct/btnInsert",
				data : formData,
				cache: false,
				contentType: false,
	 	    	processData: false,
			}).done((data)=>{
				Command: toastr[data.status](data.message, "Thông Báo");
				if(data.success =='success'){
					location.reload()
				}
			}).fail((err)=>{
				console.log(err)
			})
		})
		});
