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
       <script src="{{static_asset('assets_web/js/jquery.min.js')}}" type="text/javascript"></script>
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