@extends('backend.layouts.app')
@section('styles')
<style>
	table.dataTable thead .sorting:before,
	table.dataTable thead .sorting:after {
		display: none;
	}

	tfoot img,
	tr img,
	td img,
	th img {
		width: 50px;
	}
</style>
@endsection
@section('content')


<div class="container-xxl flex-grow-1 container-p-y">
	<h4 class="fw-bold py-3 mb-4">
		<span class="text-muted fw-light"> </span>{{ translate('Attributes')}}
	</h4>
	<div class="row">
		<div class="col-md-7">
			<div class="card">
				<div class="card-header">
					<h5 class="mb-0 h6">Attributes</h5>
				</div>
				<div class="card-body">
					<table class="table aiz-table mb-0 footable footable-1 breakpoint-lg">
						<thead>
							<tr class="footable-header">
								<th class="footable-first-visible" style="display: table-cell;">#</th>
								<th style="display: table-cell;">{{ translate('Name')}}</th>
								<th style="display: table-cell;">{{ translate('Values')}}</th>
								<th class="text-right footable-last-visible" style="display: table-cell;">{{ translate('Options')}}</th>
							</tr>
						</thead>
						<tbody>
							@foreach($attributes as $key => $attribute)
							<tr>
								<td class="footable-first-visible" style="display: table-cell;">{{$key+1}}</td>
								<td style="display: table-cell;">{{$attribute->getTranslation('name')}}</td>
								<td>
									@foreach($attribute->attribute_values as $key => $value)
									{{ $value->value }}
									@endforeach
								</td>
								<td>
									<a class="btn btn-soft-info btn-icon btn-circle btn-sm" href="{{route('attributes.show', $attribute->id)}}" title="{{ translate('Attribute values') }}">
										<i class="las la-cog"></i>
									</a>
									<a class="btn btn-soft-primary btn-icon btn-circle btn-sm" href="{{route('attributes.edit', ['id'=>$attribute->id, 'lang'=>env('DEFAULT_LANGUAGE')] )}}" title="{{ translate('Edit') }}">
										<i class="las la-edit"></i>
									</a>
									<a href="#" class="btn btn-soft-danger btn-icon btn-circle btn-sm confirm-delete" data-href="{{route('attributes.destroy', $attribute->id)}}" title="{{ translate('Delete') }}">
										<i class="las la-trash"></i>
									</a>
									<a href="{{route('attributes.show', $attribute->id)}}" title="{{ translate('Attribute values') }}"> <i class="fa fa-cog" aria-hidden="true"></i></a>
									<a href="{{route('attributes.edit', ['id'=>$attribute->id, 'lang'=>env('DEFAULT_LANGUAGE')] )}}" title="{{ translate('Edit') }}"><i class="bx bxs-edit"></i></a>
									<a href="{{route('attributes.destroy', $attribute->id)}}" title="{{ translate('Delete') }}"> <i class="bx bx-trash me-1" aria-hidden="true"></i></a>
								</td>
							</tr>
							@endforeach

						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="col-md-5">
			<div class="card">
				<div class="card-header">
					<h5 class="mb-0 h6">{{ translate('Add New Attribute') }}</h5>
				</div>
				<div class="card-body">
					<form action="{{ route('attributes.store') }}" method="POST">
						@csrf


						<div class="form-group mb-3">
							<label for="name">{{translate('Name')}}</label>
							<input type="text" placeholder="{{ translate('Name')}}" id="name" name="name" class="form-control" required="">
						</div>
						<div class="form-group mb-3 text-right">
							<button type="submit" class="btn btn-primary">{{translate('Save')}}</button>
						</div>
					</form>
				</div>
			</div>
		</div>
</div>






@endsection

@section('modal')
@include('modals.delete_modal')
@endsection