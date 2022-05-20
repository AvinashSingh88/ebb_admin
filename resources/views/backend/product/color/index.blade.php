@extends('backend.layouts.app')

@section('content')
    <div class="content-wrapper">
        <div class="container-xxl flex-grow-1 container-p-y">
            <h4 class="fw-bold py-3 mb-4">
            {{ translate('All Colors') }}
            </h4>
            <!-- DataTable with Buttons -->
            <div class="row">
                <div class="col-md-7">
                    <div class="card">
                        <form class="ng-pristine ng-valid" id="sort_colors" action="" method="GET">
                            <div class="card-header" style="padding-bottom: 0px;">
                                <div class="row">
                                    <div class="col-md-7">
                                        <h5 class="mb-0 h6">{{ translate('Colors') }}</h5>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="form-group mb-0">
                                            <input type="text" class="form-control form-control-sm" id="search" name="search"
                                                            @isset($sort_search) value="{{ $sort_search }}" @endisset
                                                            placeholder="{{ translate('Type color name & Enter') }}">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>

                            <div class="card-body">
                            <table class="table aiz-table mb-0 footable footable-1 breakpoint-lg" style="">
                            <thead>
                                <tr class="footable-header">
                                    <th class="footable-first-visible" style="display: table-cell;">#</th>
                                    <th style="display: table-cell;">{{ translate('Name') }}</th>
                                    <th class="text-right footable-last-visible" style="display: table-cell;">{{ translate('Options') }}</th>
                                </tr>
                            </thead>
                            <tbody>
               @foreach ($colors as $key => $color)
                  <tr>
                     <td class="footable-first-visible" style="display: table-cell;">{{ ($key+1) + ($colors->currentPage() - 1)*$colors->perPage() }}</td>
                     <td style="display: table-cell;">{{ $color->name }}</td>
                     <td> 
                                    <a href="{{ route('colors.edit', ['id' => $color->id, 'lang' => env('DEFAULT_LANGUAGE')]) }}"
                                            title="{{ translate('Edit') }}" class="btn btn-sm btn-icon item-edit"><i class="bx bxs-edit"></i></a>
                                    <a href="{{ route('colors.destroy', $color->id) }}"
                                            title="{{ translate('Delete') }}">  <i class="bx bx-trash me-1" aria-hidden="true"></i></a>
                                 </td>
                  </tr>
                  @endforeach
            
                 
               </tbody>
            </table>
          
            </div>
		      <div class="aiz-pagination">
              {{ $colors->appends(request()->input())->links() }}
            </div>
          </div>
          </div>
          <div class="col-md-5">
           <div class="card">
           <div class="card-header">
            <h5 class="mb-0 h6">{{ translate('Add New Color') }}</h5>
           </div>
           <div class="card-body">
                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif
            <form id="sort_colors" action="{{ route('colors.store') }}" method="POST">
            @csrf
               <div class="form-group mb-3">
                  <label for="name">{{ translate('Name') }}</label>
                  <input type="text"placeholder="{{ translate('Name') }}" id="name" name="name"
                                class="form-control" value="{{ old('name') }}" required>
               </div>
               <div class="form-group mb-3">
                  <label for="name">{{ translate('Color Code') }}</label>
                  <input type="text" placeholder="{{ translate('Color Code') }}" id="code" name="code"
                                class="form-control" value="{{ old('code') }}" required>
               </div>
               <div class="form-group mb-3 text-right">
                  <button type="submit" class="btn btn-primary">{{ translate('Save') }}</button>
               </div>
            </form>
         </div>
         <div class="card">
                <div class="card-header">
                    <h3 class="mb-0 h6">{{translate('Color filter activation')}}</h3>
                </div>
                <div class="card-body text-center">
                    <label class="aiz-switch aiz-switch-success mb-0">
                        <input type="checkbox" onchange="updateSettings(this, 'color_filter_activation')" <?php if(get_setting('color_filter_activation') == 1) echo "checked";?>>
                        <span class="slider round"></span>
                    </label>
                </div>
            </div>
    
@endsection

@section('modal')
    @include('modals.delete_modal')
@endsection

@section('script')
    <script type="text/javascript">
        function updateSettings(el, type){
            if($(el).is(':checked')){
                var value = 1;
            }
            else{
                var value = 0;
            }
            
            $.post('{{ route('business_settings.update.activation') }}', {_token:'{{ csrf_token() }}', type:type, value:value}, function(data){
                if(data == '1'){
                    AIZ.plugins.notify('success', '{{ translate('Settings updated successfully') }}');
                }
                else{
                    AIZ.plugins.notify('danger', 'Something went wrong');
                }
            });
        }
    </script>
@endsection
