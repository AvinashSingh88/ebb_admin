@extends('backend.layouts.app')

@section('style')
	<link rel="stylesheet" href="{{ static_asset('assets/vendor/libs/dropzone/dropzone.css')}}" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css')}}">
	<link rel="stylesheet" href="{{ static_asset('assets/vendor/libs/bootstrap-select/bootstrap-select.css')}}">
    <script src="{{ static_asset('assets/vendor/js/template-customizer.js') }}"></script>
@endsection

@section('content')
<div class="container-xxl flex-grow-1 container-p-y">
	<h4 class="fw-bold py-3 mb-4">
		{{translate('Upload New File')}}
	</h4>
	<a href="{{ route('uploaded-files.index') }}" class="dt-button create-new btn btn-primary position-absolute" style="z-index: 999; right: 30px;top: 107px; color: #fff; font-size: 14px;" >
		<span>
			<!-- <i class="bx bx-plus me-sm-2"></i> -->
			<span class="d-sm-inline-block">{{translate('Back to uploaded files')}}</span>
		</span>
	</a>
					
	<div class="row">
		<div class="col-12">
			<div class="card">
				<h5 class="card-header">{{translate('Drag & drop your files')}}</h5>
				<div class="card-body">

					<form action="#1" class="dropzone needsclick" id="dropzone-multi">
						<div class="dz-message needsclick">
							Drop files here or click to upload
							<span class="note needsclick">
								(This is just a demo dropzone. Selected files are <strong>not</strong> actually uploaded.)
							</span>
						</div>
						<div class="fallback">
							<input name="file" type="file" />
						</div>
					</form>

				</div>
			</div>

			<form action="#1" class="d-none" id="dropzone-basic"> 
				
			</form>
		</div>
	</div>

</div>








<div class="aiz-titlebar text-left mt-2 mb-3">
	<div class="row align-items-center">
		<div class="col-md-6">
			<h1 class="h3">{{translate('Upload New File')}}</h1>
		</div>
		<div class="col-md-6 text-md-right">
			<a href="{{ route('uploaded-files.index') }}" class="btn btn-link text-reset">
				<i class="las la-angle-left"></i>
				<span>{{translate('Back to uploaded files')}}</span>
			</a>
		</div>
	</div>
</div>
<div class="card">
    <div class="card-header">
        <h5 class="mb-0 h6">{{translate('Drag & drop your files')}}</h5>
    </div>
    <div class="card-body">
    	<div id="aiz-upload-files" class="h-420px" style="min-height: 65vh">
    		
    	</div>
    </div>
</div>
@endsection

@section('script')
	<script src="{{ static_asset('assets/vendor/js/menu.js')}}"></script>
	<script src="{{ static_asset('assets/js/forms-file-upload.js') }}"></script>
	<script src="{{ static_asset('assets/vendor/libs/bootstrap-select/bootstrap-select.js')}}"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.js"></script>

	<!-- <script type="text/javascript">
		$(document).ready(function() {
			AIZ.plugins.aizUppy();
		});
	</script> -->
	<script>
  $('select').selectpicker();
  </script>
@endsection