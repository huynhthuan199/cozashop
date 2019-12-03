<!-- Show  -->
		$(document).ready(function(){		
			

        	$(".check2:contains('Đã Duyệt')").removeClass( "badge badge-danger shadow-danger m-1" ).addClass( "badge badge-primary shadow-primary m-1" ).parent().parent().find('td.action').children('button.btnShow').removeClass("btn-outline-success").addClass("btn-outline-warning").attr('disabled','disabled')
        	$(".check2:contains('Chờ Xử lý')").parent().parent().find('td.action').children('button.btnprint').removeClass("btn-outline-primary").addClass("btn-outline-info").attr('disabled','disabled')
        	$(document).on('click','.page-link',function(){
        		$(".check2:contains('Đã Duyệt')").removeClass( "badge badge-danger shadow-danger m-1" ).addClass( "badge badge-primary shadow-primary m-1" ).parent().parent().find('td.action').children('button.btnShow').removeClass("btn-outline-success").addClass("btn-outline-warning").attr('disabled','disabled')
        		$(".check2:contains('Chờ Xử lý')").parent().parent().find('td.action').children('button.btnprint').removeClass("btn-outline-primary").addClass("btn-outline-info").attr('disabled','disabled')
        	})
        	
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
								$(this).removeClass("btn-outline-success").addClass("btn-outline-warning").attr('disabled','disabled').parent().parent().find('td.valEnabled').children().text('Đã Duyệt').removeClass( "badge badge-danger shadow-danger m-1" ).addClass( "badge badge-primary shadow-primary m-1" )
								$(this).parent().find('button.btnprint').removeClass("btn-outline-info").addClass("btn-outline-primary").removeAttr('disabled')
								}
							}).fail(function(err){
								console.log(err);
							});
						}	
					})
			});
				$(document).on('click','.show',function() {
					$.ajax({
						type : 'Get',
						url : 'showdetail/' + $(this).data('id'),
						data :{
							idCustomer : $(this).parent().parent().find('td.lblidCustomer').data('id')
						}
					}).done(function(data) {
						$('#show-body').html(data)
						$('#show-orderdetail').modal('show');
					}).fail(function(err) {
						console.log(err)
					})
				})
				
	    <!-- btnUpdateCustomer -->
			$(document).on('click','.btnUpdateCustomer',function(){
			var id = $('#txtid').val();
			var name = $('#txtname').val();
			var phone = $('#txtphone').val();
			var email = $('#txtemail').val();
			var address = $('#txtaddress').val();
		 		$.ajax({
		 			type : "Post",
					url : "order/btnUpdate",
					data : {
						 id : id,
						 name : name,
						 phone : phone,
						 email : email,
						 address : address
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
			
			$(document).on('click','.btnprint',function(){
				$.ajax({
					url : 'printOrder/'+ $(this).data('id'),
					data : {
						idCustomer : $(this).parent().parent().find('td.lblidCustomer').data('id')
					}
				}).done((data) =>{
					console.log(data)
					var printWin = window.open('','In Hóa Đơn','left=0,top=0,width=500,height=500,toolbar=0,scrollbars=0,status  =0')
					   printWin.document.write(data);
					   printWin.document.close();
					   printWin.focus();
					   printWin.print();
					   printWin.close();
				}).fail((err) =>{
					console.log(err)
				})
			})
		});
		
		
		