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

      <link href="{{static_asset('assets_web/css/bootstrap.mins.css')}}" rel="stylesheet">
<!--<link href="css/bootstrap.min.css.map" rel="stylesheet">-->
       <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" type="text/css" />
      <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Open+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet" />
	<link href="{{static_asset('css/jquerysctipttop.css')}}" rel="stylesheet" type="text/css">
    <link rel="icon" href="{{static_asset('img/logo.png')}}" />
      <link rel="stylesheet" href="{{static_asset('assets_web/css/animate.min.css')}}" />
      <link rel="stylesheet" href="{{static_asset('assets_web/css/animate.compat.css')}}" />
      <link rel="stylesheet" href="{{static_asset('assets_web/css/owl.carousel.css')}}" />
      <link rel="stylesheet" href="{{static_asset('assets_web/css/slick.css')}}" />
      <link rel="stylesheet" href="{{static_asset('assets_web/css/owl.theme.default.css')}}" />
      <link rel="stylesheet" href="{{static_asset('assets_web/css/reset.css')}}" /> 
      <link href="{{static_asset('assets_web/css/style.css')}}" media="all" rel="stylesheet" type="text/css" />
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

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
  <style>
  	.text-truncate-2 {
    overflow: hidden;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
}
  </style>
   </head>
   <body>
       @include('frontend.header')
       @yield('content')
       @include('frontend.footer')
	   
	   @include('frontend.partials.modal')

    

    <div class="modal fade" id="addToCart">
        <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-zoom product-modal" id="modal-size" role="document">
            <div class="modal-content position-relative">
                <div class="c-preloader text-center p-3">
                    <i class="las la-spinner la-spin la-3x"></i>
                </div>
                <button type="button" class="close absolute-top-right btn-icon close z-1" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" class="la-2x">&times;</span>
                </button>
                <div id="addToCart-modal-body">

                </div>
            </div>
        </div>
    </div>

    @yield('modal')
       
		<script>
        $(document).ready(function() {
			loadcart();
			
            $('.addToCartButton').click(function (e) { 
                e.preventDefault();
                var product_id = $(this).closest('.product_data').find('.prod_id').val();
                var product_qty = $(this).closest('.product_data').find('.input-number').val();
                var product_price = $(this).closest('.product_data').find('.prod_price').val();
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
                $.ajax({
                    method: "POST",
                    url: '{{url('add-to-cart')}}',
                    data: {
                       'product_id':product_id,
                       'product_qty':product_qty,
                       'product_price':product_price,
                    },
                    success: function (response) {
                        // alert(response.status);
						 toastr.info(response.status);
                         loadcart();
						 //updateNavCart(data.nav_cart_view,data.cart_count);
                    }
                });
        });
		
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
				url: '{{url('update-cart-qty-plus')}}',
				method: "POST",
				data: {
                       'quantity':quantity,
                       'id':id,
                    },
				success: function (response) {
					// alert(response.status);
					 // toastr.info(response.status);
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
				url: '{{url('update-cart-qty-minus')}}',
				method: "POST",
				data: {
                       'quantity':quantity,
                       'id':id,
                    },
				success: function (response) {
					// alert(response.status);
					 // toastr.info(response.status);
                     loadcart();
					 $('#cart-summary').html(response.cart_view);
				}
			});
		});
		
        $('.delete-cart-item').click(function (e) { 
            e.preventDefault();
            $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
            var prod_id =  $(this).closest('.product_data').find('.prod_id').val();
            $.ajax({
                method: "POST",
                url: '{{url('dele-cart-item')}}',
                data: {
                    'prod_id':prod_id,
                },
                dataType: "dataType",
                success: function (response) {
                    toastr.info(response.status);
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

       
    </script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
<link rel="stylesheet" type="text/css"
    href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css">	
       <script src="{{static_asset('assets_web/js/jquery.min.js')}}" type="text/javascript"></script>
       <script src="{{static_asset('assets_web/js/aiz-core.js')}}" type="text/javascript"></script>
       <script src="{{static_asset('assets_web/js/bootstrap.mins.js')}}"></script>
     <!--<script src="js/bootstrap.min.js.map"></script>-->
     <script src="{{static_asset('assets_web/js/popper.mins.js')}}"></script>
     
     <script src="{{static_asset('assets_web/js/slick.min.js')}}"></script>
       <script src="{{static_asset('assets_web/js/owl.carousel.js')}}"></script>
       <script src="{{static_asset('assets_web/js/plugins.js')}}" type="text/javascript"></script>
       <script src="{{static_asset('assets_web/js/jquery.elevatezoom.min.js')}}"></script>
       <script src="{{static_asset('assets_web/js/custom.js')}}"></script>
       <script src="{{static_asset('assets_web/js/slider-custom.js')}}"></script>
       <script src="{{static_asset('assets_web/js/slider.js')}}"></script>
       <script src="{{static_asset('assets_web/js/wow.min.js')}}"></script>
       <script src="{{static_asset('assets_web/js/jssor.slider-28.1.0.min.js')}}" type="text/javascript"></script>
     </body>
     </html>