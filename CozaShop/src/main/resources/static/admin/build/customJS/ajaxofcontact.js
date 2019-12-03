$(document).ready(function(){
	$('.btnEdit').click(function(){
		$('#edit-contact').modal('show');
		$('#txtEmail').val($(this).parent().parent().find('td.valEmail').text())
		$('#txtId').val($(this).parent().parent().find('td.valId').text())
	})
	
	$('.btnSend').click(function(){
		var form = $('#fileSendForm')[0];
		 var formData = new FormData(form);
	 		$.ajax({
	 			type : "POST",
				url : "/contact/Insert",
				data : formData,
	 		cache: false,
	 	    contentType: false,
	 	    processData: false,
			}).done(function(data){
					Command: toastr[data.status](data.message, "Thông Báo");
					if(data.status == 'success'){
						
					}
			}).fail(function(err){
				console.log(err);
				Command: toastr["warning"]("Thêm thất bại", "Thông Báo")
			}); 
		});
	
	$('.btnSendMail').click(function(){
		var form = $('#fileSendMailForm')[0];
		 var formData = new FormData(form);
		 formData.append('id',$('#txtId').val())
	 		$.ajax({
	 			type : "POST",
				url : "contact/btnSendMail",
				data : formData,
	 		cache: false,
	 	    contentType: false,
	 	    processData: false,
			}).done(function(data){
			Command: toastr[data.status](data.message, "Thông Báo");
			$('.valId:contains('+data.data+')').parent().find('td.valEnabled').children().removeClass('badge badge-danger shadow-danger').addClass('badge badge-primary shadow-primary').text('Đã Xử Lý')
			}).fail(function(err){
				console.log(err);
				Command: toastr["warning"]("Thêm thất bại", "Thông Báo")
			}); 
		});
	});