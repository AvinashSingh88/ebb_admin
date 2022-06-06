<!DOCTYPE html>
<html>
   <head>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="app-url" content="{{ getBaseURL() }}">
    <meta name="file-base-url" content="{{ getFileBaseURL() }}">
      <title>eBuildBazaar | Online Construction Bazaar-Ran</title>
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