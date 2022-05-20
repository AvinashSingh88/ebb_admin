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

	<link href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&amp;display=swap" rel="stylesheet">
	<link rel="stylesheet" href="{{ static_asset('assets/vendor/fonts/boxicons.css') }}" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
	<link rel="stylesheet" href="{{ static_asset('assets/vendor/fonts/flag-icons.css') }}" />
	<link rel="stylesheet" href="{{ static_asset('assets/vendor/css/rtl/core.css') }}"/>
	<link rel="stylesheet" href="{{ static_asset('assets/vendor/css/rtl/style.css') }}"/>
	<link rel="stylesheet" href="{{ static_asset('assets/css/demo.css') }}" />
	<link rel="stylesheet" href="{{ static_asset('assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css') }}" />
	<link rel="stylesheet" href="{{ static_asset('assets/vendor/libs/typeahead-js/typeahead.css') }}" />
	<link rel="stylesheet" href="{{ static_asset('assets/vendor/libs/datatables-bs5/datatables.bootstrap5.css') }}">
	<link rel="stylesheet" href="{{ static_asset('assets/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.css') }}">
	<link rel="stylesheet" href="{{ static_asset('assets/vendor/libs/datatables-checkboxes-jquery/datatables.checkboxes.css') }}">
	<link rel="stylesheet" href="{{ static_asset('assets/vendor/libs/datatables-buttons-bs5/buttons.bootstrap5.css') }}">
	<link rel="stylesheet" href="{{ static_asset('assets/vendor/libs/flatpickr/flatpickr.css') }}" />
	<link rel="stylesheet" href="{{ static_asset('assets/vendor/libs/datatables-rowgroup-bs5/rowgroup.bootstrap5.css') }}">
	<link rel="stylesheet" href="{{ static_asset('assets/vendor/libs/formvalidation/dist/css/formValidation.min.css') }}" />
	<script src="{{ static_asset('assets/vendor/js/helpers.js') }}"></script>
	<script src="{{ static_asset('assets/js/config.js') }}"></script>
	@yield('style')
	<style>
		.card-header.flex-column.flex-md-row {
		position: absolute;
		right: 0px;
		top: -100px;
		}
		th.sorting_disabled.sorting:after{display:none !important;}
		th.sorting_disabled.sorting:before, div#DataTables_Table_0_length, 
		div#DataTables_Table_0_filter{display:none !important;}
		a.text-reset.text-truncate-2 i.fa.fa-plus { background: #696cff;  color: #fff; 
		padding: 3px; border-radius: 50px; margin-right: 10px; width: 20px;
		height: 20px;text-align: center;}
	</style>

	<style>
		.footable-first table{width:100%;}
		.footable-first td { padding: 5px;}
		.card-header.row.gutters-5 { padding-left: 0px; padding-right: 0px;}
  	</style>

</head>
<body>
	<div class="layout-wrapper layout-content-navbar  ">
		<div class="layout-container">
			@include('backend.inc.admin_sidenav')

			<div class="layout-page">
				@include('backend.inc.admin_nav')

				
				<div class="content-wrapper">
						@yield('content')


					<footer class="content-footer footer bg-footer-theme">
						<div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
							<div class="mb-2 mb-md-0">
								© <script>
									document.write(new Date().getFullYear())
								</script>
								, made with ❤️ by <a href="https://orrish.com" target="_blank" class="footer-link fw-bolder">Orrish It Solutions</a>
							</div>
							
						</div>
					</footer>
				</div><!-- .aiz-main-content -->
			</div>
		</div>
		<div class="layout-overlay layout-menu-toggle"></div>
		<div class="drag-target"></div> 
		
	</div>

    @yield('modal')


	<script src="{{ static_asset('assets/vendor/libs/jquery/jquery.js') }}"></script>
	<script src="{{ static_asset('assets/vendor/libs/popper/popper.js') }}"></script>
	<script src="{{ static_asset('assets/vendor/js/bootstrap.js') }}"></script>
	<script src="{{ static_asset('assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js') }}"></script>
	<script src="{{ static_asset('assets/vendor/libs/hammer/hammer.js') }}"></script>
	<script src="{{ static_asset('assets/vendor/libs/i18n/i18n.js') }}"></script>
	<script src="{{ static_asset('assets/vendor/libs/typeahead-js/typeahead.js') }}"></script>
	<script src="{{ static_asset('assets/vendor/js/menu.js') }}"></script>
	<script src="{{ static_asset('assets/vendor/libs/select2/select2.js') }}"></script>
	<script src="{{ static_asset('assets/vendor/libs/bootstrap-select/bootstrap-select.js') }}"></script>
	<script src="{{ static_asset('assets/vendor/libs/moment/moment.js') }}"></script>
	<script src="{{ static_asset('assets/vendor/libs/flatpickr/flatpickr.js') }}"></script>
	<script src="{{ static_asset('assets/vendor/libs/typeahead-js/typeahead.js') }}"></script>
	<script src="{{ static_asset('assets/vendor/libs/tagify/tagify.js') }}"></script>
	<script src="{{ static_asset('assets/vendor/libs/formvalidation/dist/js/FormValidation.min.js') }}"></script>
	<script src="{{ static_asset('assets/vendor/libs/formvalidation/dist/js/plugins/Bootstrap5.min.js') }}"></script>
	<script src="{{ static_asset('assets/vendor/libs/formvalidation/dist/js/plugins/AutoFocus.min.js') }}"></script>
	<script src="{{ static_asset('assets/js/main.js') }}"></script>
	<script src="{{ static_asset('assets/js/form-validation.js') }}"></script>
	<script src="{{ static_asset('assets/vendor/libs/quill/katex.js') }}"></script>
	<script src="{{ static_asset('assets/vendor/libs/quill/quill.js') }}"></script>
	<script src="{{ static_asset('assets/js/forms-editors.js') }}"></script>

    @yield('script')

    

</body>
</html>
