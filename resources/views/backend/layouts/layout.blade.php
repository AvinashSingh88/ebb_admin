<!doctype html>
@if(\App\Models\Language::where('code', Session::get('locale', Config::get('app.locale')))->first()->rtl == 1)
<html dir="rtl" lang="{{ str_replace('_', '-', app()->getLocale()) }}">
@else
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
@endif
<head>
	<meta name="csrf-token" content="{{ csrf_token() }}">
	<meta name="app-url" content="{{ getBaseURL() }}">
	<meta name="file-base-url" content="{{ getFileBaseURL() }}">

	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Favicon -->
	<link rel="icon" href="{{ uploaded_asset(get_setting('site_icon')) }}">
	<title>{{ get_setting('website_name').' | '.get_setting('site_motto') }}</title>


    <link rel="icon" type="image/x-icon" href="assets/img/logo2.png" />
   
    <link href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&amp;display=swap" rel="stylesheet">

    <link rel="stylesheet" href="{{ static_asset('assets/vendor/fonts/boxicons.css') }}" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
    <link rel="stylesheet" href="{{ static_asset('assets/vendor/fonts/flag-icons.css') }}" />

    <link rel="stylesheet" href="{{ static_asset('assets/vendor/css/rtl/core.css') }}"/>
    <link rel="stylesheet" href="{{ static_asset('assets/vendor/css/rtl/style.css') }}"/>
    <link rel="stylesheet" href="{{ static_asset('assets/css/demo.css') }}" />

    <link rel="stylesheet" href="{{ static_asset('assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css') }}" />
    <link rel="stylesheet" href="{{ static_asset('assets/vendor/libs/typeahead-js/typeahead.css') }}" />
    <link rel="stylesheet" href="{{ static_asset('assets/vendor/libs/datatables-bs5/datatables.bootstrap5.css') }}">
    <link rel="stylesheet" href="{{ static_asset('assets/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.css') }}">
    <link rel="stylesheet" href="{{ static_asset('assets/vendor/libs/datatables-buttons-bs5/buttons.bootstrap5.css') }}">
    <link rel="stylesheet" href="{{ static_asset('assets/vendor/libs/formvalidation/dist/css/formValidation.min.css') }}" />

    <script src="{{ static_asset('assets/vendor/js/helpers.js') }}"></script>   
    <script src="{{ static_asset('assets/js/config.js') }}"></script>
   
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());
        gtag('config', 'GA_MEASUREMENT_ID');
    </script>

</head>
<body>

  <!-- Content -->

    <div class="authentication-wrapper authentication-cover">
        <div class="authentication-inner row m-0">
            @yield('content')
        </div>
    </div><!-- .aiz-main-wrapper -->


    @yield('modal')



    <!-- build:js assets/vendor/js/core.js -->
    <script src="{{ static_asset('assets/vendor/libs/jquery/jquery.js') }}"></script>
    <script src="{{ static_asset('assets/vendor/libs/popper/popper.js') }}"></script>
    <script src="{{ static_asset('assets/vendor/js/bootstrap.js') }}"></script>
    <script src="{{ static_asset('assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js') }}"></script>
    
    <script src="{{ static_asset('assets/vendor/libs/hammer/hammer.js') }}"></script>
    <script src="{{ static_asset('assets/vendor/libs/i18n/i18n.js') }}"></script>
    <script src="{{ static_asset('assets/vendor/libs/typeahead-js/typeahead.js') }}"></script>
    
    <script src="{{ static_asset('assets/vendor/js/menu.js') }}"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->
    <script src="{{ static_asset('assets/vendor/libs/formvalidation/dist/js/FormValidation.min.js') }}"></script>
    <script src="{{ static_asset('assets/vendor/libs/formvalidation/dist/js/plugins/Bootstrap5.min.js') }}"></script>
    <script src="{{ static_asset('assets/vendor/libs/formvalidation/dist/js/plugins/AutoFocus.min.js') }}"></script>

    <!-- Main JS -->
    <script src="{{ static_asset('assets/js/main.js') }}"></script>

    <!-- Page JS -->
    <script src="{{ static_asset('assets/js/pages-auth.js') }}"></script>

    @yield('script')


</body>
</html>