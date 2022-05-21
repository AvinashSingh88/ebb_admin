@extends('backend.layouts.app')

@section('content')


<div class="content-wrapper">
    <div class="container-xxl flex-grow-1 container-p-y">
        <h4 class="fw-bold py-3 mb-4">
            {{translate('All products')}}
        </h4>

        @if($type != 'Seller')
            <a href="{{ route('products.create') }}" class="dt-button create-new btn btn-primary" style="position: absolute;z-index: 999; right: 30px;top: 107px; color: #fff; font-size: 14px;" >
                <span>
                    <i class="bx bx-plus me-sm-2"></i>
                    <span class="d-none d-sm-inline-block">
                        {{translate('Add New Product')}}
                    </span>
                </span>
            </a>
        @endif

        <!-- DataTable with Buttons -->
        <div class="card">
            <div class="card-datatable table-responsive">
                <form class="" id="sort_products" action="" method="GET">
                    <div class="card-header row gutters-5">

                        <div class="col col-md-2">
                            <h5 class="mb-md-0 h6">{{ translate('All Product') }}</h5>
                        </div>

                        <div class="col-md-2  dropdown mb-2 mb-md-0">
                            <button class="btn border dropdown-toggle" type="button" data-toggle="dropdown">
                                {{translate('Bulk Action')}}
                            </button>
                            <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="#" onclick="bulk_delete()"> {{translate('Delete selection')}}</a>
                            </div>
                        </div>

                        @if($type == 'Seller')
                        <div class="col-md-2 ml-auto">
                            <select class="form-select text-capitalize" id="user_id" name="user_id" onchange="sort_products()">
                                <option value="">{{ translate('All Sellers') }}</option>
                                @foreach (App\Models\Seller::all() as $key => $seller)
                                    @if ($seller->user != null && $seller->user->shop != null)
                                        <option value="{{ $seller->user->id }}" @if ($seller->user->id == $seller_id) selected @endif>{{ $seller->user->shop->name }} ({{ $seller->user->name }})</option>
                                    @endif
                                @endforeach
                            </select>
                        </div>
                        @endif

                        @if($type == 'All')
                        <div class="col-md-2 ml-auto">
                            <select class="form-select text-capitalize" id="user_id" name="user_id" onchange="sort_products()">
                                <option value="">{{ translate('All Sellers') }}</option>
                                    @foreach (App\Models\User::where('user_type', '=', 'admin')->orWhere('user_type', '=', 'seller')->get() as $key => $seller)
                                        <option value="{{ $seller->id }}" @if ($seller->id == $seller_id) selected @endif>{{ $seller->name }}</option>
                                    @endforeach
                            </select>
                        </div>
                        @endif

                        <div class="col-md-2 ml-auto">
                            <select class="form-select text-capitalize" name="type" id="type" onchange="sort_products()">
                                <option value="">{{ translate('Sort By') }}</option>
                                <option value="rating,desc" @isset($col_name , $query) @if($col_name == 'rating' && $query == 'desc') selected @endif @endisset>{{translate('Rating (High > Low)')}}</option>
                                <option value="rating,asc" @isset($col_name , $query) @if($col_name == 'rating' && $query == 'asc') selected @endif @endisset>{{translate('Rating (Low > High)')}}</option>
                                <option value="num_of_sale,desc"@isset($col_name , $query) @if($col_name == 'num_of_sale' && $query == 'desc') selected @endif @endisset>{{translate('Num of Sale (High > Low)')}}</option>
                                <option value="num_of_sale,asc"@isset($col_name , $query) @if($col_name == 'num_of_sale' && $query == 'asc') selected @endif @endisset>{{translate('Num of Sale (Low > High)')}}</option>
                                <option value="unit_price,desc"@isset($col_name , $query) @if($col_name == 'unit_price' && $query == 'desc') selected @endif @endisset>{{translate('Base Price (High > Low)')}}</option>
                                <option value="unit_price,asc"@isset($col_name , $query) @if($col_name == 'unit_price' && $query == 'asc') selected @endif @endisset>{{translate('Base Price (Low > High)')}}</option>
                            </select>
                        </div>

                        <div class="col-md-2">
                            <div class="form-group mb-0">
                                <input type="text" class="form-control form-control-sm" id="search" name="search"@isset($sort_search) value="{{ $sort_search }}" @endisset placeholder="{{ translate('Type & Enter') }}">
                            </div>
                        </div>

                    </div>
                    
                    <table class="datatables-basic table border-top dataTable no-footer dtr-column collapsed" role="grid" style="width: 1054px;">
                        <thead>
                            <tr >
                                <th class="sorting_disabled " rowspan="1" colspan="1" style="width: 18px;    text-align: center;">
                                    <input type="checkbox" class="form-check-input">
                                </th>

                                <th class="controlx sorting_disabled">{{translate('Name')}}</th>
                                @if($type == 'Seller' || $type == 'All')
                                    <th class="controlx sorting_disabled" data-breakpoints="lg">{{translate('Added By')}}</th>
                                @endif
                                <th class="controlx sorting_disabled" data-breakpoints="sm">{{translate('Info')}}</th>
                                <th class="controlx sorting_disabled" data-breakpoints="md">{{translate('Total Stock')}}</th>
                                <th class="controlx sorting_disabled" data-breakpoints="lg">{{translate('Todays Deal')}}</th>
                                <th class="controlx sorting_disabled" data-breakpoints="lg">{{translate('Published')}}</th>
                                @if(get_setting('product_approve_by_admin') == 1 && $type == 'Seller')
                                    <th class="controlx sorting_disabled" data-breakpoints="lg">{{translate('Approved')}}</th>
                                @endif
                                <th class="controlx sorting_disabled" data-breakpoints="lg">{{translate('Featured')}}</th>
                                <th class="controlx sorting_disabled" data-breakpoints="sm" class="text-right">{{translate('Options')}}</th>
                            </tr>
                        </thead>

                        <tbody>
                            @foreach($products as $key => $product)
                            <tr>
                                <td class=" dt-checkboxes-cell"><input type="checkbox" class="dt-checkboxes form-check-input"></td>
                                
                                <td>
                                    <div class="row gutters-5 w-200px w-md-300px mw-100">
                                        <div class="col-auto">
                                            <img src="{{ uploaded_asset($product->thumbnail_img)}}" alt="Image" class="size-50px img-fit">
                                        </div>
                                        <div class="col">
                                            <span class="text-muted text-truncate-2">{{ $product->getTranslation('name') }}</span>
                                        </div>
                                    </div>
                                </td>
                                @if($type == 'Seller' || $type == 'All')
                                    <td>{{ $product->user->name }}</td>
                                @endif
                                <td>
                                    <strong>{{translate('Num of Sale')}}:</strong> {{ $product->num_of_sale }} {{translate('times')}} </br>
                                    <strong>{{translate('Base Price')}}:</strong> {{ single_price($product->unit_price) }} </br>
                                    <strong>{{translate('Rating')}}:</strong> {{ $product->rating }} </br>
                                </td>
                                <td>
                                    @php
                                        $qty = 0;
                                        if($product->variant_product) {
                                            foreach ($product->stocks as $key => $stock) {
                                                $qty += $stock->qty;
                                                echo $stock->variant.' - '.$stock->qty.'<br>';
                                            }
                                        }
                                        else {
                                            //$qty = $product->current_stock;
                                            $qty = optional($product->stocks->first())->qty;
                                            echo $qty;
                                        }
                                    @endphp
                                    @if($qty <= $product->low_stock_quantity)
                                        <span class="badge badge-inline badge-danger">Low</span>
                                    @endif
                                </td>
                                <td>
                                    <label class="aiz-switch aiz-switch-success mb-0">
                                        <input onchange="update_todays_deal(this)" value="{{ $product->id }}" type="checkbox" <?php if ($product->todays_deal == 1) echo "checked"; ?> >
                                        <span class="slider round"></span>
                                    </label>
                                </td>
                                <td>
                                    <label class="aiz-switch aiz-switch-success mb-0">
                                        <input onchange="update_published(this)" value="{{ $product->id }}" type="checkbox" <?php if ($product->published == 1) echo "checked"; ?> >
                                        <span class="slider round"></span>
                                    </label>
                                </td>
                                @if(get_setting('product_approve_by_admin') == 1 && $type == 'Seller')
                                    <td>
                                        <label class="aiz-switch aiz-switch-success mb-0">
                                            <input onchange="update_approved(this)" value="{{ $product->id }}" type="checkbox" <?php if ($product->approved == 1) echo "checked"; ?> >
                                            <span class="slider round"></span>
                                        </label>
                                    </td>
                                @endif
                                <td>
                                    <label class="aiz-switch aiz-switch-success mb-0">
                                        <input onchange="update_featured(this)" value="{{ $product->id }}" type="checkbox" <?php if ($product->featured == 1) echo "checked"; ?> >
                                        <span class="slider round"></span>
                                    </label>
                                </td>
                                <td class="text-right">
                                    <a class="btn btn-soft-success btn-icon btn-circle btn-sm"  href="{{ route('product', $product->slug) }}" target="_blank" title="{{ translate('View') }}">
                                        <i class="las la-eye"></i>
                                    </a>
                                    @if ($type == 'Seller')
                                    <a class="btn btn-soft-primary btn-icon btn-circle btn-sm" href="{{route('products.seller.edit', ['id'=>$product->id, 'lang'=>env('DEFAULT_LANGUAGE')] )}}" title="{{ translate('Edit') }}">
                                        <i class="las la-edit"></i>
                                    </a>
                                    @else
                                    <a class="btn btn-soft-primary btn-icon btn-circle btn-sm" href="{{route('products.admin.edit', ['id'=>$product->id, 'lang'=>env('DEFAULT_LANGUAGE')] )}}" title="{{ translate('Edit') }}">
                                        <i class="las la-edit"></i>
                                    </a>
                                    @endif
                                    <a class="btn btn-soft-warning btn-icon btn-circle btn-sm" href="{{route('products.duplicate', ['id'=>$product->id, 'type'=>$type]  )}}" title="{{ translate('Duplicate') }}">
                                        <i class="las la-copy"></i>
                                    </a>
                                    <a href="#" class="btn btn-soft-danger btn-icon btn-circle btn-sm confirm-delete" data-href="{{route('products.destroy', $product->id)}}" title="{{ translate('Delete') }}">
                                        <i class="las la-trash"></i>
                                    </a>
                                </td>
                                
                                
                            </tr>
                            @endforeach

                        </tbody> 
                    </table>

                    <div class="col-sm-12 col-md-12">
                        <div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_0_paginate">
                            {{ $products->appends(request()->input())->links() }}
                        </div>
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


@section('script')
    <script type="text/javascript">
        
        $(document).on("change", ".check-all", function() {
            if(this.checked) {
                // Iterate each checkbox
                $('.check-one:checkbox').each(function() {
                    this.checked = true;                        
                });
            } else {
                $('.check-one:checkbox').each(function() {
                    this.checked = false;                       
                });
            }
          
        });

        $(document).ready(function(){
            //$('#container').removeClass('mainnav-lg').addClass('mainnav-sm');
        });

        function update_todays_deal(el){
            if(el.checked){
                var status = 1;
            }
            else{
                var status = 0;
            }
            $.post('{{ route('products.todays_deal') }}', {_token:'{{ csrf_token() }}', id:el.value, status:status}, function(data){
                if(data == 1){
                    AIZ.plugins.notify('success', '{{ translate('Todays Deal updated successfully') }}');
                }
                else{
                    AIZ.plugins.notify('danger', '{{ translate('Something went wrong') }}');
                }
            });
        }

        function update_published(el){
            if(el.checked){
                var status = 1;
            }
            else{
                var status = 0;
            }
            $.post('{{ route('products.published') }}', {_token:'{{ csrf_token() }}', id:el.value, status:status}, function(data){
                if(data == 1){
                    AIZ.plugins.notify('success', '{{ translate('Published products updated successfully') }}');
                }
                else{
                    AIZ.plugins.notify('danger', '{{ translate('Something went wrong') }}');
                }
            });
        }
        
        function update_approved(el){
            if(el.checked){
                var approved = 1;
            }
            else{
                var approved = 0;
            }
            $.post('{{ route('products.approved') }}', {
                _token      :   '{{ csrf_token() }}', 
                id          :   el.value, 
                approved    :   approved
            }, function(data){
                if(data == 1){
                    AIZ.plugins.notify('success', '{{ translate('Product approval update successfully') }}');
                }
                else{
                    AIZ.plugins.notify('danger', '{{ translate('Something went wrong') }}');
                }
            });
        }

        function update_featured(el){
            if(el.checked){
                var status = 1;
            }
            else{
                var status = 0;
            }
            $.post('{{ route('products.featured') }}', {_token:'{{ csrf_token() }}', id:el.value, status:status}, function(data){
                if(data == 1){
                    AIZ.plugins.notify('success', '{{ translate('Featured products updated successfully') }}');
                }
                else{
                    AIZ.plugins.notify('danger', '{{ translate('Something went wrong') }}');
                }
            });
        }

        function sort_products(el){
            $('#sort_products').submit();
        }
        
        function bulk_delete() {
            var data = new FormData($('#sort_products')[0]);
            $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                url: "{{route('bulk-product-delete')}}",
                type: 'POST',
                data: data,
                cache: false,
                contentType: false,
                processData: false,
                success: function (response) {
                    if(response == 1) {
                        location.reload();
                    }
                }
            });
        }

    </script>
@endsection
