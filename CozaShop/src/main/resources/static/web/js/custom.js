$(document).ready(function() {
	
//	Show Cart modal
	$('#show-cart').click(function() {
		$.ajax({
			type : "GET",
			url : "/cart/products"
		}).done(function(data) {
			$('#listCart').html(data);
		}).fail(function(err) {
			console.log(err);
		});
	});
//	Show Cart table
		$('#show-cart-table').click(function() {
			$.ajax({
				type : "GET",
				url : "/cart/table"
			}).done(function(data) {
				$('#tbody-cart-table').html(data);
			}).fail(function(err) {
				console.log(err);
			});
		});
		
// addToCart orderDetail jquery
			$('#addToCartod').click(function(){
				var id = $(this).data('id');
				var name = $('#nameod').data('name');
				var quantity = $('#txtquantityod').val();
				$.ajax({
					type : "GET",
					url : '/cart/add/'+id,
					data : {
						quantity : quantity
					}
				}).done(function(data) {
					Command: toastr["success"]("Đã thêm "+quantity+ " sản phẩm " + name+" sản phẩm vào giỏ hàng", "Thông Báo");
					$('#cart-remove').attr('data-notify',data);
				}).fail(function(err) {
					console.log(err);
				});
			})
//			Js  addToCart
	let atc = document.getElementById("addToCart");
	if(atc){
		document.getElementById("addToCart").addEventListener("click", function(e){
			let id = e.target.dataset.id;
			let name = $('#nameProduct').data('name');
			var quantity = $('#txtquantity').val();
			$.ajax({
				type : "GET",
				url : '/cart/add/'+id,
				data : {
					quantity : quantity
				}
			}).done(function(data) {
				Command: toastr["success"]("Đã thêm "+quantity+ " sản phẩm " + name+" sản phẩm vào giỏ hàng", "Thông Báo");
				$('#cart-remove').attr('data-notify',data);
			}).fail(function(err) {
				console.log(err);
			});
		})
	}
//	Show Total money
	$('#totalmoney').click(function(){
//		form 
		var addname = $('#txtname').val();
		var addphone = $('#txtphone').val();
		var addemail = $('#txtemail').val();
		var addcode = $('#txtcode').val();
		var addaddress = $('#txtaddress').val();
		var addprovince = $('#province :selected').text();
		var adddistrict = $('#district :selected').text();
		var addward = $('#ward :selected').text();
		$.ajax({
			url : 'getTotalMoney/a',
			data : {
				name : addname,
				code : addcode,
				phone : addphone,
				address : addaddress,
				email : addemail,
				province : addprovince,
				district : adddistrict,
				ward : addward
				}
		}).done(function(data) {
			if(data.status =='warning' & data.data == null){
				Swal
                .fire({
                    type: 'info',
                    title: 'Oops...',
                    text: 'Chưa có gì để thanh toán đâu ^^',
                    footer: "<a href='/product'>Quay lại trang sản phẩm</a>"
                })
			}else if(data.status =='warning' & data.data == 0){
				Swal
                .fire({
                    type: 'info',
                    title: 'Oops...',
                    text: data.message,
                    footer: "<a href='/product'>Quay lại trang sản phẩm</a>"
                })
			}else if(data.status =='warning' & data.data == 'validatePhone'){
				Swal
                .fire({
                    type: 'info',
                    title: 'Oops...',
                    text: data.message,
                    footer: "<a href='/product'>Quay lại trang sản phẩm</a>"
                })
			}else if(data.status =='warning' & data.data == 'validateEmail'){
				Swal
                .fire({
                    type: 'info',
                    title: 'Oops...',
                    text: data.message,
                    footer: "<a href='/product'>Quay lại trang sản phẩm</a>"
                })
			}else{
				Command: toastr[data.status](data.message, 'Thông Báo');
				$('#totalMoney').text(addCommas(data.data) +' VNĐ');
				$('#total').text(addCommas(Math.floor((parseInt(data.data)+30000))) + ' VNĐ');
				$('#largesizemodal').modal('show')
			}
		}).fail(function(err) {
			console.log(err);
		});
	})
//	Check GiftCode
		$('.btnCheck').click(function(){
		$.ajax({
			url : 'check',
			data : {
				code : $('#txtcode').val()
			}
		}).done(function(data) {
			if(data == 0 || data == null){
				Swal.fire({
                    type: 'info',
                    title: 'Oops...',
                    text: 'Mã này không tồn tại hoặc đã được sử dụng',
                    footer: "<a href='/product'>Quay lại trang sản phẩm</a>"
                })
			}else{
				Swal.fire({
                    type: 'info',
                    title: 'Oops...',
                    text: 'Với Mã Này Bạn Được Giảm ' +addCommas(data.money) +' VNĐ',
                    footer: "<a href='/product'>Quay lại trang sản phẩm</a>"
                })
			}
		}).fail(function(err) {
			console.log(err);
		});
	})
//	quick view SP modal
	$(document).on('click', '.btnShow',function() {
		$.ajax({
			type : "GET",
			url : "product/" + $(this).parent().data("id")
		}).done(function(data) {
					$('#id').text(data.id);
					$('#name').text(data.name);
					$('#price').text(addCommas(data.price)+" VNĐ");
					$('#description').text(data.description);
					$('#addToCart').attr('data-id',data.id);
					$("#image1").attr("src","/resources/web/images/Products/"+data.image); 
					$("#image2").attr("src","/resources/web/images/Products/"+data.image2); 
					$("#image3").attr("src","/resources/web/images/Products/"+data.image3);
					$("#a-image1").attr("href","/resources/web/images/Products/"+data.image); 
					$("#a-image2").attr("href","/resources/web/images/Products/"+data.image2); 
					$("#a-image3").attr("href","/resources/web/images/Products/"+data.image3);
					$('.slick3-dots img').eq(0).attr("src","/resources/web/images/Products/"+data.image);
					$('.slick3-dots img').eq(1).attr("src","/resources/web/images/Products/"+data.image2);
					$('.slick3-dots img').eq(2).attr("src","/resources/web/images/Products/"+data.image3);
					$('#txtcolor').val(data.color);
					$('#show-product').addClass('show-modal1');
				}).fail(function(err) {
					console.log(err);
				});
	});
//	delete sp modal
	$('#listCart').on('click','.delete-item-md',function(){
		var quantity = $('#cart-remove').data('notify');
		$.ajax({
			url : '/cart/delete/'+ $(this).data('id'),
			type : 'post',
			data : {type : 'modal'}
		}).done(function(data){
			$('#cart-modal').html(data);
			$('#cart-remove').attr('data-notify','${cartSize}');
		}).fail(function(err){
			
		})
	});
//	xóa sp trong table
	$('#cart-table').on('click','.delete-item-tb',function(){
		$.ajax({
			url : '/cart/delete/'+ $(this).data('id'),
			type : 'post',
			data : {type : 'table'}
		}).done(function(data){
			$('#cart-table').html(data);
		}).fail(function(err){
			
		})
	});
//	Chuyển đổi string money
	function addCommas(nStr)
	{
	    nStr += '';
	    x = nStr.split('.');
	    x1 = x[0];
	    x2 = x.length > 1 ? '.' + x[1] : '';
	    var rgx = /(\d+)(\d{3})/;
	    while (rgx.test(x1)) {
	        x1 = x1.replace(rgx, '$1' + ',' + '$2');
	    }
	    return x1 + x2;
	}
//	Tăng số lượng sản phẩm $(this)
	$('#cart-table').on('click','.btnupQuantity,btn-num-product-up',function(){
		var quantity = $(this).parent().find('[name ="num-product1"]').val();
		a = parseInt(quantity);
		a++
		$(this).parent().find('[name ="num-product1"]').val(a)
		$.ajax({
			url : '/cart/upquantity/'+ $(this).data('id'),
			type : 'post'
		}).done((data)=>{
			var a = addCommas(data);
			$(this).closest('tr').find('td.column-5').text(a + 'VNĐ');
			Command: toastr['success']('Đã Thêm 1', 'Thông Báo');
		}).fail(function(err){
			
		})
	});
	
	
//	Giảm số lượng sản phẩm $(this)
	$('#cart-table').on('click','.btnbackQuantity',function(){
		var quantity = $(this).parent().find('[name ="num-product1"]').val();
		a = parseInt(quantity);
		a--
		$(this).parent().find('[name ="num-product1"]').val(a)
		$.ajax({
			url : '/cart/backquantity/'+ $(this).data('id'),
			type : 'post'
		}).done((data)=>{
			var a = addCommas(data);
			$(this).closest('tr').find('td.column-5').text(a + 'VNĐ');
			Command: toastr['success']('Đã Trừ 1', 'Thông Báo');
		}).fail(function(err){
			
		})
	});
	
		$('.show-cart').click(function() {
			  $.ajax({
					type : "GET",
					url : "/cart/products"
				})
					.done(function(data) {
						$('#listCart').html(data);
					})
					.fail(function(err) {
						console.log(err);
					}); 
			});
});
