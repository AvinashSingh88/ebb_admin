@extends('backend.layouts.app')
@section('styles')
<link rel="stylesheet" href="{{ static_asset('assets/vendor/libs/select2/select2.css')}}" />
<script src="{{ static_asset('assets/vendor/libs/select2/select2.js')}}"></script>

<style>
   .manage-cate{
    position: absolute;
     z-index: 999;
     right: 30px;
     top: 15px;
     border: 1px solid #696cff;
     padding: 5px 20px;
     background: #696cff;
     color: #fff;
     font-size: 14px;
     border-radius: 5px;"  
                } 
             
</style>
@endsection
@section('content')




<!-- edit -->
<div class="container-xxl flex-grow-1 container-p-y">
   <h4 class="fw-bold py-3 mb-4">
   {{translate('Category Information')}}
   </h4>
   <form class="browser-default-validation" action="{{ route('categories.update', $category->id) }}" method="POST" enctype="multipart/form-data">
        <input name="_method" type="hidden" value="PATCH">
        <input type="hidden" name="lang" value="{{ $lang }}">
        @csrf
      <div class="row mb-4">
         <!-- Browser Default -->
         <div class="col-md-12 mb-4 mb-md-0">
            <div class="card">
                <div class="row">
              <div class="col-md-6"> <h5 class="card-header" style="padding-bottom:0px">{{translate('Category Information')}}</h5> </div>
              <div class="col-md-6 mt-3 text-end"> <a href="{{ url()->previous() }}" class="manage-cate" >Back</a> </div>
               </div>
               <hr>
                <div class="card-body" style="padding-top:0px">
                <ul class="nav nav-tabs nav-fill border-light">
                    @foreach (\App\Models\Language::all() as $key => $language)
                    <li class="nav-item">
                        <a class="nav-link text-reset @if ($language->code == $lang) active @else bg-soft-dark border-light border-left-0 @endif py-3" href="{{ route('categories.edit', ['id'=>$category->id, 'lang'=> $language->code] ) }}">
                            <img src="{{ static_asset('assets/img/flags/'.$language->code.'.png') }}" height="11" class="mr-1">
                            <span>{{$language->name}}</span>
                        </a>
                    </li>
                    @endforeach
                </ul>

                    <div class="mb-3">
                        <label class="form-label">{{translate('Name')}}</label>
                        <div class="col-md-12">
                            <input type="text" name="name" value="{{ $category->getTranslation('name', $lang) }}" class="form-control" id="name" placeholder="{{translate('Name')}}" required>
                        </div>
                    </div>
                   
                    <div class="mb-3">
                        <label class="form-label">{{translate('Parent Category')}}</label>
                        <div class="col-md-12">
                            <select class="select2 form-control" name="parent_id" data-toggle="select2" data-placeholder="Choose ..."data-live-search="true" data-selected="{{ $category->parent_id }}">
                                <option value="0">{{ translate('No Parent') }}</option>
                                @foreach ($categories as $category)
                                    <option value="{{ $category->id }}">{{ $category->getTranslation('name') }}</option>
                                    @foreach ($category->childrenCategories as $childCategory)
                                        @include('categories.child_category', ['child_category' => $childCategory])
                                    @endforeach
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="card-body1">
                        <div class="mb-3">
                            <label for="formFile" class="form-label">{{ translate('Browse File') }}</label>
                            <input class="form-control" type="file" id="formFile" data-placeholder="Choose ..." data-live-search="true">
                        </div>
                        <div class="mb-3">
                            <label for="formFileMultiple" class="form-label">{{translate('Icon')}} <small>({{ translate('32x32') }})</small></label>
                            <input class="form-control" type="file" id="formFileMultiple" multiple="">
                        </div>
                    </div>
                
                    <div class="mb-3">
                        <label class="form-label" for="basic-default-bio">{{translate('Meta Description')}}</label>
                        <textarea name="meta_description" rows="5" class="form-control">{{ $category->meta_description }}</textarea>
                    </div>
                    @if (get_setting('category_wise_commission') == 1)
                        <div class="form-group row">
                            <label class="col-md-3 col-form-label">{{translate('Commission Rate')}}</label>
                            <div class="col-md-9 input-group">
                                <input type="number" lang="en" min="0" step="0.01" placeholder="{{translate('Commission Rate')}}" id="commision_rate" name="commision_rate" class="form-control">
                                <div class="input-group-append">
                                    <span class="input-group-text">%</span>
                                </div>
                            </div>
                        </div>
                    @endif


                    <div class="col-md-12 mb-4">
                        <label for="select2Primary" class="form-label">{{translate('Filtering Attributes')}}</label>
                        <div class="select2-primary">
                        <select id="select2Primary" class="select2 form-select" name="filtering_attributes[]" data-toggle="select2" data-placeholder="Choose ..."data-live-search="true" multiple>
                        @foreach (\App\Models\Attribute::all() as $attribute)
                                    <option value="{{ $attribute->id }}">{{ $attribute->getTranslation('name') }}</option>
                                @endforeach
                        
                        </select>
                        </div>
                    </div>
                  
                    <div class="row" style="margin-top:30px   ; justify-content: end;width:607px;">
                        <div class="col-12">
                            <button type="submit" class="btn btn-primary">{{translate('Save')}}</button>
                        </div>
                    </div>
                </div>
            </div>
         </div>
      </div>
     
     
</div>
@endsection

