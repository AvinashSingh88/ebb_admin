@extends('frontend.master')

@if (isset($category_id))
@php
$meta_title = \App\Models\Category::find($category_id)->meta_title;
$meta_description = \App\Models\Category::find($category_id)->meta_description;
@endphp
@elseif (isset($brand_id))
@php
$meta_title = \App\Models\Brand::find($brand_id)->meta_title;
$meta_description = \App\Models\Brand::find($brand_id)->meta_description;
@endphp
@else
@php
$meta_title = get_setting('meta_title');
$meta_description = get_setting('meta_description');
@endphp
@endif

@section('meta_title'){{ $meta_title }}@stop
@section('meta_description'){{ $meta_description }}@stop

@section('meta')
<!-- Schema.org markup for Google+ -->
<meta itemprop="name" content="{{ $meta_title }}">
<meta itemprop="description" content="{{ $meta_description }}">

<!-- Twitter Card data -->
<meta name="twitter:title" content="{{ $meta_title }}">
<meta name="twitter:description" content="{{ $meta_description }}">

<!-- Open Graph data -->
<meta property="og:title" content="{{ $meta_title }}" />
<meta property="og:description" content="{{ $meta_description }}" />
@endsection

@section('content')
<!-- Price nouislider-filter cdn -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/noUiSlider/15.5.1/nouislider.css" integrity="sha512-MKxcSu/LDtbIYHBNAWUQwfB3iVoG9xeMCm32QV5hZ/9lFaQZJVaXfz9aFa0IZExWzCpm7OWvp9zq9gVip/nLMg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
      <script src="https://cdnjs.cloudflare.com/ajax/libs/noUiSlider/15.5.1/nouislider.min.js" integrity="sha512-T5Bneq9hePRO8JR0S/0lQ7gdW+ceLThvC80UjwkMRz+8q+4DARVZ4dqKoyENC7FcYresjfJ6ubaOgIE35irf4w==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
      <style>
         .mall-slider-handles{
         margin-top: 50px;
         }
         .filter-container-1{
         display: flex;
         justify-content: center;
         margin-top: 60px;
         }
         .filter-container-1 input{
         border: 1px solid #ddd;
         width: 100%;
         text-align: center;
         height: 30px;
         border-radius: 5px;
         }
         .filter-container-1 button{
         background: #51a179;
         color:#fff;
         padding: 5px 20px;
         }
         .filter-container-1 button:hover{
         background: #2e7552;
         color:#fff;
         }
          
      </style>
<section class="pageTitle" style="background-image:url({{static_asset('assets_web/img/small_banner.jpg')}});">
 
</section>
<!--top banner end -->
<div class="service-pros animated animate__fadeInUp wow product-categorys ulines-dps-para ">
   <div class="container">
      <div class="row">
         <div class="col-md-12 breadmcrumsize">
            <nav aria-label="breadcrumb">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{{ route('home') }}">{{ translate('Home')}}</a></li>
                  @if(!isset($category_id))
                  <li class="breadcrumb-item"><a href="{{ route('search') }}">{{ translate('All Categories')}}</a></li>
                  @else
                  <li class="breadcrumb-item"><a href="{{ route('search') }}">{{ translate('All Categories')}} </a></li>
                  @endif
                  @if(isset($category_id))
                  <li class="breadcrumb-item active"><a
                        href="{{ route('products.servicecategory', \App\Models\Category::find($category_id)->slug) }}">{{
                        \App\Models\Category::find($category_id)->getTranslation('name') }}</a></li>

                  @endif
               </ol>
            </nav>
         </div>
      </div>
   </div>
   <div class="container details-product product-catpro ">
      <form class="" id="search-form" action="" method="GET">
         <div class="row">
            <div class="d-none d-xl-block col-xl-3 col-wd-2gdot5">
               <div class="mb-8 border border-width-2 border-color-3 borders-radius-6">
                  <ul id="sidebarNav" class="list-unstyled mb-0 sidebar-navbar view-all">
                     <li class="link-category link-category1aa">
                        @php
                        $total_category = \App\Models\Category::where('parent_id', '=', '0')->where('type', '2')->count();
                        @endphp

                        <div id="accordion" class="accordion-container">
                           <article class="content-entry">
                              <h4 class="article-title">
                                 <a class="dropdown-toggle1 dropdown-toggle-collapse1" href="javascript:;"
                                    role="button">
                                    Show All Categories<span class="text-gray-25 font-size-12 font-weight-normal">
                                       ({{$total_category}})</span> <i class="fa fa-angle-right" aria-hidden="true"
                                       style="    line-height: 35px;"></i>
                                 </a>
                              </h4>
                              <div class="accordion-content">
                                 <div class="link-categoryx link-category1az ">
                                    <ul class="list-unstyled dropdown-list">
                                       @foreach (\App\Models\Category::where('parent_id', '=', '0')->where('type','2')->get() as $key => $category)
                                       <li><a class="dropdown-item1" href="{{ route('cat', $category->slug) }}">{{  $category->getTranslation('name') }}</a></li>
                                 @endforeach
                                    </ul>
                                 </div>
                              </div>
                              <!-- <div class="accordion-content">
                                 <div class="link-categoryx link-category1az ">
                                    <ul class="list-unstyled dropdown-list">
                                       @if (!isset($category_id))
                                       @foreach (\App\Models\Category::where('level', 0)->get() as $category)
                                       <li class="mb-2 ml-2">
                                          <a class="text-reset fs-14"
                                             href="{{ route('products.category', $category->slug) }}">{{
                                             $category->getTranslation('name') }}</a>
                                       </li>
                                       @endforeach
                                       @else
                                       <li class="mb-2">
                                          <a class="text-reset fs-14 fw-600" href="{{ route('search') }}">
                                             <i class="las la-angle-left"></i>
                                             {{ translate('All Categories')}}
                                          </a>
                                       </li>
                                       @if (\App\Models\Category::find($category_id)->parent_id != 0)
                                       <li class="mb-2">
                                          <a class="text-reset fs-14 fw-600"
                                             href="{{ route('products.category', \App\Models\Category::find(\App\Models\Category::find($category_id)->parent_id)->slug) }}">
                                             <i class="las la-angle-left"></i>
                                             {{
                                             \App\Models\Category::find(\App\Models\Category::find($category_id)->parent_id)->getTranslation('name')
                                             }}
                                          </a>
                                       </li>
                                       @endif
                                       <li class="mb-2">
                                          <a class="text-reset fs-14 fw-600"
                                             href="{{ route('products.category', \App\Models\Category::find($category_id)->slug) }}">
                                             <i class="las la-angle-left"></i>
                                             {{ \App\Models\Category::find($category_id)->getTranslation('name') }}
                                          </a>
                                       </li>
                                       @foreach (\App\Utility\CategoryUtility::get_immediate_children_ids($category_id)
                                       as $key => $id)
                                       <li class="ml-4 mb-2">
                                          <a class="text-reset fs-14"
                                             href="{{ route('products.category', \App\Models\Category::find($id)->slug) }}">{{
                                             \App\Models\Category::find($id)->getTranslation('name') }}</a>
                                       </li>
                                       @endforeach
                                       @endif



                                    </ul>
                                 </div>
                              </div> -->
                           </article>

                        </div>
                     </li>
                     <li class="listing-botoms">
                        <b> Service List</b>
                        <ul class="list-unstyled dropdown-list listing_block filter">

                           @if (!isset($category_id))
                            @foreach (\App\Models\Category::where('parent_id', '=', '0')->where('type','2')->get() as $key => $category)
                           <li><a class="dropdown-item1" href="{{ route('products.servicecategory', $category->slug) }}">{{
                                 $category->getTranslation('name') }}</a></li>
                           @endforeach
                           @else

                           

                           @if (\App\Models\Category::find($category_id)->parent_id != 0)
                           <li><a class="dropdown-item1"
                                 href="{{ route('products.servicecategory', \App\Models\Category::find(\App\Models\Category::find($category_id)->parent_id)->slug) }}">{{
                                 \App\Models\Category::find(\App\Models\Category::find($category_id)->parent_id)->getTranslation('name')
                                 }}</a></li>
                           @endif
                           <li>
                              <a class="dropdown-item1"
                                 href="{{ route('products.servicecategory', \App\Models\Category::find($category_id)->slug) }}">
                                 {{ \App\Models\Category::find($category_id)->getTranslation('name') }}
                              </a>
                           </li>
                           @foreach (\App\Utility\CategoryUtility::get_immediate_children_ids($category_id) as $key =>
                           $id)
                           <li>
                              <a class="dropdown-item1"
                                 href="{{ route('products.servicecategory', \App\Models\Category::find($id)->slug) }}">
                                 {{ \App\Models\Category::find($id)->getTranslation('name') }}
                              </a>
                           </li>
                           @endforeach
                           @endif

                        </ul>
                     </li>

                  </ul>
               </div>
               <div class="mb-6">
                  <div class="border-bottom1 border-color-11 mt-3 mb-3">
                     <h3 class="section-title section-title__sm mb-0 pb-2 font-size-18">Filters</h3>
                     <div class="deals">
                        <hr>
                     </div>
                  </div>
                  <div class="border-bott">


                     <div id="accordion" class="accordion-container contentsarround">
                        <article class="content-entry open">
                           <h4 class="font-size-14 mb-3 font-weight-bold article-title">Brands <i></i></h4>
                           <div class="accordion-content" style="display:block;">
                              <div class="border-topsd">
                                 @foreach (\App\Models\Brand::orderBy('id', 'desc')->limit(2)->get() as $brand)
                                 <div class="form-group d-flex align-items-center justify-content-between mb-2 pb-1">
                                    <div class="custom-control custom-checkbox">
                                       <input name="brand" onchange="filter()" value="{{ $brand->slug }}"
                                          type="checkbox" class="custom-control-input" id="brand{{$brand->id}}"
                                          @isset($brand_id) @if ($brand_id==$brand->id) checked @endif @endisset>
                                       <label class="custom-control-label" for="brand{{$brand->id}}">{{
                                          $brand->getTranslation('name') }}
                                          <span class="text-gray-25 font-size-12 font-weight-normal"> </span>
                                       </label>
                                    </div>
                                 </div>
                                 @endforeach

                                 <!-- End Checkboxes -->
                                 <!-- View More - Collapse -->
                                 <div class="collapses" id="collapseBrand1">
                                    @foreach (\App\Models\Brand::orderBy('id', 'desc')->take(50)->skip(2)->get() as
                                    $brand)
                                    <div class="form-group d-flex align-items-center justify-content-between mb-2 pb-1">
                                       <div class="custom-control custom-checkbox">
                                          <input name="brand" onchange="filter()" value="{{ $brand->slug }}"
                                             type="checkbox" class="custom-control-input" id="brand{{$brand->id}}"
                                             @isset($brand_id) @if ($brand_id==$brand->id) checked @endif @endisset>
                                          <label class="custom-control-label" for="brand{{$brand->id}}">{{
                                             $brand->getTranslation('name') }}
                                             <span class="text-gray-25 font-size-12 font-weight-normal"> </span>
                                          </label>
                                       </div>
                                    </div>
                                    @endforeach

                                 </div>
                                 <!-- End View More - Collapse -->
                                 <!-- Link -->
                                 <a class="link link-collapse small font-size-13 text-gray-27 d-inline-flex mt-2"
                                    data-toggle="collapse" href="#collapseBrand" role="button" aria-expanded="false"
                                    aria-controls="collapseBrand">
                                    <span class="link__icon text-gray-27 bg-white">
                                       <span class="link__icon-inner">+</span>
                                    </span>
                                    <span class="link-collapse__default">Show more</span>
                                    <span class="link-collapse__active">Show less</span>
                                 </a>
                              </div>
                           </div>

                        </article>

                        @if (get_setting('color_filter_activation'))
                        <article class="content-entry">
                           <h4 class="font-size-14 mb-3 font-weight-bold article-title"> {{ translate('Filter by
                              color')}} <i></i></h4>
                           <div class="accordion-content">
                              <div class="border-topsd">
                                 <div class="border-bott">
                                    <!-- Checkboxes -->
                                    @foreach ($first_five_color as $key => $color)

                                    <div class="form-group  align-items-center justify-content-between mb-2 pb-1">
                                       <div class="custom-control custom-checkbox">
                                          <input type="checkbox" class="custom-control-input" id="color{{$color->id}}"
                                             name="color" value="{{ $color->code }}" onchange="filter()"
                                             @if(isset($selected_color) && $selected_color==$color->code) checked @endif
                                          >
                                          <label class="custom-control-label" for="color{{$color->id}}">{{$color->name}}
                                             <span class="text-gray-25 font-size-12 font-weight-normal"></span> <span
                                                class="mx-auto color_code">
                                                <div style="background-color:{{$color->code}}" class="w-100 h-100">
                                                </div>
                                             </span></label>
                                       </div>
                                    </div>
                                    @endforeach

                                    <!-- End Checkboxes -->
                                    <!-- View More - Collapse -->
                                    <div class="collapses2" id="collapseBrand1">
                                       @foreach ($colors as $key => $color)
                                       <div class="form-group  align-items-center justify-content-between mb-2 pb-1">
                                          <div class="custom-control custom-checkbox">
                                             <input type="checkbox" class="custom-control-input"
                                                id="color{{$color->id}}" name="color" value="{{ $color->code }}"
                                                onchange="filter()" @if(isset($selected_color) &&
                                                $selected_color==$color->code) checked @endif >
                                             <label class="custom-control-label"
                                                for="color{{$color->id}}">{{$color->name}} <span
                                                   class="text-gray-25 font-size-12 font-weight-normal"></span> <span
                                                   class="mx-auto color_code">
                                                   <div style="background-color:{{$color->code}}" class="w-100 h-100">
                                                   </div>
                                                </span></label>
                                          </div>
                                       </div>
                                       @endforeach

                                    </div>
                                    <!-- End View More - Collapse -->
                                    <!-- Link -->
                                    <a class="link link-collapse small font-size-13 text-gray-27 d-inline-flex mt-2"
                                       data-toggle="collapse" href="#collapseColor" role="button" aria-expanded="false"
                                       aria-controls="collapseColor">
                                       <span class="link__icon text-gray-27 bg-white">
                                          <span class="link__icon-inner">+</span>
                                       </span>
                                       <span class="link-collapse__default2">Show more</span>
                                       <span class="link-collapse__active2">Show less</span>
                                    </a>
                                    <!-- End Link -->
                                 </div>
                              </div>
                           </div>

                        </article>
                        @endif

                        @foreach ($attributes as $attribute)
                        <article class="content-entry">
                           <h4 class="font-size-14 mb-3 font-weight-bold article-title">{{ translate('Filter by') }} {{
                              $attribute->getTranslation('name') }} <i></i></h4>
                           <div class="accordion-content">
                              <div class="border-topsd">
                                 <div class="border-bott">
                                    <!-- Checkboxes -->
                                    @foreach ($attribute->attribute_values as $attribute_value)
                                    <div class="form-group align-items-center justify-content-between mb-2 pb-1">
                                       <div class="custom-control custom-checkbox">
                                          <input id="checkbox_24{{$attribute_value->id}}" class="custom-control-input"
                                             type="checkbox" name="selected_attribute_values[]"
                                             value="{{ $attribute_value->value }}" 
                                             @if(in_array($attribute_value->value, $selected_attribute_values)) checked @endif
                                          onchange="filter()">
                                          <label class="custom-control-label" for="checkbox_24{{$attribute_value->id}}">
                                             {{ $attribute_value->value }}
                                             <span class="text-gray-25 font-size-12 font-weight-normal"></span>
                                          </label>
                                       </div>
                                    </div>
                                    @endforeach

                                 </div>
                              </div>
                           </div>
                        </article>
                        @endforeach

                       
                        
                        <!---<article class="content-entry open">
                        <h4 class="font-size-14 mb-3 font-weight-bold article-title">Price range</h4>
                        <div class="accordion-content1">
                        
                         
                        <div id="slider-range"></div>
                        <p>
                          <input type="text" name="min_price" id="amount" readonly />
                          <input type="text" name="max_price" id="amount1" readonly />
                        </p>
                        </div>
                        </article>-->
						
						 <div class="mall-slider-handles" data-start="@if(\App\Models\Product::count() < 1) 0 @else {{ \App\Models\Product::min('unit_price') }} @endif" data-end="@if(\App\Models\Product::count() < 1) 0 @else {{ \App\Models\Product::max('unit_price') }} @endif" @if (isset($min_price)) data-min="{{ $min_price }}" @elseif($products->min('unit_price') > 0) data-min="{{ $products->min('unit_price') }}" @else data-min="0" @endif @if (isset($max_price)) data-max="{{ $max_price }}" @elseif($products->max('unit_price') > 0) data-max="{{ $products->max('unit_price') }}"  @else data-max="0" @endif data-max="{{ $max_price }}" data-target="price" style="width: 100%"> </div>
                     <div class="row filter-container-1">
                        <div class="col-md-4">
                           <input data-min="price" id="skip-value-lower" name="min_price" value="@if(\App\Models\Product::count() < 1) 0 @else {{ \App\Models\Product::min('unit_price') }} @endif" readonly>  
                        </div>
                        <div class="col-md-4">
                           <input data-max="price" id="skip-value-upper" name="max_price" value="@if(\App\Models\Product::count() < 1) 0 @else {{ \App\Models\Product::max('unit_price') }} @endif" readonly>
                        </div>
                        <div class="col-md-4">
                           <button type="submit" class="btn btn-sm">Filter</button>
                        </div>
                     </div>
                     </div>
                     @include('frontend.partials.category_enquiry_form')
					 @section('script')
                   <script>
					   $(function () {
							   var $propertiesForm = $('.mall-category-filter');
							   var $body = $('body');
							   $('.mall-slider-handles').each(function () {
								   var el = this;
								   noUiSlider.create(el, {
									   start: [el.dataset.start, el.dataset.end],
									   connect: true,
									   tooltips: true,
									   range: {
										   min: [parseFloat(el.dataset.min)],
										   max: [parseFloat(el.dataset.max)]
									   },
									   pips: {
										   mode: 'range',
										   density: 20
									   }
								   }).on('change', function (values) {
									   $('[data-min="' + el.dataset.target + '"]').val(values[0])
									   $('[data-max="' + el.dataset.target + '"]').val(values[1])
									   $propertiesForm.trigger('submit');
								   });
							   })
						   })     
					</script>
					@endsection
				</div>
               </div>

            </div>
            <div class="col-xl-9 col-wd-9gdot5">

               <div class="head-cnt work-center text-left" style="margin-bottom:20px;">
                  <div class="bounceIn animated">
                     <!-- <div class="our-latest-border" style="    margin: 0px;"></div>-->
                     <div class="row">
                        <div class="col-md-8">
                           <h5>
                              @if(isset($category_id))
                              Showing results for "{{ \App\Models\Category::find($category_id)->getTranslation('name')
                              }}"
                              @elseif(isset($query))
                              {{ translate('Search result for ') }}"{{ $query }}"
                              @else
                              {{ translate('All Products') }}
                              @endif
                           </h5>
                        </div>
                        <div class="col-md-4">
							<div class="d-flex">
							      <label class="mb-0 opacity-50 w-20">{{ translate('Sort by')}}</label>
                           <select class="form-control form-control-sm aiz-selectpicker" name="sort_by"
                              onchange="filter()">
                              <option value="newest" @isset($sort_by) @if ($sort_by=='newest' ) selected @endif
                                 @endisset>{{ translate('Newest')}}</option>
                              <option value="oldest" @isset($sort_by) @if ($sort_by=='oldest' ) selected @endif
                                 @endisset>{{ translate('Oldest')}}</option>
                              <option value="price-asc" @isset($sort_by) @if ($sort_by=='price-asc' ) selected @endif
                                 @endisset>{{ translate('Price low to high')}}</option>
                              <option value="price-desc" @isset($sort_by) @if ($sort_by=='price-desc' ) selected @endif
                                 @endisset>{{ translate('Price high to low')}}</option>
                           </select>
							</div>
                     
                        </div>
                        
                     </div>
                  </div>
               </div>
               <div class="row">
				
                  @foreach ($products as $key => $product)
                  
                     @include('frontend.partials.service_box_1',['product' => $product])
                   
				  
                  @endforeach


               </div>

               {{ $products->appends(request()->input())->links() }}
            </div>

         </div>
      </form>
      <!-- End Brand Carousel -->
   </div>
   <section class="banner-brand_product">
      <div class="container">
         <div class="service-pros" style="padding:0px;margin:0px;">
            <div class="head-cnt work-center text-center" style="    margin: 0px; height: 0px;">
               <div class="bounceIn animated">
                  <h4>Why Buy Product From eBuildBazaar?</h4>
               </div>
            </div>
         </div>

         <div class="brandss1">
            <div class="row">
               <div class="col-md-2"><a href="#1"><img src="{{static_asset('assets_web/img/iconon1.png')}}" alt="">
                     <h3>All Under One roof</h3>
                     <p>Ebuildbazaar Stores from others is their pricing.</p>
                  </a></div>
               <div class="col-md-2"><a href="#1"><img src="{{static_asset('assets_web/img/iconon2.png')}}" alt="">
                     <h3>Widest Product Range</h3>
                     <p>Ebuildbazaar Stores from others is their pricing.</p>
                  </a></div>
               <div class="col-md-2"><a href="#1"><img src="{{static_asset('assets_web/img/iconon3.png')}}" alt="">
                     <h3>On Time Delivery</h3>
                     <p>Ebuildbazaar Stores from others is their pricing.</p>
                  </a></div>
               <div class="col-md-2"><a href="#1"><img src="{{static_asset('assets_web/img/iconon4.png')}}" alt="">
                     <h3>Product Knowledge Support</h3>
                     <p>Ebuildbazaar Stores from others is their pricing.</p>
                  </a></div>
               <div class="col-md-2"><a href="#1"><img src="{{static_asset('assets_web/img/iconon5.png')}}" alt="">
                     <h3>Genuine Products</h3>
                     <p>Ebuildbazaar Stores from others is their pricing.</p>
                  </a></div>
               <div class="col-md-2"><a href="#1"><img src="{{static_asset('assets_web/img/iconon6.png')}}" alt="">
                     <h3>365 Days Wholesale Rates</h3>
                     <p>Ebuildbazaar Stores from others is their pricing.</p>
                  </a></div>
            </div>
         </div>
      </div>
   </section>

   <script type="text/javascript">
      function filter() {
         $('#search-form').submit();
      }
      function rangefilter(arg) {
         $('input[name=min_price]').val(arg[0]);
         $('input[name=max_price]').val(arg[1]);
         filter();
      }
   </script>


   @endsection