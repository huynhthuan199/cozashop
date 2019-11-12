$(document).ready(function(){
		 var croll = true;
		 var a;
		 var b;
		 var start;
		 var end;
		 $('.sortByPrice').click(function(){
			 $('a#loadmore').css('display','flex'); 
			 a = $(this).data('value')
			 $('.animsition').animsition();
			 $('.animsition').fadeOut();
			 $('#load-product').load('/product3?color=false&field=price&order='+a+'&page='+Math.floor((parseInt($('#load-product .isotope-item').length) / 4)), function(){
				 $('.animsition-loading').remove();
				$('.animsition').fadeIn(); 
			});
		})
		
		 $('.btncategogy').click(function(){
			 b = $(this).data('filter');
			 console.log(b)
			 $('.animsition').animsition();
			$('.animsition').fadeOut();
			$('#load-product').load('/product3?color=false&field=price&order='+b+'&page='+Math.floor((parseInt($('#load-product .isotope-item').length) / 4)), function(){
			 	 if(b == 'findAll'){
			 		$('a#loadmore').css('display','flex');
			 	 }else{
			 		$('a#loadmore').css('display','none'); 
			 	 }
				
				 $('.animsition-loading').remove();
				$('.animsition').fadeIn(); 
			});
		});
		 
		 $('.Color').click(function(){
			 b = $(this).data('color');
			 $('.animsition').animsition();
			$('.animsition').fadeOut();
			$('#load-product').load('/product4?color=true&field=price&order='+b+'&page='+Math.floor((parseInt($('#load-product .isotope-item').length) / 4)), function(){
			 	 $('a#loadmore').css('display','none'); 
				 $('.animsition-loading').remove();
				$('.animsition').fadeIn(); 
			});
		});
		 
		 $('.Price').click(function(){
			 start = $(this).data('start');
			 end = $(this).data('end');
			 $('.animsition').animsition();
			$('.animsition').fadeOut();
			$('#load-product').load('/product5?start='+ start +'&field=price&end='+end+'&page='+Math.floor((parseInt($('#load-product .isotope-item').length) / 4)), function(){
			 	 $('a#loadmore').css('display','none'); 
				 $('.animsition-loading').remove();
				$('.animsition').fadeIn(); 
			});
		});
		
		$('#loadmore').click(function(e){
			console.log(a)
			e.preventDefault();
			$.ajax({
				url : '/product3?color=false&field=price&order=' + a + '&page='+Math.floor((parseInt($('#load-product .isotope-item').length) / 4)),
			beforeSend :function(){
			   	croll = false;
	    	}		
	    	}).done(function(data){							
	    		$('#load-product').append(data);
	    		croll = true;
	    	}).fail(function(err){
	    		console.log(err);
	    	})
		})
	})