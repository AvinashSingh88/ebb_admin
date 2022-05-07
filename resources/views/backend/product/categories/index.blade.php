@extends('backend.layouts.app')

@section('styles')


@endsection

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
                    <h5 class="mb-md-0 h6">{{translate('All Categoriessss')}}</h5>
                </div>
                <div class="col-md-6 ml-auto"></div>
                <div class="col-md-2">
                    <div class="form-group mb-0">
                        <form class="" id="sort_categories" action="" method="GET">
                            <input type="text" class="form-control form-control-sm" id="search" name="search"
                                @isset($sort_search) value="{{ $sort_search }}" @endisset
                                placeholder="{{ translate('Type name & Enter') }}">
                        </form>
                    </div>
                </div>
            </div>

            <table class="table aiz-table mb-0 footable footable-1 breakpoint breakpoint-lg dtr-column">
                <thead class="footable-first-visible">
                    <th data-breakpoints="lg">#</th>
                    <th>{{translate('Name')}}</th>
                    <th>{{translate('Parent Category')}}</th>
                    <th>{{translate('Order Level')}}</th>
                    <th>{{translate('Level')}}</th>
                    <th>{{translate('Icon')}}</th>
                    <th>{{translate('Featured')}}</th>
                    <th width="10%" class="text-right">{{translate('Options')}}</th>
                </thead>
                <tbody>
                    @foreach($categories as $key => $category)
                        <tr class="footable-first-visible{{ $key+1 }}">
                            <td>
                                {{ ($key+1) + ($categories->currentPage() - 1)*$categories->perPage() }}
                            </td>

                            <td>
                                {{ $category->getTranslation('name') }}
                            </td>

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
                            <td>
                                {{ $category->order_level }}
                            </td>
                            <td>
                                {{ $category->level }}
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
                                <input class="form-check-input" type="checkbox" onchange="update_featured(this)" value="{{ $category->id }}"
                                <?php if($category->featured == 1) echo "checked";?>>
                            </td>

                            <td>
                                <a href="{{route('categories.edit', ['id'=>$category->id, 'lang'=>env('DEFAULT_LANGUAGE')] )}}" class="btn btn-sm btn-icon item-edit">
                                    <i class="bx bxs-edit"></i>
                                </a>

                                <a href="#" data-href="{{route('categories.destroy', $category->id)}}"
                                    title="{{ translate('Delete') }}"> 
                                    <i class="bx bx-trash me-1" aria-hidden="true"></i>
                                </a>
                            </td>
                        </tr>
                    @endforeach

                </tbody>
            </table>


        </div>


        <div class="row mx-2">
            <div class="col-sm-12 col-md-12">
                
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
    function update_featured(el) {
        if (el.checked) {
            var status = 1;
        } else {
            var status = 0;
        }
        $.post('{{ route('categories.featured') }}', {
                _token: '{{ csrf_token() }}',
                id: el.value,
                status: status
            },
            function(data) {
                if (data == 1) {
                    AIZ.plugins.notify('success', '{{ translate('Featured categories updated successfully') }}');
                } else {
                    AIZ.plugins.notify('danger', '{{ translate('Something went wrong') }}');
                }
            });
    }
</script>
@endsection