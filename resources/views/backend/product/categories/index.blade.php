@extends('backend.layouts.app')

@section('content')

<div class="container-xxl flex-grow-1 container-p-y">
    <h4 class="fw-bold py-3 mb-4">
        <span class="text-muted fw-light">{{translate('All Categories')}}</span>
    </h4>
    <a href="{{ route('categories.create') }}"
        style="position: absolute; z-index: 999; right: 30px; top: 125px; border: 1px solid #696cff; padding: 5px 20px; background: #696cff; color: #fff;">
        {{translate('Add New category')}}
    </a>
    <!-- DataTable with Buttons -->
    <div class="card">
        <div class="card-body" style="background: #fff; padding: 20px 20px 30px;">
            <div class="card-header row gutters-5">
                <div class="col col-md-4">
                    <h5 class="mb-md-0 h6">{{translate('All Categories')}}</h5>
                </div>
                <div class="col-md-6 ml-auto"></div>
                <div class="col-md-2">
                    <div class="form-group mb-0">
                        <input type="text" class="form-control form-control-sm" id="search" name="search"
                            @isset($sort_search) value="{{ $sort_search }}" @endisset
                            placeholder="{{ translate('Type name & Enter') }}">
                    </div>
                </div>
            </div>

            <table class="table aiz-table mb-0 footable footable-1 breakpoint breakpoint-lg dtr-column">
                <thead class="footable-first-visible">
                    <th data-breakpoints="lg">#</th>
                    <th>{{translate('Name')}}</th>
                    <th data-breakpoints="lg">{{ translate('Parent Category') }}</th>
                    <th data-breakpoints="lg">{{ translate('Order Level') }}</th>
                    <th data-breakpoints="lg">{{ translate('Level') }}</th>
                    <th data-breakpoints="lg">{{translate('Banner')}}</th>
                    <th data-breakpoints="lg">{{translate('Icon')}}</th>
                    <th data-breakpoints="lg">{{translate('Featured')}}</th>
                    <th data-breakpoints="lg">{{translate('Commission')}}</th>
                    <th width="10%" class="text-right">{{translate('Options')}}</th>
                </thead>
                <tbody>
                    <!-- <button type="button" id="1" value="ON" style="color:blue" onclick="toggle(this);"> -->
                    <tr class="footable-first-visible1">
                        <td class="control">
                            <span class="footable-toggle fooicon fooicon-plus"></span>
                            <a href="#1" class="text-reset text-truncate-2"><i class="fa fa-plus"></i> Intel i5 11th
                                Gen</a>
                        </td>
                        <td>
                            <a href="edit.php" class="btn btn-sm btn-icon item-edit"><i class="bx bxs-edit"></i></a>
                            <a> <i class="bx bx-trash me-1" aria-hidden="true"></i></a>
                        </td>
                    </tr>
                    <!-- </button> -->
                    <tr class="footable-first footable-first-visible11">
                        <td colspan="3">
                            <table>
                                <tr>
                                    <td>#</td>
                                    <td>1</td>
                                </tr>
                                <tr>
                                    <td>Parent Category</td>
                                    <td>Intel i3 7th Gen</td>
                                </tr>
                                <tr>
                                    <td>Order Level</td>
                                    <td>8</td>
                                </tr>
                                <tr>
                                    <td>Level</td>
                                    <td>3</td>
                                </tr>
                                <tr>
                                    <td>Banner</td>
                                    <td>---</td>
                                </tr>
                                <tr>
                                    <td>icon</td>
                                    <td>---</td>
                                </tr>
                                <tr>
                                    <td>Featured</td>
                                    <td><input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked"
                                            checked="" /></td>
                                </tr>
                                <tr>
                                    <td>Commission</td>
                                    <td>0 %</td>
                                </tr>
                            </table>
                        </td>
                    </tr>

                </tbody>
            </table>


        </div>


        <div class="row mx-2">
            <div class="col-sm-12 col-md-6">
                <div class="dataTables_info" id="DataTables_Table_0_info" role="status" aria-live="polite">Showing 1 to
                    10 of 50 entries</div>
            </div>
            <div class="col-sm-12 col-md-6">
                <div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_0_paginate">
                    <ul class="pagination" style="justify-content: end;">
                        <li class="paginate_button page-item previous disabled" id="DataTables_Table_0_previous"><a
                                href="#" aria-controls="DataTables_Table_0" data-dt-idx="0" tabindex="0"
                                class="page-link">Previous</a></li>
                        <li class="paginate_button page-item active"><a href="#" aria-controls="DataTables_Table_0"
                                data-dt-idx="1" tabindex="0" class="page-link">1</a></li>
                        <li class="paginate_button page-item"><a href="#" aria-controls="DataTables_Table_0"
                                data-dt-idx="2" tabindex="0" class="page-link">2</a></li>
                        <li class="paginate_button page-item"><a href="#" aria-controls="DataTables_Table_0"
                                data-dt-idx="3" tabindex="0" class="page-link">3</a></li>
                        <li class="paginate_button page-item"><a href="#" aria-controls="DataTables_Table_0"
                                data-dt-idx="4" tabindex="0" class="page-link">4</a></li>
                        <li class="paginate_button page-item"><a href="#" aria-controls="DataTables_Table_0"
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








<div class="aiz-titlebar text-left mt-2 mb-3">
    <div class="row align-items-center">
        <div class="col-md-6">
            <h1 class="h3">{{translate('All Categories')}}</h1>
        </div>
        <div class="col-md-6 text-md-right">
            <a href="{{ route('categories.create') }}" class="btn btn-primary">
                <span>{{translate('Add New category')}}</span>
            </a>
        </div>
    </div>
</div>
<div class="card">
    <div class="card-header d-block d-md-flex">
        <h5 class="mb-0 h6">{{ translate('Categories') }}</h5>
        <form class="" id="sort_categories" action="" method="GET">
            <div class="box-inline pad-rgt pull-left">
                <div class="" style="min-width: 200px;">
                    <input type="text" class="form-control" id="search" name="search" @isset($sort_search)
                        value="{{ $sort_search }}" @endisset placeholder="{{ translate('Type name & Enter') }}">
                </div>
            </div>
        </form>
    </div>
    <div class="card-body">
        <table class="table aiz-table mb-0">
            <thead>
                <tr>
                    <th data-breakpoints="lg">#</th>
                    <th>{{translate('Name')}}</th>
                    <th data-breakpoints="lg">{{ translate('Parent Category') }}</th>
                    <th data-breakpoints="lg">{{ translate('Order Level') }}</th>
                    <th data-breakpoints="lg">{{ translate('Level') }}</th>
                    <th data-breakpoints="lg">{{translate('Banner')}}</th>
                    <th data-breakpoints="lg">{{translate('Icon')}}</th>
                    <th data-breakpoints="lg">{{translate('Featured')}}</th>
                    <th data-breakpoints="lg">{{translate('Commission')}}</th>
                    <th width="10%" class="text-right">{{translate('Options')}}</th>
                </tr>
            </thead>
            <tbody>
                @foreach($categories as $key => $category)
                <tr>
                    <td>{{ ($key+1) + ($categories->currentPage() - 1)*$categories->perPage() }}</td>
                    <td>{{ $category->getTranslation('name') }}</td>
                    <td>
                        @php
                        $parent = \App\Models\Category::where('id', $category->parent_id)->first();
                        @endphp
                        @if ($parent != null)
                        {{ $parent->getTranslation('name') }}
                        @else
                        —
                        @endif
                    </td>
                    <td>{{ $category->order_level }}</td>
                    <td>{{ $category->level }}</td>
                    <td>
                        @if($category->banner != null)
                        <img src="{{ uploaded_asset($category->banner) }}" alt="{{translate('Banner')}}" class="h-50px">
                        @else
                        —
                        @endif
                    </td>
                    <td>
                        @if($category->icon != null)
                        <span class="avatar avatar-square avatar-xs">
                            <img src="{{ uploaded_asset($category->icon) }}" alt="{{translate('icon')}}">
                        </span>
                        @else
                        —
                        @endif
                    </td>

                    <td>
                        <label class="aiz-switch aiz-switch-success mb-0">
                            <input type="checkbox" onchange="update_featured(this)" value="{{ $category->id }}"
                                <?php if($category->featured == 1) echo "checked";?>>
                            <span></span>
                        </label>
                    </td>
                    <td>{{ $category->commision_rate }} %</td>
                    <td class="text-right">
                        <a class="btn btn-soft-primary btn-icon btn-circle btn-sm"
                            href="{{route('categories.edit', ['id'=>$category->id, 'lang'=>env('DEFAULT_LANGUAGE')] )}}"
                            title="{{ translate('Edit') }}">
                            <i class="las la-edit"></i>
                        </a>
                        <a href="#" class="btn btn-soft-danger btn-icon btn-circle btn-sm confirm-delete"
                            data-href="{{route('categories.destroy', $category->id)}}"
                            title="{{ translate('Delete') }}">
                            <i class="las la-trash"></i>
                        </a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
        <div class="aiz-pagination">
            {{ $categories->appends(request()->input())->links() }}
        </div>
    </div>
</div>
@endsection


@section('modal')
@include('modals.delete_modal')
@endsection


@section('script')
<script type="text/javascript">
function update_featured(el) {
    if (el.checked) {
        var status = 1;
    } else {
        var status = 0;
    }
    $.post('{{ route('
        categories.featured ') }}', {
            _token: '{{ csrf_token() }}',
            id: el.value,
            status: status
        },
        function(data) {
            if (data == 1) {
                AIZ.plugins.notify('success', '{{ translate('
                    Featured categories updated successfully ') }}');
            } else {
                AIZ.plugins.notify('danger', '{{ translate('
                    Something went wrong ') }}');
            }
        });
}
</script>
@endsection