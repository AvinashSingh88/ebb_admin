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



<!-- category -->
<div class="container-xxl flex-grow-1 container-p-y">
   <h4 class="fw-bold py-3 mb-4">
   {{translate('Category Information')}}
   </h4>
   <form class="browser-default-validation"  action="{{ route('categories.store') }}" method="POST" enctype="multipart/form-data">
   @csrf
      <div class="row mb-4">
         <!-- Browser Default -->
         <div class="col-md-12 mb-4 mb-md-0">
            <div class="card">
               <h5 class="card-header" style="padding-bottom:0px">{{translate('Category Information')}}</h5>
               <a href="{{ url()->previous() }}" class="manage-cate" >Back</a>
               <hr>
                <div class="card-body" style="padding-top:0px">
                    <div class="mb-3">
                        <label class="form-label" for="basic-default-name">{{translate('Name')}} </label>
                        <input type="text" class="form-control" id="basic-default-name"  placeholder="{{translate('Name')}}" id="name" name="name" class="form-control" required/>
                    </div>
                   
                    <div class="mb-3">
                        <label class="form-label">{{translate('Parent Category')}}</label>
                        <div class="col-md-12">
                            <select class="select2 form-control" name="parent_id" data-toggle="select2" data-placeholder="Choose ..." data-live-search="true">
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
                    <!-- <div class="mb-3">
                        <label for="formFileMultiple" class="form-label">
                            Ordering Number/label>
                            <input class="form-control" type="text" id="formFileMultiple" multiple="" placeholder="8">
                            <p style="    font-size: 11px; margin-top: 10px;letter-spacing: 0.5px;">Will be used in sending email</p>
                    </div> -->
                    <!-- <div class="mb-3">
                        <label class="form-label" for="basic-default-country">Category *</label>
                        <select class="form-select" id="basic-default-country" required="">
                            <option value="">Select Categories</option>
                            <option value="usa">Categorie1</option>
                            <option value="uk">Categorie2</option>
                            <option value="france">Categorie3</option>
                            <option value="australia">Categorie4</option>
                            <option value="spain">Categorie5</option>
                        </select>
                    </div> -->
                    
                    <!-- <div class="mb-3">
                        <h5 class="card-header p-0">SEO Meta Tags</h5>
                        <hr>
                        <label class="form-label" for="basic-default">{{translate('Meta Title')}}</label>
                        <input type="text" class="form-control" name="meta_title" placeholder="{{translate('Meta Title')}}" required="">
                    </div> -->
                    <div class="mb-3">
                        <label class="form-label" for="basic-default-bio">{{translate('Meta Description')}}</label>
                        <textarea class="form-control" id="basic-default-bio" placeholder="Description"  name="meta_description" rows="3"  required=""></textarea>
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
</div>


<!-- /Bootstrap Validation -->
</div>
</form>
</div>
@endsection
@section('script')
<script>
    $('#select2Primary').select2({
    closeOnSelect: true;
    });
</script>
@endsection
