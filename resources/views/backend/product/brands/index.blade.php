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
        <span class="text-muted fw-light">{{translate('All Brands')}} </span>
    </h4>

    <div class="row">
        <div class="col-md-7">
            <div class="card">
                <div class="card-header row gutters-5">
                    <div class="col text-center text-md-left">
                        <h5 class="mb-md-0 h6" style="text-align: left;  line-height: 40px;">{{ translate('Brands') }}</h5>
                    </div>
                    <div class="col-md-4">

                        <form class="ng-pristine ng-valid" id="sort_brands" action="" method="GET">
                            <div class="input-group input-group-sm">
                                <input type="text" class="form-control" id="search" name="search" @isset($sort_search) value="{{ $sort_search }}" @endisset placeholder="{{ translate('Type name & Enter') }}">
                            </div>
                        </form>

                    </div>
                </div>
                <div class="card-body">
                    <table class="table aiz-table mb-0 footable footable-1 breakpoint-lg" style="">
                        <thead>
                            <tr class="footable-header">
                                <th class="footable-first-visible" style="display: table-cell;">#</th>
                                <th style="display: table-cell;">Name</th>
                                <th style="display: table-cell;">Logo</th>
                                <th class="text-right footable-last-visible" style="display: table-cell;">Options</th>
                            </tr>
                        </thead>

                        <tbody>

                            @foreach($brands as $key => $brand)
                            <tr>
                                <td class="footable-first-visible" style="display: table-cell;">{{ ($key+1) + ($brands->currentPage() - 1)*$brands->perPage() }}</td>
                                <td style="display: table-cell;">{{ $brand->getTranslation('name') }}</td>
                                <td style="display: table-cell;">
                                    <img src="{{ uploaded_asset($brand->logo) }}" alt="{{translate('Brand')}}" class="h-50px">
                                </td>
                                <td style="display: table-cell;">
                                    <a class="btn btn-soft-primary btn-icon btn-circle btn-sm" href="{{route('brands.edit', ['id'=>$brand->id, 'lang'=>env('DEFAULT_LANGUAGE')] )}}" title="{{ translate('Edit') }}">
                                        <i class="bx bxs-edit"></i>
                                    </a>
                                    <a href="#" class="btn btn-soft-danger btn-icon btn-circle btn-sm confirm-delete" data-href="{{route('brands.destroy', $brand->id)}}" title="{{ translate('Delete') }}">
                                        <i class="bx bx-trash me-1" aria-hidden="true"></i>
                                    </a>
                                </td>
                            </tr>
                            @endforeach

                        </tbody>
                    </table>

                </div>
                <div class="row mx-2">
                    {{ $brands->appends(request()->input())->links() }}

                </div>
            </div>
        </div>


        <div class="col-md-5">
            <div class="card">

                <div class="card-header">
                    <h5 class="mb-0 h6">{{ translate('Add New Brand') }}</h5>
                </div>

                <div class="card-body">

                    <form action="{{ route('brands.store') }}" method="POST" class="ng-pristine ng-valid">
                        @csrf

                        <div class="form-group mb-3">
                            <label for="name">{{translate('Name')}}</label>
                            <input type="text" placeholder="{{translate('Name')}}" name="name" class="form-control" required="">
                        </div>
                        <div class="form-group mb-3">
                            <label for="name">{{translate('Logo')}} <small>({{ translate('120x80') }})</small></label>
                            <div class="input-group" data-toggle="aizuploader" data-type="image">
                                <div class="input-group-prepend">
                                    <div class="input-group-text bg-soft-secondary font-weight-medium"> {{ translate('Browse')}}</div>
                                </div>
                                <div class="form-control file-amount">{{ translate('Choose File') }}</div>
                                <input type="hidden" name="logo" class="selected-files">
                            </div>
                            <div class="file-preview box sm"></div>
                        </div>
                        <div class="form-group mb-3">
                            <label for="name">{{translate('Meta Title')}}</label>
                            <input type="text" class="form-control" name="meta_title" placeholder="Meta Title">
                        </div>
                        <div class="form-group mb-3">
                            <label for="name">{{translate('Meta Description')}}</label>
                            <textarea name="meta_description" rows="5" class="form-control"></textarea>
                        </div>
                        <div class="form-group mb-3 text-right">
                            <button type="submit" class="btn btn-primary">{{translate('Save')}}</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
   
</div>

@endsection

@section('modal')
@include('modals.delete_modal')
@endsection

@section('script')
<script type="text/javascript">
    function sort_brands(el) {
        $('#sort_brands').submit();
    }
</script>
@endsection