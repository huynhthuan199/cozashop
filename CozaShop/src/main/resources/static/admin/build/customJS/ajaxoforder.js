<!-- Show  -->
		$(document).ready(function(){		
			$('.btnShow').click(function(){
					Swal.fire({
					  title: 'Bạn Có Chắc?',
					  text: ' Xác Nhận Đơn Hàng Này ?',
					  type: 'question',
					  showCancelButton: true,
					  confirmButtonColor: '#3085d6',
					  cancelButtonColor: '#d33',
					  confirmButtonText: 'Đồng ý',
					  cancelButtonText: "Hủy bỏ"
					}).then((result) => {
						if(result.value){
							$.ajax({
								url : "order/confirm",
								type : "POST",
								data : {
									id : $(this).data("id"),
									enabled : true
								}
							}).done((data) => {
								if(data != null ){
								Command: toastr["success"]("Đã Xác Nhận", "Thông Báo");
								$(this).parent().parent().find('td.valEnabled').children().text('Đã Duyệt');
								$(this).parent().parent().find('td.valEnabled').children().removeClass( "badge badge-danger shadow-danger m-1" ).addClass( "badge badge-primary shadow-primary m-1" )
								}
							}).fail(function(err){
								console.log(err);
							});
						}	
					})
			});
		});
		
		
		