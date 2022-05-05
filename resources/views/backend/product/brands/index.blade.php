@extends('backend.layouts.app')

@section('content')

<div class="aiz-titlebar text-left mt-2 mb-3">
    <div class="align-items-center">
        <h1 class="h3">{{translate('All Brands')}}</h1>
    </div>
</div>

<div class="row">
    <div class="col-md-7">
        <div class="card">
            <div class="card-header row gutters-5">
                <div class="col text-center text-md-left">
                    <h5 class="mb-md-0 h6">{{ translate('Brands') }}</h5>
                </div>
                <div class="col-md-4">
                    <form class="" id="sort_brands" action="" method="GET">
                        <div class="input-group input-group-sm">
                            <input type="text" class="form-control" id="search" name="search" @isset($sort_search)
                                value="{{ $sort_search }}" @endisset placeholder="{{ translate('Type name & Enter') }}">
                        </div>
                    </form>
                </div>
            </div>
            <div class="card-body">
                <table class="table aiz-table mb-0">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>{{translate('Name')}}</th>
                            <th>{{translate('Logo')}}</th>
                            <th class="text-right">{{translate('Options')}}</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($brands as $key => $brand)
                        <tr>
                            <td>{{ ($key+1) + ($brands->currentPage() - 1)*$brands->perPage() }}</td>
                            <td>{{ $brand->getTranslation('name') }}</td>
                            <td>
                                <img src="{{ uploaded_asset($brand->logo) }}" alt="{{translate('Brand')}}"
                                    class="h-50px">
                            </td>
                            <td class="text-right">
                                <a class="btn btn-soft-primary btn-icon btn-circle btn-sm"
                                    href="{{route('brands.edit', ['id'=>$brand->id, 'lang'=>env('DEFAULT_LANGUAGE')] )}}"
                                    title="{{ translate('Edit') }}">
                                    <i class="las la-edit"></i>
                                </a>
                                <a href="#" class="btn btn-soft-danger btn-icon btn-circle btn-sm confirm-delete"
                                    data-href="{{route('brands.destroy', $brand->id)}}"
                                    title="{{ translate('Delete') }}">
                                    <i class="las la-trash"></i>
                                </a>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                <div class="aiz-pagination">
                    {{ $brands->appends(request()->input())->links() }}
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-5">
        <div class="card">
            <div class="card-header">
                <h5 class="mb-0 h6">{{ translate('Add New Brand') }}</h5>
            </div>
            <div class="card-body">
                <form action="{{ route('brands.store') }}" method="POST">
                    @csrf
                    <div class="form-group mb-3">
                        <label for="name">{{translate('Name')}}</label>
                        <input type="text" placeholder="{{translate('Name')}}" name="name" class="form-control"
                            required>
                    </div>
                    <div class="form-group mb-3">
                        <label for="name">{{translate('Logo')}} <small>({{ translate('120x80') }})</small></label>
                        <div class="input-group" data-toggle="aizuploader" data-type="image">
                            <div class="input-group-prepend">
                                <div class="input-group-text bg-soft-secondary font-weight-medium">
                                    {{ translate('Browse')}}</div>
                            </div>
                            <div class="form-control file-amount">{{ translate('Choose File') }}</div>
                            <input type="hidden" name="logo" class="selected-files">
                        </div>
                        <div class="file-preview box sm">
                        </div>
                    </div>
                    <div class="form-group mb-3">
                        <label for="name">{{translate('Meta Title')}}</label>
                        <input type="text" class="form-control" name="meta_title"
                            placeholder="{{translate('Meta Title')}}">
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




<div class="container-xxl flex-grow-1 container-p-y">
    <h4 class="fw-bold py-3 mb-4">
        <span class="text-muted fw-light">All </span>Brand
    </h4>
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

    <div class="row">
        <div class="col-md-7">
            <div class="card">
                <div class="card-header row gutters-5">
                    <div class="col text-center text-md-left">
                        <h5 class="mb-md-0 h6" style="text-align: left;  line-height: 40px;">Brands</h5>
                    </div>
                    <div class="col-md-4">
                        <form class="ng-pristine ng-valid" id="sort_brands" action="" method="GET">
                            <div class="input-group input-group-sm">
                                <input type="text" class="form-control" id="search" name="search" @isset($sort_search)
                                    value="{{ $sort_search }}" @endisset
                                    placeholder="{{ translate('Type name & Enter') }}">
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


                            <tr>
                                <td class="footable-first-visible" style="display: table-cell;">1</td>
                                <td style="display: table-cell;">Apple</td>
                                <td style="display: table-cell;">
                                    <img src="assets/img/icon1.png" alt="Brand" class="h-50px">
                                </td>
                                <td>
                                    <a href="edit2.php" class="btn btn-sm btn-icon item-edit"><i
                                            class="bx bxs-edit"></i></a>
                                    <a> <i class="bx bx-trash me-1" aria-hidden="true"></i></a>
                                </td>
                            </tr>


                        </tbody>
                    </table>

                </div>
                <div class="row mx-2">
                    <div class="col-sm-12 col-md-6">
                        <div class="dataTables_info" id="DataTables_Table_0_info" role="status" aria-live="polite">
                            Showing 1 to 10 of 50 entries</div>
                    </div>
                    <div class="col-sm-12 col-md-6">
                        <div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_0_paginate">
                            <ul class="pagination" style="justify-content:end;">
                                <li class="paginate_button page-item previous disabled"
                                    id="DataTables_Table_0_previous"><a href="#" aria-controls="DataTables_Table_0"
                                        data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li>
                                <li class="paginate_button page-item active"><a href="#"
                                        aria-controls="DataTables_Table_0" data-dt-idx="1" tabindex="0"
                                        class="page-link">1</a></li>
                                <li class="paginate_button page-item "><a href="#" aria-controls="DataTables_Table_0"
                                        data-dt-idx="2" tabindex="0" class="page-link">2</a></li>
                                <li class="paginate_button page-item "><a href="#" aria-controls="DataTables_Table_0"
                                        data-dt-idx="3" tabindex="0" class="page-link">3</a></li>
                                <li class="paginate_button page-item "><a href="#" aria-controls="DataTables_Table_0"
                                        data-dt-idx="4" tabindex="0" class="page-link">4</a></li>
                                <li class="paginate_button page-item "><a href="#" aria-controls="DataTables_Table_0"
                                        data-dt-idx="5" tabindex="0" class="page-link">5</a></li>
                                <li class="paginate_button page-item next" id="DataTables_Table_0_next"><a href="#"
                                        aria-controls="DataTables_Table_0" data-dt-idx="6" tabindex="0"
                                        class="page-link">Next</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="col-md-5">
            <div class="card">
                <div class="card-header">
                    <h5 class="mb-0 h6">Add New Brand</h5>
                </div>
                <div class="card-body">
                    <form action="#1" method="POST" class="ng-pristine ng-valid">
                        <input type="hidden" name="_token" value="hNy2NN6shuziylWIVxFET4J52vXbVS5mpbdI8YZ1">
                        <div class="form-group mb-3">
                            <label for="name">Name</label>
                            <input type="text" placeholder="Name" name="name" class="form-control" required="">
                        </div>
                        <div class="form-group mb-3">
                            <label for="name">Logo <small>(120x80)</small></label>
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
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Details of All Brands</h4>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <table class="table">
                        <tbody>
                            <tr data-dt-row="99" data-dt-column="2">
                                <td>id:</td>
                                <td>100</td>
                            </tr>
                            <tr data-dt-row="99" data-dt-column="3">
                                <td>Name:</td>
                                <td>
                                    <div class="d-flex justify-content-start align-items-center">
                                        <div class="avatar-wrapper">
                                            <div class="avatar me-2">
                                                <img src="assets/img/apple.png" />
                                            </div>
                                        </div>
                                        <div class="d-flex flex-column">
                                            <span class="emp_name text-truncate">Brand</span>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr data-dt-row="99" data-dt-column="4">
                                <td>Email:</td>
                                <td>deepakkashyap@gmail.com</td>
                            </tr>
                            <tr data-dt-row="99" data-dt-column="7">
                                <td>Status:</td>
                                <td>
                                    <span class="badge bg-label-success">More...</span>
                                </td>
                            </tr>
                            <tr data-dt-row="99" data-dt-column="8">
                                <td>Actions:</td>
                                <td>
                                    <div class="d-inline-block">
                                        <a href="javascript:;" class="btn btn-sm btn-icon dropdown-toggle hide-arrow"
                                            data-bs-toggle="dropdown"><i class="bx bx-dots-vertical-rounded"></i></a>
                                        <ul class="dropdown-menu dropdown-menu-end">
                                            <li>
                                                <a href="javascript:;" class="dropdown-item">Details</a>
                                            </li>
                                            <li>
                                                <a href="javascript:;" class="dropdown-item">Archive</a>
                                            </li>
                                            <div class="dropdown-divider"></div>
                                            <li>
                                                <a href="javascript:;"
                                                    class="dropdown-item text-danger delete-record">Delete</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <a href="javascript:;" class="btn btn-sm btn-icon item-edit"><i
                                            class="bx bxs-edit"></i></a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
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