<!DOCTYPE html>
<html>
   <head>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="app-url" content="{{ getBaseURL() }}">
    <meta name="file-base-url" content="{{ getFileBaseURL() }}">

    <title>@yield('meta_title', get_setting('website_name').' | '.get_setting('site_motto'))</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="robots" content="index, follow">
    <meta name="description" content="@yield('meta_description', get_setting('meta_description') )" />
    <meta name="keywords" content="@yield('meta_keywords', get_setting('meta_keywords') )">

    @yield('meta')

    @if(!isset($detailedProduct) && !isset($customer_product) && !isset($shop) && !isset($page) && !isset($blog))
        <!-- Schema.org markup for Google+ -->
        <meta itemprop="name" content="{{ get_setting('meta_title') }}">
        <meta itemprop="description" content="{{ get_setting('meta_description') }}">
        <meta itemprop="image" content="{{ uploaded_asset(get_setting('meta_image')) }}">

        <!-- Twitter Card data -->
        <meta name="twitter:card" content="product">
        <meta name="twitter:site" content="@publisher_handle">
        <meta name="twitter:title" content="{{ get_setting('meta_title') }}">
        <meta name="twitter:description" content="{{ get_setting('meta_description') }}">
        <meta name="twitter:creator" content="@author_handle">
        <meta name="twitter:image" content="{{ uploaded_asset(get_setting('meta_image')) }}">

        <!-- Open Graph data -->
        <meta property="og:title" content="{{ get_setting('meta_title') }}" />
        <meta property="og:type" content="website" />
        <meta property="og:url" content="{{ route('home') }}" />
        <meta property="og:image" content="{{ uploaded_asset(get_setting('meta_image')) }}" />
        <meta property="og:description" content="{{ get_setting('meta_description') }}" />
        <meta property="og:site_name" content="{{ env('APP_NAME') }}" />
        <meta property="fb:app_id" content="{{ env('FACEBOOK_PIXEL_ID') }}">
    @endif

        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Open+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet" />
        <link href="{{static_asset('assets_web/css/bootstrap.mins.css')}}" rel="stylesheet">
        <link href="{{static_asset('assets_web/css/jquerysctipttop.css')}}" rel="stylesheet" type="text/css">
	 <!-- Favicon -->
     <link rel="stylesheet" type="text/css"
    href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css">
        <link rel="icon" href="{{ uploaded_asset(get_setting('site_icon')) }}">
        <link rel="stylesheet" href="{{static_asset('assets_web/css/animate.min.css')}}" />
        <link rel="stylesheet" href="{{static_asset('assets_web/css/animate.compat.css')}}" />
        <link rel="stylesheet" href="{{static_asset('assets_web/css/owl.carousel.css')}}" />
        <link rel="stylesheet" href="{{static_asset('assets_web/css/slick.css')}}" />
        <link rel="stylesheet" href="{{static_asset('assets_web/css/owl.theme.default.css')}}" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css" type="text/css" media="all" />
        <link rel="stylesheet" href="{{static_asset('assets_web/css/reset.css')}}" /> 
        <link rel="stylesheet" href="{{static_asset('assets_web/css/jquery-ui.css')}}" /> 
        <link href="{{static_asset('assets_web/css/style.css')}}" media="all" rel="stylesheet" type="text/css" />
      
   <script src="{{static_asset('assets_web/js/jquery.min.js')}}" type="text/javascript"></script>
   <script src="{{static_asset('assets_web/js/jquery-3.6.0.js')}}" type="text/javascript"></script>
   <script src="{{static_asset('assets_web/js/jquery-ui.js')}}" type="text/javascript"></script>
   
   <script>
    $(document).ready(function() {
        toastr.options.timeOut = 5000;
        @if (Session::has('alert-danger'))
            toastr.error('{{ Session::get('alert-danger') }}');
        @elseif(Session::has('alert-success'))
            toastr.success('{{ Session::get('alert-success') }}');
        @elseif(Session::has('alert-warning'))
            toastr.success('{{ Session::get('alert-warning') }}');
        @endif
    });

</script>
      @if (get_setting('google_analytics') == 1)
      <!-- Global site tag (gtag.js) - Google Analytics -->
      <script async src="https://www.googletagmanager.com/gtag/js?id={{ env('TRACKING_ID') }}"></script>
  
      <script>
          window.dataLayer = window.dataLayer || [];
          function gtag(){dataLayer.push(arguments);}
          gtag('js', new Date());
          gtag('config', '{{ env('TRACKING_ID') }}');
      </script>
  @endif
  
  @if (get_setting('facebook_pixel') == 1)
      <!-- Facebook Pixel Code -->
      <script>
          !function(f,b,e,v,n,t,s)
          {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
          n.callMethod.apply(n,arguments):n.queue.push(arguments)};
          if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
          n.queue=[];t=b.createElement(e);t.async=!0;
          t.src=v;s=b.getElementsByTagName(e)[0];
          s.parentNode.insertBefore(t,s)}(window, document,'script',
          'https://connect.facebook.net/en_US/fbevents.js');
          fbq('init', '{{ env('FACEBOOK_PIXEL_ID') }}');
          fbq('track', 'PageView');
      </script>
      <noscript>
          <img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id={{ env('FACEBOOK_PIXEL_ID') }}&ev=PageView&noscript=1"/>
      </noscript>
      <!-- End Facebook Pixel Code -->
  @endif
  
  @php
      echo get_setting('header_script');
  @endphp
 
   </head>
   <body>
		@include('frontend.header')
       @yield('content')
       @include('frontend.footer')
       @include('frontend.partials.modal')

   <div class="modal fade popup_products_modals" id="addToCart">
        <div class="modal-dialog mt-0 d-block modal-lg modal-dialog-centered modal-dialog-zoom product-modal" id="modal-size" role="document">
            <div class="modal-content position-relative">
                <!--<div class="c-preloader text-center p-3">
                    <i class="las la-spinner la-spin la-3x"></i>
                </div>-->
                <button type="button" class="close absolute-top-right btn-icon close z-1" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" class="la-2x">&times;</span>
                </button>
                <div id="addToCart-modal-body">
			<span id="userid"></span>
                </div>
            </div>
        </div>
    </div>

    @yield('modal')
	
	   <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<script type="text/javascript">
		
		// function removeFromCartView(e, key){
            // e.preventDefault();
            // removeFromCart(key);
        // }
		
		// function removeFromCart(key){
            // $.post('{{ route('cart.removeFromCart') }}', {
                // &_token  : '&_token={{csrf_token()}}',
                // id      :  key
            // }, function(data){
                // updateNavCart(data.nav_cart_view,data.cart_count);
                // $('#cart-summary').html(data.cart_view);
                // AIZ.plugins.notify('success', "{{ translate('Item has been removed from cart') }}");
                // $('#cart_items_sidenav').html(parseInt($('#cart_items_sidenav').html())-1);
            // });
        // }
        $(document).on('click', '.add_cart_button_plus', function(e) {
			e.preventDefault();
				$.ajaxSetup({
					headers: {
						'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
					}
				});
			var quantity = $(this).closest('.product_data').find('.input-number').val();			
			var id = $(this).closest('.product_data').find('.prod_id').val();
				
			 $.ajax({
				url: '{{route('cart.updateCartPlus')}}',
				method: "POST",
				data: {
                       'quantity':quantity,
                       'id':id,
                    },
					
				success: function (response) {
					toastr.info(response.status);
					updateNavCart(response.nav_cart_view,response.cart_count,response.sum_cart_count);
					 $('#cart-summary').html(response.cart_view);
                     loadcart();
				}
			});
		});
        
    $(".request-call-back").click(function(e){
		e.preventDefault();
		 // var data = $(this).serialize();
		var name =  $('#names').val();
        var mobile = $("input[name=mobile]").val();
        var email = $('#emails').val();
    if(name!=='' && mobile!=='' && email!=='')
        {
        var url = '{{ url('insertCallRequest') }}';
		$.ajaxSetup({
			headers: {
				'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
			}
		});
        $.ajax({
           url:url,
           method:'POST',
            data:{
                  name:name, 
                  mobile:mobile,
                  email:email,
                },
           success:function(response){
              toastr.info("Call Request Sent Successfully!");
              document.getElementById("error_message").innerHTML="";
				$('#names').val('');
				$("input[name=mobile]").val('');
				$('#emails').val('');
           },
           error:function(error){
              console.log(error)
           }
		
        });
    }
    else{
        // alert('Required');
        document.getElementById("error_message").innerHTML="All fields are Required."; 
    }
	});
	
	 $(".loginAgain").click(function(e){
		e.preventDefault();
		  
		var login_password =  $('#login_password').val();
         
    if(login_password!=='')
        {
        var url = '{{ url('checkLogin') }}';
		$.ajaxSetup({
			headers: {
				'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
			}
		});
        $.ajax({
           url:url,
           method:'POST',
            data:{
                  login_password:login_password, 
				},
           success:function(response){
            console.log(response.status);
			  document.getElementById("login_error").innerHTML="";
				$('#login_password').val('');
                
				 if(response.success==true){
					 setTimeout(function() {
                        /*Redirect to payment page after 1 sec*/
                        window.location.href ='{{url('manage-payments')}}';
                    }, 1000) 
                    console.log(response);
				 }
				 else if(response.status==false){
					 /*setTimeout(function() {
                       // Redirect to payment page after 1 sec 
                        window.location.href ='{{url('')}}';
                    }, 1000) */
					document.getElementById("login_error").innerHTML="Login Failed, pls check password";
				 }
           },
           error:function(error){
              console.log(error)
			  
           }
		
        });
    }
    else{
        // alert('Required');
        document.getElementById("login_error").innerHTML="Field Required."; 
    }
	});
		
        $(document).ready(function() {
            $.ajax({
                type: "GET",
                url: "{{url('getcatWiseBrands')}}",
                success: function (response) {
                    $('#catewisebrands').html(response);
                }
            });
            
        });




		 function showAddToCartModals(showAddToCartModals){
        $('#addToCart').modal('show'); 
        let id = $(showAddToCartModals).attr('id');
        $('#userid').html(id);
        $.ajax({
            url: '{{route('cart.showCartModal')}}',
            type: 'post',
            data:'id='+id+'&_token={{csrf_token()}}',
            success:function(respons){
                // $('#concontractid').html(JSON.parse(respons)[0].contractorID);
               $('#addToCart-modal-body').html(respons);
                // console.log(JSON.parse(respons)[0].contractorID);
            }
        })
    }
		 
    
		function showCategoryWiseBrand(showCategoryWiseBrand)
    {
		
        let address_id = $(showCategoryWiseBrand).attr('id');
        let datas = "";
        $.ajax({
            url: '{{url('getcategorybrands')}}',
            type: 'post',
            data:'address_id='+address_id+'&_token={{csrf_token()}}',
            success:function(respons){
				
                if (respons == '') {
                        
                    } else{
						
                        //  console.log(respons);
                        $.each(respons, function (i) {
                            datas += '<div class="item"><div class="product-box"><div class="box-elech"><img src="'+respons[i].brand_id+'" alt=""></div><div class="pro_img_mens"><img src="'+respons[i].image+'" alt=""></div><div class="discrptions"><h5>  '+respons[i].title+'</h5><h6 id="title"></h6></div><div class="discrptions_button"><h5><a href="product-detail.php">View Detail-cat-'+respons[i].category_id+'</a></h5></div></div></div>';

                             console.log(datas);
							
                          
                        }); 
						              
                    }
				$("#cat-list .catbrandslistss").html(datas); 	
                $('#onloadactivecatbrand').addClass('d-none');
            }
        })
    }
	
	
	
    $(document).ready(function() {
	    getVariantPrice();
		
    });
    
$('#option-choice-form input').on('change', function(){
            getVariantPrice();
			
        });

        function getVariantPrice(){
            if($('#option-choice-form input[name=quantity]').val() > 0 && checkAddToCartValidity()){
                $.ajax({
                   type:"POST",
                   url: '{{ route('products.variant_price') }}',
                   data: $('#option-choice-form').serializeArray(),
                   success: function(data){
						console.log(data);
                        $('.product-gallery-thumb .carousel-box').each(function (i) {
                            if($(this).data('variation') && data.variation == $(this).data('variation')){
                                $('.product-gallery-thumb').slick('slickGoTo', i);
                            }
                        })

                       $('#option-choice-form #chosen_price_div').removeClass('d-none');
                       $('#option-choice-form #chosen_price_div #chosen_price').html(data.price);
                    //    $('#option-choice-form #chosen_price_div').removeClass('d-none');
                    //    $('#option-choice-form #chosen_price_div #chosen_price').html(data.price);
                       $('#show_total_price').removeClass('d-none');
                       $('#sku').html(data.sku);
                       $('#total_price').html(data.price);
					   $('#total_product_price').val(data.total_price);
                       $('#available-quantity').html(data.quantity);
                       $('.input-number').prop('max', data.max_limit);
                       if(parseInt(data.in_stock) == 0 && data.digital  == 0){
                           $('.bulk-order-buttons').addClass('d-none');
                           $('.addtocartbut').addClass('d-none');
                           $('.out-of-stock').removeClass('d-none');
                           // $('.ga-producttot').addClass('d-none');
						   
                       }
                       else{
                           $('.bulk-order-buttons').removeClass('d-none');
                           $('.addtocartbut').removeClass('d-none');
                           $('.out-of-stock').addClass('d-none');
                       }
                   }
               });
            }
        }
        function checkAddToCartValidity(){
            var names = {};
            $('#option-choice-form input:radio').each(function() { // find unique names
                  names[$(this).attr('name')] = true;
            });
            var count = 0;
            $.each(names, function() { // then count them
                  count++;
            });

            if($('#option-choice-form input:radio:checked').length == count){
                return true;
            }

            return false;
        }
		function updateNavCart(view,count,amount){
            $('.cart-count').html(count);
            $('#cart_items').html(view);
		    $('.cart-amount').html(amount);
        }
		
		function addToCart(){
            if(checkAddToCartValidity()) {
				$.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
                $.ajax({
                    type:"POST",
                    url: '{{ route('cart.addToCart') }}',
                    data: $('#option-choice-form').serializeArray(),
                    success: function(data){

                       // $('#addToCart-modal-body').html(null);
                       // $('.c-preloader').hide();
                       // $('#modal-size').removeClass('modal-lg');
                       // $('#addToCart-modal-body').html(data.modal_view);
                       // AIZ.extra.plusMinus();
					   toastr.info(data.status);
                       updateNavCart(data.nav_cart_view,data.cart_count,data.sum_cart_count);
                    }
                });
            }
            else{
                AIZ.plugins.notify('warning', "{{ translate('Please choose all the options') }}");
            }
        }
		
		function buyNow(){
            if(checkAddToCartValidity()) {
				$.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
                $.ajax({
                    type:"POST",
                    url: '{{ route('cart.buyNow') }}',
                    data: $('#option-choice-form').serializeArray(),
                    success: function(data){

                       // $('#addToCart-modal-body').html(null);
                       // $('.c-preloader').hide();
                       // $('#modal-size').removeClass('modal-lg');
                       // $('#addToCart-modal-body').html(data.modal_view);
                       // AIZ.extra.plusMinus();
					   setTimeout(function() {
                        /*Redirect to payment page after 1 sec*/
                        window.location.href ='{{url('cart')}}';
                    }, 1000) 
					   toastr.info(data.status);
                       updateNavCart(data.nav_cart_view,data.cart_count,data.sum_cart_count);
                    }
                });
            }
            else{
                AIZ.plugins.notify('warning', "{{ translate('Please choose all the options') }}");
            }
        }

        $(document).ready(function() {
			loadcart();
			
        function loadcart(){
            $.ajax({
            method:"GET",
            url: '{{url('load-cart-data')}}',
            success: function (response) {
                //   console.log(response.count);  
                $('.cart_count').html('');
                $('.cart_count').html(response.count);
                $('.cart_amount').html('');
                $('.cart_amount').html(response.cart_amount);
                }
            });
        }
		
		$('.delete-cart-item').click(function (e) { 
            e.preventDefault();
            $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
            var id =  $(this).closest('.product_data').find('.prod_id').val();
             
            $.ajax({
                method: "POST",
                url: '{{ route('cart.removeFromCart') }}',
                data: {
                    'id':id,
                },
                success: function (data) {
                    // toastr.info("Removed from Cart!");
					updateNavCart(data.nav_cart_view,data.cart_count);
					$('#cart-summary').html(data.cart_view);
                }
            });
        });
		
		$(document).on('click', '.button-plus', function(e) {
			e.preventDefault();
				$.ajaxSetup({
					headers: {
						'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
					}
				});
			var quantity = $(this).closest('.product_data').find('.qty').val();			
			var id = $(this).closest('.product_data').find('.prod_id').val();			
			 $.ajax({
				url: '{{route('cart.updateQuantity')}}',
				method: "POST",
				data: {
                       'quantity':quantity,
                       'id':id,
                    },
				success: function (response) {
					// alert(response.status);
					 // toastr.info(response.status);
					 updateNavCart(response.nav_cart_view,response.cart_count,response.sum_cart_count);
					 $('#cart-summary').html(response.cart_view);
                     loadcart();
				}
			});
		});

        $(document).on('click', '.button-minus', function(e) {
			e.preventDefault();
				$.ajaxSetup({
					headers: {
						'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
					}
				});
			var quantity = $(this).closest('.product_data').find('.qty').val();			
			var id = $(this).closest('.product_data').find('.prod_id').val();			
			 $.ajax({
				url: '{{route('cart.updateQuantity')}}',
				method: "POST",
				data: {
                       'quantity':quantity,
                       'id':id,
                    },
				success: function (response) {
					// alert(response.status);
					 // toastr.info(response.status);
                     updateNavCart(response.nav_cart_view,response.cart_count);
					 $('#cart-summary').html(response.cart_view);
                     loadcart();
				}
			});
		});
		
        
		
		

		
            $('.category-nav-element').each(function(i, el) {
                $(el).on('mouseover', function(){
                    if(!$(el).find('.sub-cat-menu').hasClass('loaded')){
                        $.post('{{ route('category.elements') }}', {_token: AIZ.data.csrf, id:$(el).data('id')}, function(data){
                            $(el).find('.sub-cat-menu').addClass('loaded').html(data);
                        });
                    }
                });
            });
            if ($('#lang-change').length > 0) {
                $('#lang-change .dropdown-menu a').each(function() {
                    $(this).on('click', function(e){
                        e.preventDefault();
                        var $this = $(this);
                        var locale = $this.data('flag');
                        $.post('{{ route('language.change') }}',{_token: AIZ.data.csrf, locale:locale}, function(data){
                            location.reload();
                        });

                    });
                });
            }

            if ($('#currency-change').length > 0) {
                $('#currency-change .dropdown-menu a').each(function() {
                    $(this).on('click', function(e){
                        e.preventDefault();
                        var $this = $(this);
                        var currency_code = $this.data('currency');
                        $.post('{{ route('currency.change') }}',{_token: AIZ.data.csrf, currency_code:currency_code}, function(data){
                            location.reload();
                        });

                    });
                });
            }
			
			
			
			
			
			
			
        });

        $('#search').on('keyup', function(){
            search();
        });

        $('#search').on('focus', function(){
            search();
        });

        function search(){
            var searchKey = $('#search').val();
            if(searchKey.length > 0){
                $('body').addClass("typed-search-box-shown");

                $('.typed-search-box').removeClass('d-none');
                $('.search-preloader').removeClass('d-none');
                $.post('{{ route('search.ajax') }}', { _token: AIZ.data.csrf, search:searchKey}, function(data){
                    if(data == '0'){
                        // $('.typed-search-box').addClass('d-none');
                        $('#search-content').html(null);
                        $('.typed-search-box .search-nothing').removeClass('d-none').html('Sorry, nothing found for <strong>"'+searchKey+'"</strong>');
                        $('.search-preloader').addClass('d-none');

                    }
                    else{
                        $('.typed-search-box .search-nothing').addClass('d-none').html(null);
                        $('#search-content').html(data);
                        $('.search-preloader').addClass('d-none');
                    }
                });
            }
            else {
                $('.typed-search-box').addClass('d-none');
                $('body').removeClass("typed-search-box-shown");
            }
        }
		//bulk add carts
		
$('.bulkaddcart').click(function(){
  var product_id = [];
  var product_price = [];
  var action = "add";
  
  $('.select_product').each(function(){
	   if($(this).prop('checked') == true)
	   {
			product_id.push($(this).data('product_id'));
			product_price.push($(this).data('product_price'));
	   }
  });

  if(product_id.length > 0)
  {
	   $.ajaxSetup({
			headers: {
				'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
			}
		});
   $.ajax({
    url:'{{route('cart.addBoughtTogether')}}',
    method:"POST",
    data:{product_id:product_id, product_price:product_price, action:action},
    success:function(data)
    {
     
	  toastr.info(data.status);
	  updateNavCart(data.nav_cart_view,data.cart_count,data.sum_cart_count,data.bought_together);
	  $('#product-box').html(data.product_box_view);
    }
   });
  }
  else
  {
   toastr.danger('Select atleast one item');
  }

 });
 
		
		function updateNavCart(view,count,amount,bought_together){
            $('.cart-count').html(count);
            $('#cart_items').html(view);
			$('.cart-amount').html(amount);
			$('#bought_together').html(bought_together);
        }
    </script>
  

  
   
    <script src="{{static_asset('assets_web/js/password_check.js')}}"></script>
    <script src="{{static_asset('assets_web/js/bootstrap.mins.js')}}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
    <script src="{{static_asset('assets_web/js/popper.mins.js')}}"></script>
    <script src="{{static_asset('assets_web/js/slick.min.js')}}"></script>
    <script src="{{static_asset('assets_web/js/owl.carousel.js')}}"></script>
    <script src="{{static_asset('assets_web/js/plugins.js')}}" type="text/javascript"></script>
    <script src="{{static_asset('assets_web/js/jquery.elevatezoom.min.js')}}"></script>
    <script src="{{static_asset('assets_web/js/custom.js')}}"></script>
    <script src="{{static_asset('assets_web/js/slider-custom.js')}}"></script>
    <script src="{{static_asset('assets_web/js/slider.js')}}"></script>
    <script src="{{static_asset('assets_web/js/wow.min.js')}}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" type="text/javascript"></script>
    <script src="{{static_asset('assets_web/js/jssor.slider-28.1.0.min.js')}}" type="text/javascript"></script>
    <script src="{{static_asset('assets_web/js/scripts.js')}}" type="text/javascript"></script>
   
 
   @yield('script')

<script>
var lowerSlider = document.querySelector('#lower');
var  upperSlider = document.querySelector('#upper');

document.querySelector('#two').value=upperSlider.value;
document.querySelector('#one').value=lowerSlider.value;

var  lowerVal = parseInt(lowerSlider.value);
var upperVal = parseInt(upperSlider.value);

upperSlider.oninput = function () {
    lowerVal = parseInt(lowerSlider.value);
    upperVal = parseInt(upperSlider.value);

    if (upperVal < lowerVal + 4) {
        lowerSlider.value = upperVal - 4;
        if (lowerVal == lowerSlider.min) {
        upperSlider.value = 4;
        }
    }
    document.querySelector('#two').value=this.value
};

lowerSlider.oninput = function () {
    lowerVal = parseInt(lowerSlider.value);
    upperVal = parseInt(upperSlider.value);
    if (lowerVal > upperVal - 4) {
        upperSlider.value = lowerVal + 4;
        if (upperVal == upperSlider.max) {
            lowerSlider.value = parseInt(upperSlider.max) - 4;
        }
    }
    document.querySelector('#one').value=this.value
};



	
</script>
    </body>
     </html>