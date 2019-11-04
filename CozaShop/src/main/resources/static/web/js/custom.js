$(document).ready(function() {
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

//		$(document).on('click', '#addToCart', function(e){
//			let id = e.target.dataset.id;
//			let name = $('#nameProduct').data('name');
//			var quantity = $('#txtquantity').val();
//			$.ajax({
//				type : "GET",
//				url : '/cart/add/'+id,
//				data : {
//					quantity : quantity
//				}
//			}).done(function(data) {
//				Command: toastr["success"]("Đã thêm "+quantity+ " sản phẩm " + name+" sản phẩm vào giỏ hàng", "Thông Báo");
//				$('#cart-remove').attr('data-notify',data);
//			}).fail(function(err) {
//				console.log(err);
//			});
//		})
		

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
	$('#totalmoney').click(function(){
		$.ajax({
			url : 'getTotalMoney/a'
		}).done(function(data) {
			if(data == 0 || data == null){
				Swal
                .fire({
                    type: 'info',
                    title: 'Oops...',
                    text: 'Chưa có gì để thanh toán đâu ^^',
                    footer: "<a href='/product'>Quay lại trang sản phẩm</a>"
                })
			}else{
				
				$('#totalMoney').text(addCommas(data) +' VNĐ');
				$('#total').text(addCommas(Math.floor((parseInt(data)+30000))) + ' VNĐ');
				$('#largesizemodal').modal('show')
			}
		}).fail(function(err) {
			console.log(err);
		});
	})
	
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
					$('.slick3-dots img').eq(2).attr("src","/resources/web/images/Products/"+data.image);
					$('#txtcolor').val(data.color);
					$('#show-product').addClass('show-modal1');
				}).fail(function(err) {
					console.log(err);
				});
	});
	
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
	
	$('#cart-table').on('click','.btnupQuantity,btn-num-product-up',function(){
		var quantity = $(this).parent().find('[name ="num-product1"]').val();
		a = parseInt(quantity);
		a++
		console.log(a)
		$(this).parent().find('[name ="num-product1"]').val(a)
		console.log(a)
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
