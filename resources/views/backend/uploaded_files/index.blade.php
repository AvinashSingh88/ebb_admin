@extends('backend.layouts.app')

@section('content')

<div class="container-xxl flex-grow-1 container-p-y">
	<h4 class="fw-bold py-3 mb-4">
		{{translate('All uploaded files')}}
	</h4>
	<a href="{{ route('uploaded-files.create') }}" class="dt-button create-new btn btn-primary position-absolute" style="z-index: 999; right: 30px;top: 107px; color: #fff; font-size: 14px;" >
		<span>
			<i class="bx bx-plus me-sm-2"></i> 
			<span class="d-sm-inline-block">{{translate('Upload New File')}}</span>
		</span>
	</a>
	
	<div class="row">
		<div class="col-md-12">
			<div class="card">

				<form id="sort_uploads" action="">
					<div class="card-header gutters-5  border-bottom pt-3 pb-0">
						<div class="row">
							<div class="col-md-4 mb-3">
								<h5 class="mb-0 h6">All files</h5>
							</div>
							<div class="col-md-3 ml-auto mr-0">
								<div class="dropdown1 form-control-xs aiz-s">
									<select class="form-control form-control-xs aiz-selectpicker" name="sort" onchange="sort_uploads()">
										<option value="newest" @if($sort_by == 'newest') selected="" @endif>{{ translate('Sort by newest') }}</option>
										<option value="oldest" @if($sort_by == 'oldest') selected="" @endif>{{ translate('Sort by oldest') }}</option>
										<option value="smallest" @if($sort_by == 'smallest') selected="" @endif>{{ translate('Sort by smallest') }}</option>
										<option value="largest" @if($sort_by == 'largest') selected="" @endif>{{ translate('Sort by largest') }}</option>
									</select>
								</div>
							</div>
							<div class="col-md-3 mb-3">
								<input type="text" class="form-control form-control-xs" name="search" placeholder="{{ translate('Search your files') }}" value="{{ $search }}">
							</div>
							<div class="col-md-2 mb-3">
								<button type="submit" class="btn btn-primary">{{ translate('Search') }}</button>
							</div>
						</div>
					</div>
				</form>

				<div class="card-body upload_files">
					<div class="gutters-5 ">
						<div class="row">

							@foreach($all_uploads as $key => $file)
								@php
									if($file->file_original_name == null){
										$file_name = translate('Unknown');
									}else{
										$file_name = $file->file_original_name;
									}
								@endphp

								<div class="col-md-3 mb-3">
									<div class="aiz-file-box position-relative">
										<div class="dropdown-file position-absolute t-0 r-0">
											<div class="d-inline-block">
												<button class="btn btn-sm btn-icon dropdown-toggle hide-arrow" data-bs-toggle="dropdown" aria-expanded="false">
													<i class="bx bx-dots-vertical-rounded"></i>
												</button>
												<div class="dropdown-menu dropdown-menu-end" style="">
												
													<a href="{{ my_asset($file->file_name) }}" target="_blank" download="{{ $file_name }}.{{ $file->extension }}" class="dropdown-item">
														<i class="la la-download mr-2"></i>
														<span>{{ translate('Download') }}</span>
													</a>
													<a href="javascript:void(0)" class="dropdown-item" onclick="copyUrl(this)" data-url="{{ my_asset($file->file_name) }}">
														<i class="las la-clipboard mr-2"></i>
														<span>{{ translate('Copy Link') }}</span>
													</a>
													<div class="dropdown-divider"></div>
														<a href="javascript:void(0)" class="dropdown-item confirm-alert" data-href="{{ route('uploaded-files.destroy', $file->id ) }}"   data-bs-toggle="modal" data-bs-target="#delete-modal">
														{{ translate('Delete') }}
														</a>
													</div>
												</div>
											</div>

											<div class="card card-file">
												<div class="card-file-thumb">
													@if($file->type == 'image')
														<img src="{{ my_asset($file->file_name) }}" class="img-fit">
													@elseif($file->type == 'video')
														<i class="fa-solid fa-file-video"></i>
													@else
														<i class="fa-solid fa-file"></i>
													@endif
												</div>
												<div class="card-body p-2">
													<h6 class="d-flex mb-0">
														<span class="text-truncate title">{{ $file_name }}</span>
														<span class="ext">.{{ $file->extension }}</span>
													</h6>
													<p class="mb-0">{{ formatBytes($file->file_size) }}</p>
												</div>
											</div>

										</div>
									</div>
								<!-- </div> -->
							@endforeach
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="exampleModal225" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">File Infojkhhbkjkhju</h4>
					<button  type="button"  class="btn-close" data-bs-dismiss="modal" aria-label="Close" ></button>
				</div>
				<div class="modal-body">
					<form action="#1" method="POST" class="ng-pristine ng-valid">
						<input type="hidden" name="_token" value="name"> 
						<div class="form-group mb-3">
						<label for="name">Name</label>
						<input type="text" placeholder="Name" name="name" class="form-control" required="">
						</div>
						<div class="form-group mb-3">
						<label for="name">Product <small>(120x80)</small></label>
						<div class="input-group" data-toggle="aizuploader" data-type="image">
							<div class="input-group-prepend">
								<div class="input-group-text bg-soft-secondary font-weight-medium">Browse</div>
							</div>
							<div class="form-control file-amount">Choose file</div>
							<input type="hidden" name="logo" class="selected-files">
						</div>
						<div class="file-preview box sm"></div>
						</div>
						<div class="form-group mb-3">
						<label for="name">Meta Title</label>
						<input type="text" class="form-control" name="meta_title" placeholder="Meta Title">
						</div>
						<div class="form-group mb-3">
						<label for="name">Meta description</label>
						<textarea name="meta_description" rows="5" class="form-control"></textarea>
						</div>
						<div class="form-group mb-3 text-right">
						<button type="submit" class="btn btn-primary">Save</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal -->

</div>






@endsection

@section('modal')

<div id="delete-modal" class="modal fade" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title h6">{{ translate('Delete Confirmation') }}</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
            </div>
            <div class="modal-body text-center">
                <p class="mt-1">{{ translate('Are you sure to delete this file?') }}</p>
                <button type="button" class="btn btn-link mt-2" data-dismiss="modal">{{ translate('Cancel') }}</button>
                <a href="" class="btn btn-primary mt-2 comfirm-link">{{ translate('Delete') }}</a>
            </div>
        </div>
    </div>
</div>

<div id="info-modal" class="modal fade" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-right">
			<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title h6">{{ translate('File Info') }}</h5>
				<button type="button" class="close" data-dismiss="modal">
				</button>
			</div>
			<div class="modal-body c-scrollbar-light position-relative" id="info-modal-content">
				<div class="c-preloader text-center absolute-center">
                    <i class="las la-spinner la-spin la-3x opacity-70"></i>
                </div>
			</div>
		</div>
	</div>
</div>

@endsection
@section('script')
	<script type="text/javascript">

		function detailsInfo(e){
            $('#info-modal-content').html('<div class="c-preloader text-center absolute-center"><i class="las la-spinner la-spin la-3x opacity-70"></i></div>');
			var id = $(e).data('id')
			$('#info-modal').modal('show');
			$.post('{{ route('uploaded-files.info') }}', {_token: AIZ.data.csrf, id:id}, function(data){
                $('#info-modal-content').html(data);
				// console.log(data);
			});
		}

		function copyUrl(e) {
			var url = $(e).data('url');
			var $temp = $("<input>");
		    $("body").append($temp);
		    $temp.val(url).select();
		    try {
			    document.execCommand("copy");
			    AIZ.plugins.notify('success', '{{ translate('Link copied to clipboard') }}');
			} catch (err) {
			    AIZ.plugins.notify('danger', '{{ translate('Oops, unable to copy') }}');
			}
		    $temp.remove();
		}

        function sort_uploads(el){
            $('#sort_uploads').submit();
        }

	</script>
@endsection