@extends('frontend.master')
@section('meta_title'){{ $detailedProduct->meta_title }}@stop

@section('meta_description'){{ $detailedProduct->meta_description }}@stop

@section('meta_keywords'){{ $detailedProduct->tags }}@stop

@section('meta')
<!-- Schema.org markup for Google+ -->
<meta itemprop="name" content="{{ $detailedProduct->meta_title }}">
<meta itemprop="description" content="{{ $detailedProduct->meta_description }}">
<meta itemprop="image" content="{{ uploaded_asset($detailedProduct->meta_img) }}">

<!-- Twitter Card data -->
<meta name="twitter:card" content="product">
<meta name="twitter:site" content="@publisher_handle">
<meta name="twitter:title" content="{{ $detailedProduct->meta_title }}">
<meta name="twitter:description" content="{{ $detailedProduct->meta_description }}">
<meta name="twitter:creator" content="@author_handle">
<meta name="twitter:image" content="{{ uploaded_asset($detailedProduct->meta_img) }}">
<meta name="twitter:data1" content="{{ single_price($detailedProduct->unit_price) }}">
<meta name="twitter:label1" content="Price">

<<<<<<< HEAD
    <!-- Open Graph data -->
    <meta property="og:title" content="{{ $detailedProduct->meta_title }}" />
    <meta property="og:type" content="og:product" />
    <meta property="og:url" content="{{ route('product', $detailedProduct->slug) }}" />
    <meta property="og:image" content="{{ uploaded_asset($detailedProduct->meta_img) }}" />
    <meta property="og:description" content="{{ $detailedProduct->meta_description }}" />
    <meta property="og:site_name" content="{{ get_setting('meta_title') }}" />
    <meta property="og:price:amount" content="{{ single_price($detailedProduct->unit_price) }}" />
    <meta property="product:price:currency" content="{{ \App\Models\Currency::findOrFail(get_setting('system_default_currency'))->code }}" />
    <meta property="fb:app_id" content="{{ env('FACEBOOK_PIXEL_ID') }}">
 
@endsection
@section('content')
<section class="pageTitle" style="    background-image: url({{static_asset('assets_web/img/orderbanner.png')}}); background-size: cover;">
         <div class="container">
         </div>
      </section>
      <!--top banner end -->
      <div class="service-pros animated animate__fadeInUp wow product-categorys ulines-dps-para ">
         <div class="container">
            <div class="row">
               <div class="col-md-12 breadmcrumsize">
                  <nav aria-label="breadcrumb">
                     <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.php">Home</a></li> 
						             <li class="breadcrumb-item"><a href="building-materials.php">Structural Materials</a></li>
						             <li class="breadcrumb-item"><a href="product-building.php">Cement</a></li>
                  <li class="breadcrumb-item active" aria-current="page"> {{ $detailedProduct->getTranslation('name') }}     </li> 
                     </ol>
                  </nav>
               </div>
            </div>
         </div>
         <div class="container details-product">
            <div class="row">
               <div class="col-xl-9 col-wd-9gdot5">
                  <div class="row">
                     <div class="col-md-6">
                        <div class="product-box" style=" margin-bottom: 0px;">
                           <!--<div class="beachs">10% Off</div>-->
                           <div class="zoom-left">
						   @php $photos = explode(',', $detailedProduct->photos); @endphp
						   @foreach ($photos as $key => $photo)
                              <img id="zoom_03" src="{{ uploaded_asset($photo) }}" data-zoom-image="{{ uploaded_asset($photo) }}"/>
							  @endforeach
                              <div class="clearfix"></div>
                              <div id="gallery_01">
                     
                              
                     <a href="#" class="elevatezoom-gallery active" data-update="" data-image="{{ uploaded_asset($photo) }}" data-zoom-image="{{ uploaded_asset($photo) }}">
                     <img src="{{ uploaded_asset($photo) }}" width="100"  /></a>

                     <a href="#" class="elevatezoom-gallery" data-image="{{ uploaded_asset($photo) }}" data-zoom-image="{{ uploaded_asset($photo) }}">
                     <img src="{{ uploaded_asset($photo) }}" width="100"  /></a>
                     <a href="tester" class="elevatezoom-gallery" data-image="{{ uploaded_asset($photo) }}" data-zoom-image="{{ uploaded_asset($photo) }}">
                     <img src="{{ uploaded_asset($photo) }}" width="100"/>
                     </a>
                     <a href="tester" class="elevatezoom-gallery" data-image="{{ uploaded_asset($photo) }}" data-zoom-image="{{ uploaded_asset($photo) }}" class="slide-content" >
                     <img src="{{ uploaded_asset($photo) }}" width="100"  /></a>
                     <a href="tester" class="elevatezoom-gallery" data-image="{{ uploaded_asset($photo) }}" data-zoom-image="{{ uploaded_asset($photo) }}" class="slide-content" >
                     <img src="{{ uploaded_asset($photo) }}" width="100"  /></a>
                     <a href="tester" class="elevatezoom-gallery" data-image="{{ uploaded_asset($photo) }}" data-zoom-image="{{ uploaded_asset($photo) }}" class="slide-content" >
                     <img src="{{ uploaded_asset($photo) }}" width="100"  /></a>
                  
                  </div>
                              <!--<div id="gallery_01">
=======
<!-- Open Graph data -->
<meta property="og:title" content="{{ $detailedProduct->meta_title }}" />
<meta property="og:type" content="og:product" />
<meta property="og:url" content="{{ route('product', $detailedProduct->slug) }}" />
<meta property="og:image" content="{{ uploaded_asset($detailedProduct->meta_img) }}" />
<meta property="og:description" content="{{ $detailedProduct->meta_description }}" />
<meta property="og:site_name" content="{{ get_setting('meta_title') }}" />
<meta property="og:price:amount" content="{{ single_price($detailedProduct->unit_price) }}" />
<meta property="product:price:currency"
    content="{{ \App\Models\Currency::findOrFail(get_setting('system_default_currency'))->code }}" />
<meta property="fb:app_id" content="{{ env('FACEBOOK_PIXEL_ID') }}">

@endsection
@section('content')
<section class="pageTitle product-detail_banner"
    style="background-image:url({{static_asset('assets_web/img/orderbanner.png')}})">
    <div class="container">
    </div>
</section>
<!--top banner end -->
<div class="service-pros animated animate__fadeInUp wow product-categorys ulines-dps-para ">
    <div class="container">
        <div class="row">
            <div class="col-md-12 breadmcrumsize">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
						@php
							$catid  = $detailedProduct->category->id;
                            $getParentid = \App\Models\Category::where('id','=',$catid)->first(['parent_id']);
                            $get_parent_id = $getParentid->parent_id;
                            
						@endphp
                        <li class="breadcrumb-item"><a href="{{url('')}}">Home</a></li>
                        <li class="breadcrumb-item"><a href="product-building.php">{{$detailedProduct->category->getTranslation('name') }}</a></li>
                        <li class="breadcrumb-item active" aria-current="page">
                            {{ $detailedProduct->getTranslation('name') }} -{{$get_parent_id}}</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
    <div class="container details-product">
        <div class="row">
            <div class="col-xl-9 col-wd-9gdot5">
                <div class="row">
                    <div class="col-md-6">
                        <div class="product-box mb-0 zoom-left_hegt">
                            <!--<div class="beachs">10% Off</div>-->
                            <div class="zoom-left">
                                @php $photos = explode(',', $detailedProduct->photos); @endphp
                                @foreach ($photos as $key => $photo)
                                <img id="zoom_03" src="{{ uploaded_asset($photo) }}"
                                    data-zoom-image="{{ uploaded_asset($photo) }}" />
                                @endforeach
                                <div class="clearfix"></div>
                                <div id="gallery_01">


                                    <a href="#" class="elevatezoom-gallery active" data-update=""
                                        data-image="{{ uploaded_asset($photo) }}"
                                        data-zoom-image="{{ uploaded_asset($photo) }}">
                                        <img src="{{ uploaded_asset($photo) }}" width="100" /></a>

                                    <a href="#" class="elevatezoom-gallery" data-image="{{ uploaded_asset($photo) }}"
                                        data-zoom-image="{{ uploaded_asset($photo) }}">
                                        <img src="{{ uploaded_asset($photo) }}" width="100" /></a>
                                    <a href="tester" class="elevatezoom-gallery"
                                        data-image="{{ uploaded_asset($photo) }}"
                                        data-zoom-image="{{ uploaded_asset($photo) }}">
                                        <img src="{{ uploaded_asset($photo) }}" width="100" />
                                    </a>
                                    <a href="tester" class="elevatezoom-gallery"
                                        data-image="{{ uploaded_asset($photo) }}"
                                        data-zoom-image="{{ uploaded_asset($photo) }}" class="slide-content">
                                        <img src="{{ uploaded_asset($photo) }}" width="100" /></a>
                                    <a href="tester" class="elevatezoom-gallery"
                                        data-image="{{ uploaded_asset($photo) }}"
                                        data-zoom-image="{{ uploaded_asset($photo) }}" class="slide-content">
                                        <img src="{{ uploaded_asset($photo) }}" width="100" /></a>
                                    <a href="tester" class="elevatezoom-gallery"
                                        data-image="{{ uploaded_asset($photo) }}"
                                        data-zoom-image="{{ uploaded_asset($photo) }}" class="slide-content">
                                        <img src="{{ uploaded_asset($photo) }}" width="100" /></a>

                                </div>
                                <!--<div id="gallery_01">
>>>>>>> 2afb8461186ad908519764769c3954bab0b05aaa
							  @foreach ($detailedProduct->stocks as $key => $stock)

										@if($stock->image != null)
                                 <a href="javascript:void(0);" class="elevatezoom-gallery active" 
								 data-update="" data-image="{{ uploaded_asset($stock->image) }}" data-zoom-image="{{ uploaded_asset($stock->image) }}">
                                 <img src="{{ uploaded_asset($stock->image) }}" width="100"  /></a>
                                 @endif

									@endforeach 
                              </div>-->
<<<<<<< HEAD
                           </div>
=======
                            </div>
>>>>>>> 2afb8461186ad908519764769c3954bab0b05aaa
                        </div>
                        <!--Last code start--->

                        <form id="option-choice-form">
                            @csrf
                            <input type="hidden" name="id" value="{{ $detailedProduct->id }}">

                            @if ($detailedProduct->choice_options != null)
                            @foreach (json_decode($detailedProduct->choice_options) as $key => $choice)
                            <div class="tab-finish">
                                <div class="row no-gutters">
                                    <div class="col-sm-2">
                                        <p class="ucfirst">
                                            {{ \App\Models\Attribute::find($choice->attribute_id)->getTranslation('name') }}:
                                        </p>
                                    </div>
                                    <div class="col-sm-10">
                                        <div class="aiz-radio-inline">
                                            @foreach ($choice->values as $key => $value)
                                            <label class="aiz-megabox pl-0 mr-2">
                                                <input class="opacity" type="radio"
                                                    name="attribute_id_{{ $choice->attribute_id }}" value="{{ $value }}"
                                                    @if($key==0) checked @endif>
                                                <span
                                                    class="aiz-megabox-elem rounded d-flex align-items-center justify-content-center py-2 px-3 mb-2">
                                                    {{ $value }}
                                                </span>
                                            </label>
                                            @endforeach
                                        </div>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                            @endif

                            @if (count(json_decode($detailedProduct->colors)) > 0)
                            <div class="row no-gutters">
                                <div class="col-sm-2">
                                    <div class="opacity-50 my-0">
                                        <h6>{{ translate('Color')}}:</h6>
                                    </div>
                                </div>
                                <div class="col-sm-10">
                                    <div class="aiz-radio-inline">
                                        @foreach (json_decode($detailedProduct->colors) as $key => $color)
                                        <label class="aiz-megabox pl-0 mr-2" data-toggle="tooltip"
                                            data-title="{{ \App\Models\Color::where('code', $color)->first()->name }}">
                                            <input class="opacity" type="radio" name="color"
                                                value="{{ \App\Models\Color::where('code', $color)->first()->name }}"
                                                @if($key==0) checked @endif>
                                            <span
                                                class="aiz-megabox-elem rounded d-flex align-items-center justify-content-center p-1 mb-2">
                                                <span class="size-30px d-inline-block rounded"
                                                    style="background:{{ $color }};"></span>
                                            </span>
                                        </label>
                                        @endforeach
                                    </div>
                                </div>
                            </div>

                            <hr>
                            @endif

                            <!-- Quantity + Add to cart -->
                            <div class="row no-gutters d-none">
                                <div class="col-sm-2">
                                    <div class="opacity-50 my-2">{{ translate('Quantity')}}:</div>
                                </div>
                                <div class="col-sm-10">
                                    <div class="product-quantity d-flex align-items-center">
                                        <div
                                            class="input-group w-60 justify-content-start align-items-center packageadd">
                                            <input type="button" value="-"
                                                class="button-minus border rounded-circle quantity-left-minus icon-shape icon-sm mx-1 m-0"
                                                data-field="quantity">
                                            <input type="number" step="1" min="{{ $detailedProduct->min_qty }}" max="10"
                                                value="{{ $detailedProduct->min_qty }}" name="quantity"
                                                class="quantity quantity-field border-0 text-center m-0 w-25">
                                            <input type="button" value="+"
                                                class="button-plus border rounded-circle quantity-right-plus icon-shape icon-sm m-0 lh-0"
                                                data-field="quantity">
                                        </div>
                                        <!-- <div class="row no-gutters align-items-center aiz-plus-minus mr-3"
                                            style="width: 130px;">
                                            <button class="btn col-auto btn-icon btn-sm btn-circle btn-light"
                                                type="button" data-type="minus" data-field="quantity" disabled="">
                                                <i class="las la-minus"></i>
                                            </button>
                                            <input type="number" class="opacity" name="quantity"
                                                class="col border-0 text-center flex-grow-1 fs-16 input-number"
                                                placeholder="1" value="{{ $detailedProduct->min_qty }}"
                                                min="{{ $detailedProduct->min_qty }}" max="10">
                                            <button class="btn  col-auto btn-icon btn-sm btn-circle btn-light"
                                                type="button" data-type="plus" data-field="quantity">
                                                <i class="las la-plus"></i>
                                            </button>
                                        </div> -->
                                        @php
                                        $qty = 0;
                                        foreach ($detailedProduct->stocks as $key => $stock) {
                                        $qty += $stock->qty;
                                        }
                                        @endphp
                                        <div class="avialable-amount w-40 opacity-60">
                                            @if($detailedProduct->stock_visibility_state == 'quantity')
                                            (<span id="available-quantity">{{ $qty }}</span>
                                            {{ translate('available')}})
                                            @elseif($detailedProduct->stock_visibility_state == 'text' && $qty >= 1)
                                            (<span id="available-quantity">{{ translate('In Stock') }}</span>)
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            </div>



                        </form>
                        <!--Last code end--->
                    </div>

                    <div class="col-md-6">
                        <div class="product-box1">
                            <div class="discrptions">
                                <h5>{{ $detailedProduct->getTranslation('name') }} </h5>
                                <div class="pricebox mt-2">
                                    <div class="d-flex">
                                        <div class="title w-60 pt-2">
                                            <h4 class="tag-line325"> Made In India
                                                <img class="flag-detls" src="{{static_asset('assets_web/img/in.jpg')}}"
                                                    alt="">
                                            </h4>
                                        </div>
                                        <div class="d-flex align-items-center w-40 m-0">
                                            <div class="col-auto">
                                                <h4 class="tag-line325"><span
                                                        class="mr-2 opacity-50">{{ translate('Sold by')}}: </span>
                                                    @if ($detailedProduct->added_by == 'seller' &&
                                                    get_setting('vendor_system_activation') == 1)
                                                    <a href=""
                                                        class="text-reset">{{ $detailedProduct->user->shop->name }}</a>
                                                    @else
                                                    {{ translate('Inhouse product') }}
                                                    @endif
                                                </h4>
                                            </div>

                                            @if (get_setting('conversation_system') == 1)
                                            <div class="col-auto">
                                                <button class="btn btn-sm btn-soft-primary" onclick="show_chat_modal()">{{ translate('Message
													Seller')}}</button>
                                            </div>
                                            @endif

                                            @if ($detailedProduct->brand != null)
                                            <div class="col-auto">
                                                <a href="{{ route('products.brand',$detailedProduct->brand->slug) }}">
                                                    <img class="icon-imagw mx-2"
                                                        src="{{ uploaded_asset($detailedProduct->brand->logo) }}"
                                                        alt="{{ $detailedProduct->brand->getTranslation('name') }}">
                                                </a>
                                            </div>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="d-flex">
                                        @if(home_price($detailedProduct) != home_discounted_price($detailedProduct))
                                        <div class="price">
                                            <!-- <i class="fa fa-inr"></i> -->
                                            <h3> {{ home_discounted_price($detailedProduct) }}</h3>
                                        </div>
                                        {{-- @if($detailedProduct->unit != null) 
												<div class="opacity-70">/{{$detailedProduct->getTranslation('unit') }}
                                    </div>
                                    @endif --}}

                                    <div class="cutprice mx-2">
                                        <h3>
                                            {{ home_price($detailedProduct) }}
                                            {{-- @if($detailedProduct->unit != null)
													 <span>/{{ $detailedProduct->getTranslation('unit') }}</span>
                                            @endif --}}
                                        </h3>
                                    </div>
                                    @endif

                                    <div id="show_total_price" class="price d-none">Total Price: <div id="total_price"
                                            class=""></div>
                                    </div>

                                    {{-- <div class="offer border-0">You Save  <i class="fa fa-inr"></i> 35  ( 14% ) </div> --}}
                                </div>
                                <div class="title">Inclusive of all taxes</div>
                                <p class="col-cpvc-2">CPVC SDR 11 CPVC Pipes 40 mm 1.50 <a href="#descriptions1">More
                                        Details</a> </p>

                            </div>

                        </div>

                        <img class="w-100 mb-2" src="{{static_asset('assets_web/img/productcoupon.jpg')}}" alt="">
                        <div id="accordion" class="accordion-container">
                            <article class="content-entry products_offers">
                                <h4 class="article-title"> Special offers <i class="fa fa-angle-right"
                                        aria-hidden="true" style="    line-height: 35px;"></i></h4>

                                <div class="accordion-content">
                                    <div class="offer-section">
                                        <!--<span class="title-head">Special offers</span>-->
                                        <ul>
                                            <li class="offerlist"><i class="fa fa-angle-right" aria-hidden="true"></i>
                                                <b>Big Saving</b> - Apply Coupon SAVEBIG
                                                &amp; Get 20% Off (price inclusive of discount)
                                                <span class="terms">T&amp;C</span>
                                            </li>
                                            <li class="offerlist"><i class="fa fa-angle-right" aria-hidden="true"></i>
                                                <b>5% Instant Discount - </b> on HDFC
                                                Bank Credit Cards &amp; EMI <span class="terms">T&amp;C</span>
                                            </li>
                                            <li class="offerlist"> <i class="fa fa-angle-right" aria-hidden="true"></i>
                                                <b>No Cost EMI - Starting from Rs.
                                                    1,214</b> on ICICI, Axis, Kotak, HDFC &amp; <span
                                                    class="terms">More</span>
                                            </li>
                                            <li class="offerlist"><i class="fa fa-angle-right" aria-hidden="true"></i>
                                                <b>Store Discount</b> - Visit our
                                                nearest store and get instant extra discount <span
                                                    class="terms">T&amp;C</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                            </article>

                            <article class="content-entry products_offers ">
                                <h4 class="article-title products_offersbto">Bought together <i
                                        class="fa fa-angle-right" aria-hidden="true" style="    line-height: 35px;"></i>
                                </h4>

                                <div class="accordion-content">
                                    <div id="ga-product_bought_together" data-title="Bought together"
                                        class="ga ga-template_2 ga-products-box  ga-template_themeid_0">
                                        <!--<h2 class="ga-title section-title "><span>Bought together</span></h2>-->
                                        <div class="ga-subtitle">Get 5% off when you add one or more products.</div>
                                        <div class="ga-products">
                                            <div class="ga-products_image">
                                                <div id="ga-product_4683826004099" class="ga-product ">
                                                    <a href="#1">
                                                        <img class="ga-33" id="ga-33"
                                                            src="{{static_asset('assets_web/img/cement1.jpg')}}" alt="">
                                                    </a>
                                                </div>
                                                <div id="ga-product_6616790696067" class="ga-product ">
                                                    <a href="#1">
                                                        <img class="ga-22" id="ga-22"
                                                            src="{{static_asset('assets_web/img/cement1.jpg')}}" alt="">
                                                    </a>
                                                </div>
                                                <div id="ga-product_5155996893315" class="ga-product last">
                                                    <a href="#1">
                                                        <img class="ga-111" id="ga-111"
                                                            src="{{static_asset('assets_web/img/cement1.jpg')}}" alt="">
                                                    </a>
                                                </div>

                                            </div>
                                        </div>
                                        <ul class="ga-products-input">
                                            <li class="ga-product ga-deactive" data-product-id="3">
                                                <input class="selectedItem" type="checkbox" value="3">
                                                <a class="ga-product_title" href="#1">PPC Surecem 32.5R Cement per
                                                    Pallet 40 bags of 50kg</a>

                                            </li>
                                            <li class="ga-product ga-deactive" data-product-id="2">
                                                <input class="selectedItem" type="checkbox" value="2">
                                                <a class="ga-product_title" href="#1">Cement stock brick</a>

                                            </li>
                                            <li class="ga-product ga-deactive" data-product-id="1">
                                                <input class="selectedItem" type="checkbox" value="1">
                                                <a class="ga-product_title" href="#1">KBC Kwikbuild Cement 32.5N bag
                                                    50kg</a>

                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <!--/.accordion-content-->
                            </article>

                        </div>
                        {{--<div class="backtabs-dp_servicespros2">
                   

						  <div class="optionbox">
                              <div class="clear-fix"></div>
                              <h4 class="dthd">Brands : <span><a href="#1" style="color: inherit;text-decoration: none;">V-Guard</a></span> </h4>
                              <ul class="optbrand">
                                 <!--for current product-->
                                 <li>
                                    <a href="javascript:void(0);" class="detbrand selected">
                                    <img src="{{static_asset('assets_web/img/brandsa1.jpg')}}" class="loadimg" alt="">
<<<<<<< HEAD
                                    <span class="price">₹ 1656
                                    </span></a><!-- detbrand -->
                                 </li>
                                 <!--for current product-->
                                 <!--for other products-->
                                 <li>
                                    <a href="#1" class="detbrand">
                                    <img src="{{static_asset('assets_web/img/brandsa2.jpg')}}" class="loadimg" alt="">
                                    <span class="price">₹ 1092
                                    </span></a><!-- detbrand -->
                                 </li>
                                 <li>
                                    <a href="#1" class="detbrand">
                                    <img src="{{static_asset('assets_web/img/brandsa3.jpg')}}" class="loadimg" alt="">
                                    <span class="price">₹ 876
                                    </span></a><!-- detbrand -->
                                 </li>
                                 <li>
                                    <a href="#1" class="detbrand">
                                    <img src="{{static_asset('assets_web/img/brandsa4.jpg')}}" class="loadimg" alt="">
                                    <span class="price">₹ 1100
                                    </span></a><!-- detbrand -->
                                 </li>
                                 <li>
                                    <a href="#1" class="detbrand">
                                    <img src="{{static_asset('assets_web/img/brandsa5.jpg')}}" class="loadimg" alt="">
                                    <span class="price">₹ 1694
                                    </span></a><!-- detbrand -->
                                 </li>
                                 <li>
                                    <a href="#1" class="detbrand">
                                    <img src="{{static_asset('assets_web/img/brandsa6.png')}}" class="loadimg" alt="">
                                    <span class="price">₹ 1149
                                    </span></a><!-- detbrand -->
                                 </li>
                                 <li>
                                    <a href="#1" class="detbrand">
                                    <img src="{{static_asset('assets_web/img/brandsa7.png')}}" class="loadimg" alt="">
                                    <span class="price">₹ 1154
                                    </span></a><!-- detbrand -->
                                 </li>
                                  
                              </ul>
                           </div>
                           <hr/>
                        
                        
		</div>--}}
                            
							
							@php
								$qty = 0;
								foreach ($detailedProduct->stocks as $key => $stock) {
									$qty += $stock->qty;
								}
							@endphp
                           <div class="discrptions_button">
                           <div class="cart-add d-block cart-add1 products_list ">
                                 <div class="input-group quantity_input mb-0">
                                     <div class="input-group w-100 justify-content-start align-items-center packageadd">
                                       <input type="button" value="-" class="button-minus border rounded-circle quantity-left-minus icon-shape icon-sm mx-1 m-0" data-field="quantity">
                                       <input type="number" step="1" max="10" value="1" name="quantity" class="quantity quantity-field border-0 text-center m-0 w-25">
                                       <input type="button" value="+" class="button-plus border rounded-circle quantity-right-plus icon-shape icon-sm m-0 lh-0" data-field="quantity">
                                    </div>
                                 </div>
                              </div>
                              <!-- <div class="input-group quantity_input">
=======
                        <span class="price">₹ 1656
                        </span></a><!-- detbrand -->
                        </li>
                        <!--for current product-->
                        <!--for other products-->
                        <li>
                            <a href="#1" class="detbrand">
                                <img src="{{static_asset('assets_web/img/brandsa2.jpg')}}" class="loadimg" alt="">
                                <span class="price">₹ 1092
                                </span></a><!-- detbrand -->
                        </li>
                        <li>
                            <a href="#1" class="detbrand">
                                <img src="{{static_asset('assets_web/img/brandsa3.jpg')}}" class="loadimg" alt="">
                                <span class="price">₹ 876
                                </span></a><!-- detbrand -->
                        </li>
                        <li>
                            <a href="#1" class="detbrand">
                                <img src="{{static_asset('assets_web/img/brandsa4.jpg')}}" class="loadimg" alt="">
                                <span class="price">₹ 1100
                                </span></a><!-- detbrand -->
                        </li>
                        <li>
                            <a href="#1" class="detbrand">
                                <img src="{{static_asset('assets_web/img/brandsa5.jpg')}}" class="loadimg" alt="">
                                <span class="price">₹ 1694
                                </span></a><!-- detbrand -->
                        </li>
                        <li>
                            <a href="#1" class="detbrand">
                                <img src="{{static_asset('assets_web/img/brandsa6.png')}}" class="loadimg" alt="">
                                <span class="price">₹ 1149
                                </span></a><!-- detbrand -->
                        </li>
                        <li>
                            <a href="#1" class="detbrand">
                                <img src="{{static_asset('assets_web/img/brandsa7.png')}}" class="loadimg" alt="">
                                <span class="price">₹ 1154
                                </span></a><!-- detbrand -->
                        </li>

                        </ul>
                    </div>
                    <hr />


                </div>--}}


                @php
                $qty = 0;
                foreach ($detailedProduct->stocks as $key => $stock) {
                $qty += $stock->qty;
                }
                @endphp
                <hr>
                <div class="discrptions_button">
                    <div class="cart-add d-block cart-add1 products_list ">
                        <div class="input-group quantity_input mb-0">
                            <div class="input-group w-100 justify-content-start align-items-center packageadd">
                                <input type="button" value="-"
                                    class="button-minus border rounded-circle quantity-left-minus icon-shape icon-sm mx-1 m-0"
                                    data-field="quantity">
                                <input type="number" step="1" min="{{ $detailedProduct->min_qty }}" max="10"
                                    value="{{ $detailedProduct->min_qty }}" name="quantity"
                                    class="quantity quantity-field border-0 text-center m-0 w-25">
                                <input type="button" value="+"
                                    class="button-plus border rounded-circle quantity-right-plus icon-shape icon-sm m-0 lh-0"
                                    data-field="quantity">
                            </div>
                        </div>
                    </div>
                    <!-- <div class="input-group quantity_input">
>>>>>>> 2afb8461186ad908519764769c3954bab0b05aaa
                                 <span class="input-group-btn">
                                 <input type="button" value="-" class="button-minus border rounded-circle btn btn-danger btn-number quantity-left-minus icon-shape icon-sm mx-1 " data-field="quantity">
                                     
                                
                                 </span>
                                 <input type="number" step="1" max="10" value="1" id="quantity"  name="quantity" class="quantity quantity-field form-control input-number border-0 text-center w-25">
                                     
                                  <span class="input-group-btn">
                                 <input type="button" value="+" class="button-plus border btn btn-success btn-number rounded-circle quantity-right-plus icon-shape icon-sm lh-0" data-field="quantity">
                                
                                 </span>
                              </div> -->
<<<<<<< HEAD
                              <h5><a href="#1"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i> Add to Cart</a></h5>
							  
                              <!--<h6><a href="quote.php">Get Quote</a></h6>-->
                              <h6><a href="bulk-order.php">Bulk Order</a></h6>
                           </div>
						    
						   <h4 id="available-quantity">
							@if($detailedProduct->stock_visibility_state == 'quantity')
							 <span id="available-quantity">{{ $qty }} </span> 
							 {{ translate('available')}}
							@elseif($detailedProduct->stock_visibility_state == 'text' && $qty >= 1)
							{{ translate('In Stock') }}
							@endif
							</h4>
                           {{-- <h4>Highlights</h4>
=======
                    <h5><a href="#1"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i> Add to Cart</a></h5>

                    <!--<h6><a href="quote.php">Get Quote</a></h6>-->
                    <h6><a href="bulk-order.php">Bulk Order</a></h6>
                </div>

                <h4 id="available-quantity">
                    @if($detailedProduct->stock_visibility_state == 'quantity')
                    <span id="available-quantity">{{ $qty }} </span>
                    {{ translate('available')}}
                    @elseif($detailedProduct->stock_visibility_state == 'text' && $qty >= 1)
                    {{ translate('In Stock') }}
                    @endif
                </h4>
                {{-- <h4>Highlights</h4>
>>>>>>> 2afb8461186ad908519764769c3954bab0b05aaa
                           <ul class="ulproducts ulproducts4">
                              <li><b>Category </b>&nbsp; :&nbsp; Plumbing</li>
                              <li><b>Sub Category </b>&nbsp; :&nbsp; Pipes</li>
                              <li><b>Products </b>&nbsp; :&nbsp; CPVC Pipes</li>
                              <li><b>Brand </b>&nbsp; :&nbsp; ISI</li>
                              <li><b>HSN </b>&nbsp; :&nbsp; 8544</li>
                              <li><b>SKU </b>&nbsp; :&nbsp; MK002302</li>
                           </ul> --}}
<<<<<<< HEAD
                        </div>
                     </div>
                     <div  id="descriptions1"></div>
                  </div>
				  	
						
                  <div class="bootstrap-accordiana">
                     <div class="backtabs-dp_servicespros2">
                        <ul class="ulines-dps">
                           <li class="ukine ukine1b active4">Description</li>
                           <li class="ukine ukine2b">Overview </li>
                           <li class="ukine ukine3b">Warranty </li>
                        </ul>
                        <ul class="ulines-dps-para ">
                           <li class="ukine ukine1b active4">
                              <div class="tab-description">
                                 <h3>Product Description</h3>
                                 <p><?php echo $detailedProduct->getTranslation('description'); ?>  </p>
                              </div>
                           </li>
                           <li class="ukine ukine2b">
                              <div class="tab-description">
                                 <h3>Product Overview</h3>
                                 <div class="tab-description">
                                    {{$detailedProduct->overview}}
                                 </div>
                              </div>
                           </li>
                           <li class="ukine ukine3b">
                              <div class="tab-description">
                                 <h3>Warranty Details</h3>
                                 <p>
                                    <div class="tab-description">
                                      <?php=$detailedProduct->overview ?> 
                                    </div>
                                 </p>
                              </div>
                           </li>
                        </ul>
                     </div>
                  </div>
				  
				
               </div>
               <div class="d-none d-xl-block col-xl-3 col-wd-2gdot5">
                  <div class="md-hide">
                     @php
					$start_date = date('d-M-Y');
					$deliver_date = date("d-M-Y", strtotime("$start_date +$detailedProduct->est_shipping_days days"));
					@endphp
                     <div class="deliverybox">
                        <span class="title"><i class="fa fa-map-marker"></i>Delivery by {{$deliver_date}}</span>
                        <form>
                           <input type="number" name="pincode" value="670002" placeholder="Enter Pincode">
                           <a href="javascript:void(0);" class="change">Change</a>
                        </form>
                        <ul class="row delivery">
                           <li class="col-md-4">
                              <img src="{{static_asset('assets_web/img/shipping.svg')}}" class="loadimg delimg" alt="">
                              <span class="name">Priority</span>
                              <span class="status">Delivery</span>
                           </li>
                           <li class="col-md-4">
                              <img src="{{static_asset('assets_web/img/cancellation.svg')}}" class="loadimg delimg" alt="">
                              <span class="name">Cancellation</span>
                              <span class="status">Allowed</span>
                           </li>
                        </ul>
                        <div class="details">
                           <p style="display: none;"><i class="fa fa-inr" aria-hidden="true"></i> Cash on Delivery Available</p>
                           <p><i class="fa fa-inr" aria-hidden="true"></i> Online Payment Available</p>
                        </div>
                     </div>
                     <!-- deliverybox -->            
                  </div>
                  <div class="mb-8">
                     <div class="border-bottom border-color-1 mb-3">
                        <h3 class="section-title section-title__sm mb-0 pb-2 font-size-18">Complementary Products</h3>
                     </div>
                     <ul class="list-unstyled">
                        @foreach (filter_products(\App\Models\Product::where('category_id', $detailedProduct->category_id)->where('id', '!=', $detailedProduct->id))->limit(10)->get() as $key => $related_product)
                        <li class="mb-4">
                           <div class="row">
                              <div class="col-auto col-md-4">
                                 <a href="{{ route('product', $related_product->slug) }}" class="d-block width-75">
                                 <img class="img-fluid" src="{{ uploaded_asset($related_product->thumbnail_img) }}" alt="{{ $related_product->getTranslation('name') }}">
                                 </a>
                              </div>
                              <div class="col col-md-8">
                                 <h3 class="text-lh-1dot2 compldy font-size-14 mb-0"><a href="{{ route('product', $related_product->slug) }}">{{ $related_product->getTranslation('name') }}</a></h3>
                              </div>
                           </div>
                        </li>
                        @endforeach
                        
                     </ul>
                  </div>
                  <div class="form_rights_inner p-20 animated fadeIn">
                     <a class="dcompinfo_anchor" href="#1">
                        <div class="dcomp_imag"><img src="{{static_asset('assets_web/img/cement1.jpg')}}" class="dcomp_imgbox " alt="Ebuild Bazaar">
                           <span class="dcomp_thumb_icon ebuild_icon"></span>
                        </div>
                     </a>
                     <div class="dcomp_foll mt-10">
                        <button class="dcomp_follbtn font11 fw600 color414">Follow</button>
                     </div>
                     <a class="forms_wrapper" href="#1">
                        <div class="dcomp_name mt-15 font18 fw600 color414">
                           <h3>Ebuild Bazaar</h3>
                        </div>
                        <div class="dcomp_loct mt-15">
                           <span class="details_locat_icon ebuild_icon"></span>
                           <span class="details_locat_cont font11 fw600 color414">
                            <img src="{{static_asset('assets_web/img/in.jpg')}}" alt="alt" style="    border-radius: 50px;  width: 25px;  height: 25px;">
                              IND
                           </span>
                           <span class="font15 fw400 color414">Noida</span>
                        </div>
                     </a>
                     <div class="dcomp_rati mt-5">
                        <a class="dcomp_rati" href="#12">
                           <span class="dcomp_rtext mr-10 font16 fw600 color363">4.1</span>
                           <span class="dcomp_rstar mr-10 ">
                              <svg width="100%" height="100%" viewBox="0 0 1000 200">
                                 <polygon id="star8371" points="100,10 40,198 190,78 10,78 160,198" fill="#FFE372"></polygon>
                                 <defs>
                                    <clipPath id="stars8371">
                                       <use xlink:href="#star8371"></use>
                                       <use xlink:href="#star8371" x="21%"></use>
                                       <use xlink:href="#star8371" x="41%"></use>
                                       <use xlink:href="#star8371" x="61%"></use>
                                       <use xlink:href="#star8371" x="81%"></use>
                                    </clipPath>
                                 </defs>
                                 <rect width="100%" height="100%" clip-path="url(#stars8371)" style="fill: rgb(215, 215, 215); stroke: red; stroke-width: 1; height: 100%; width: 100%;"></rect>
                                 <rect width="82%" height="100%" clip-path="url(#stars8371)" style="fill: rgb(255, 110, 0); height: 100%;"></rect>
                              </svg>
                           </span>
                           <span class="dcomp_rnumb font15 fw400 color788">129 Ratings</span>
                        </a>
                     </div>
                     <a class="dcompinfo_anchor" href="#1">
                        <div class="dcomp_bagd mt-5">
                           <span class="dcomp_trust_icon ebuild_icon mr-10">
                              <svg xmlns="http://www.w3.org/2000/svg" width="37" height="8.818" viewBox="0 0 37 8.818">
                                 <defs>
                                    <style>
                                       .cls-1{fill:#2192d9;fill-rule:evenodd}.cls-2{fill:#3d71b7}
                                    </style>
                                 </defs>
                                 <g id="verified" transform="translate(-.835 -.175)">
                                    <g id="Artboard-43" transform="translate(.835 .175)">
                                       <g id="Group-2">
                                          <path id="Combined-Shape" d="M4.59 6.179l4.434-6h2.846L5.48 8.993H3.424L.835 3.163h2.589z" class="cls-1" transform="translate(-.835 -.175)"/>
                                          <path id="Combined-Shape-2" d="M13.543 2.923a1.717 1.717 0 0 1 .708.62 2.529 2.529 0 0 1 .351.969 7.838 7.838 0 0 1 .098 1.267v.349h-3.2v.484a3.278 3.278 0 0 0 .041.524 1.666 1.666 0 0 0 .135.451.856.856 0 0 0 .246.315.592.592 0 0 0 .375.118.665.665 0 0 0 .6-.282 2.021 2.021 0 0 0 .258-.856H14.6a2.374 2.374 0 0 1-.585 1.611 2.284 2.284 0 0 1-1.7.552 2.773 2.773 0 0 1-1.37-.282 1.778 1.778 0 0 1-.726-.743 2.845 2.845 0 0 1-.287-1.036c-.028-.308.006-.548 0-.856l2.48-3.428a2.612 2.612 0 0 1 1.131.223zM13.151 5.2q-.012-.349-.047-.614a1.526 1.526 0 0 0-.123-.451.636.636 0 0 0-.246-.282.769.769 0 0 0-.4-.1.706.706 0 0 0-.4.107.778.778 0 0 0-.252.282 1.356 1.356 0 0 0-.135.389 2.272 2.272 0 0 0-.041.428V5.2zm2.388-2.343h1.545v.811h.023a2.226 2.226 0 0 1 .6-.7 1.379 1.379 0 0 1 .855-.265q.07 0 .146.006t.146.017v1.487Q18.723 4.2 18.6 4.2t-.252-.006a1.626 1.626 0 0 0-.421.056 1.142 1.142 0 0 0-.386.186.938.938 0 0 0-.281.338 1.128 1.128 0 0 0-.105.513v3.634h-1.616zM19.5.788h1.615v1.329H19.5zm0 2.073h1.615v6.06H19.5zm3.1 1.059h-.819V2.861h.819v-.687a1.791 1.791 0 0 1 .117-.687 1.087 1.087 0 0 1 .334-.451 1.347 1.347 0 0 1 .533-.242 3.117 3.117 0 0 1 .7-.073q.433 0 .866.034v1.1a.917.917 0 0 0-.164-.011h-.152a.781.781 0 0 0-.48.113.449.449 0 0 0-.14.372v.529h.937V3.92h-.937v5H22.6zM25.782.788H27.4v1.329h-1.618zm0 2.073H27.4v6.06h-1.618zM31.565 5.2q-.012-.349-.047-.614a1.526 1.526 0 0 0-.123-.451.636.636 0 0 0-.246-.282.769.769 0 0 0-.4-.1.706.706 0 0 0-.4.107.778.778 0 0 0-.252.282 1.356 1.356 0 0 0-.135.389 2.272 2.272 0 0 0-.041.428V5.2zm-1.651.924v.484a3.278 3.278 0 0 0 .041.524 1.666 1.666 0 0 0 .135.451.856.856 0 0 0 .246.315.592.592 0 0 0 .375.118.665.665 0 0 0 .6-.282 2.021 2.021 0 0 0 .258-.856h1.452a2.374 2.374 0 0 1-.585 1.611 2.284 2.284 0 0 1-1.7.552 2.773 2.773 0 0 1-1.37-.282 1.778 1.778 0 0 1-.726-.743 2.845 2.845 0 0 1-.287-1.036q-.053-.571-.053-1.145a7.6 7.6 0 0 1 .088-1.172 2.754 2.754 0 0 1 .351-1 1.876 1.876 0 0 1 .755-.7A2.822 2.822 0 0 1 30.8 2.7a2.634 2.634 0 0 1 1.153.22 1.717 1.717 0 0 1 .708.62 2.529 2.529 0 0 1 .351.969 7.837 7.837 0 0 1 .094 1.267v.349zm7.27 2.152h-.023a1.588 1.588 0 0 1-.6.6 1.815 1.815 0 0 1-.825.169 1.612 1.612 0 0 1-1.463-.732 4.687 4.687 0 0 1-.473-2.422 4.786 4.786 0 0 1 .468-2.439 1.6 1.6 0 0 1 1.465-.752 1.571 1.571 0 0 1 .778.18 1.806 1.806 0 0 1 .579.541h.023V.878h1.616v8.043h-1.545zm-1.767-2.385a5.29 5.29 0 0 0 .158 1.493.657.657 0 0 0 .685.5.664.664 0 0 0 .7-.5 5.291 5.291 0 0 0 .158-1.493 5.291 5.291 0 0 0-.162-1.491.664.664 0 0 0-.7-.5.657.657 0 0 0-.685.5 5.29 5.29 0 0 0-.154 1.491z" class="cls-2" data-name="Combined-Shape" transform="translate(-1.729 -.229)"/>
                                       </g>
                                    </g>
                                 </g>
                              </svg>
                           </span>
                           <span class="dcomp_verify_icon ebuild_icon mr-10">
                              <svg xmlns="http://www.w3.org/2000/svg" width="44.521" height="15.772" viewBox="0 0 44.521 15.772">
                                 <defs>
                                    <style>
                                       .cls-1,.cls-2{fill:#face32}.cls-2{stroke:#fff;fill-rule:evenodd}.cls-3{fill:#fff}.cls-4{fill:#4c4a4a}
                                    </style>
                                 </defs>
                                 <g id="trusted" transform="translate(-194.479 -566.484)">
                                    <rect id="Rectangle_7273" width="31.5" height="10" class="cls-1" data-name="Rectangle 7273" rx="1.5" transform="translate(207.5 569.5)"/>
                                    <path id="Path_3849" d="M13.258 1.281v2.057h-2.253V.607L8.592 0 6.179.607v2.731H3.926V1.281l-2.334.71.608 10.751 6.391 1.991 6.391-1.991.609-10.751z" class="cls-2" data-name="Path 3849" transform="translate(193.408 567)"/>
                                    <path id="Path_3853" d="M3.853-7.139H2.339v-5.879H.4v-1.26h5.391v1.26H3.853z" class="cls-3" data-name="Path 3853" transform="translate(198.9 586.139)"/>
                                    <path id="Path_4184" d="M.176-15.4h4.551v1.042H3.062v4.4H1.833v-4.4H.176zm6.192 2.015a1.522 1.522 0 0 1 .568-.591 1.661 1.661 0 0 1 .817-.21v1.128a1.64 1.64 0 0 0-.187-.008 1.236 1.236 0 0 0-.875.3 1.036 1.036 0 0 0-.323.8v2.015H5.17v-4.189h1.2zm6.013-.755v4.185h-1.19v-.739a1.473 1.473 0 0 1-1.4.786 1.443 1.443 0 0 1-1.1-.432 1.634 1.634 0 0 1-.408-1.171v-2.629h1.2v2.287a.878.878 0 0 0 .21.622.748.748 0 0 0 .576.226.86.86 0 0 0 .677-.3 1.143 1.143 0 0 0 .249-.762v-2.073zm3.8 1.229a3.489 3.489 0 0 0-.677-.3 2.025 2.025 0 0 0-.6-.105.687.687 0 0 0-.35.078.254.254 0 0 0-.134.238.289.289 0 0 0 .179.264 3.427 3.427 0 0 0 .583.21 6.155 6.155 0 0 1 .731.261 1.364 1.364 0 0 1 .5.381 1.007 1.007 0 0 1 .21.665 1.127 1.127 0 0 1-.478.969 2.039 2.039 0 0 1-1.225.346 3.225 3.225 0 0 1-.988-.152 2.546 2.546 0 0 1-.825-.432l.389-.809a2.454 2.454 0 0 0 .712.385 2.272 2.272 0 0 0 .743.136.779.779 0 0 0 .385-.082.265.265 0 0 0 .144-.245.31.31 0 0 0-.183-.28 3.056 3.056 0 0 0-.587-.218 5.942 5.942 0 0 1-.71-.252 1.269 1.269 0 0 1-.486-.377 1.02 1.02 0 0 1-.2-.657 1.126 1.126 0 0 1 .467-.965 1.947 1.947 0 0 1 1.182-.342 3.142 3.142 0 0 1 .856.121 2.857 2.857 0 0 1 .778.346zm3.835 2.723a1.958 1.958 0 0 1-.517.214 2.261 2.261 0 0 1-.572.074 1.351 1.351 0 0 1-.949-.335 1.231 1.231 0 0 1-.366-.957v-1.937h-.583v-.825h.583V-15.1H18.8v1.151h1.136v.832H18.8v1.727q0 .482.381.482a1.347 1.347 0 0 0 .583-.156z" class="cls-4" data-name="Path 4184" transform="translate(213.324 586.9)"/>
                                 </g>
                              </svg>
                           </span>
                           <span class="dcomp_yers font11 fw700 color414">41 YRS</span>
                        </div>
                     </a>
                     <hr>
                     <div class="dcomp_btnbox mt-15">
                        <div class="dcomp_text mt-10 mb-5 font15 fw400 color788">For more details on products</div>
                        <button class="dcomp_ebtn mt-10"> 
                        <span class="font15 fw400 color007">Contact Supplier</span></button>
                        <button class="dcomp_fbtn mt-10 font15 fw400 colorFFF">Get Best Price</button>
                     </div>
                  </div>
                 
               </div>
            </div>
         </div>
      </div>
	  
 <!-- Product relative Carousel -->
            <div class="headsections111">
            <div class="container">
			 <div class="service-pros m-0 p-0">
		<div class="head-cnt work-center text-center mb-0">
            <div class="bounceIn animated">
           
               <h4>{{ translate('Related products')}}</h4>
			   <hr class="underlinskd">
               
            </div>
         </div>
         </div>
              
               <div class="owl-carousel owl-theme trending0">
                @foreach (filter_products(\App\Models\Product::where('category_id', $detailedProduct->category_id)->where('id', '!=', $detailedProduct->id))->limit(10)->get() as $key => $related_product)  
				  <div class="item">
                     <div class="product-box">
                        <div class="beachs">{{$related_product->discount}}% Off</div>
                        <img src="{{ uploaded_asset($related_product->thumbnail_img) }}" alt="{{ $related_product->getTranslation('name') }}">
                        <div class="discrptions">
                           <h5>{{ $related_product->getTranslation('name') }} </h5>
                           <h6>{{ home_discounted_base_price($related_product) }}</h6>
                        </div>
                        <div class="discrptions_button">
                           <h5><a href="{{ route('product', $related_product->slug) }}">View Detail</a></h5>
                           <h6><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></h6>
                        </div>
                     </div>
                  </div>
                 @endforeach      
               </div>
            </div> 
			</div>
@include('frontend.partials.youmaylike')
	  
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
			   <div class="col-md-2"><a href="#1"><img src="{{static_asset('assets_web/img/iconon1.png')}}" alt=""> <h3>All Under One roof</h3><p>Ebuildbazaar Stores from others is their pricing.</p></a></div>
			   <div class="col-md-2"><a href="#1"><img src="{{static_asset('assets_web/img/iconon2.png')}}" alt=""><h3>Widest Product Range</h3><p>Ebuildbazaar Stores from others is their pricing.</p></a></div>
			   <div class="col-md-2"><a href="#1"><img src="{{static_asset('assets_web/img/iconon3.png')}}" alt=""><h3>On Time Delivery</h3><p>Ebuildbazaar Stores from others is their pricing.</p></a></div>
			   <div class="col-md-2"><a href="#1"><img src="{{static_asset('assets_web/img/iconon4.png')}}" alt=""><h3>Product Knowledge Support</h3><p>Ebuildbazaar Stores from others is their pricing.</p></a></div>
			   <div class="col-md-2"><a href="#1"><img src="{{static_asset('assets_web/img/iconon5.png')}}" alt=""><h3>Genuine Products</h3><p>Ebuildbazaar Stores from others is their pricing.</p></a></div>
			   <div class="col-md-2"><a href="#1"><img src="{{static_asset('assets_web/img/iconon6.png')}}" alt=""><h3>365 Days Wholesale Rates</h3><p>Ebuildbazaar Stores from others is their pricing.</p></a></div>
			   </div>
			   </div>
		 </div>
		 </section>
@endsection
=======
            </div>
        </div>
        <div id="descriptions1"></div>
    </div>
>>>>>>> 2afb8461186ad908519764769c3954bab0b05aaa


    <div class="bootstrap-accordiana">
        <div class="backtabs-dp_servicespros2">
            <ul class="ulines-dps">
                <li class="ukine ukine1b active4">Description</li>
                <li class="ukine ukine2b">Overview </li>
                <li class="ukine ukine3b">Warranty </li>
            </ul>
            <ul class="ulines-dps-para ">
                <li class="ukine ukine1b active4">
                    <div class="tab-description">
                        <h3>Product Description</h3>
                        <p><?php echo $detailedProduct->getTranslation('description'); ?> </p>
                    </div>
                </li>
                <li class="ukine ukine2b">
                    <div class="tab-description">
                        <h3>Product Overview</h3>
                        <div class="tab-description">
                            {{$detailedProduct->overview}}
                        </div>
                    </div>
                </li>
                <li class="ukine ukine3b">
                    <div class="tab-description">
                        <h3>Warranty Details</h3>
                        <p>
                        <div class="tab-description">
                            <?php=$detailedProduct->overview ?>
                        </div>
                        </p>
                    </div>
                </li>
            </ul>
        </div>
    </div>


</div>
<div class="d-none d-xl-block col-xl-3 col-wd-2gdot5">
    <div class="md-hide">
        @php
        $start_date = date('d-M-Y');
        $deliver_date = date("d-M-Y", strtotime("$start_date +$detailedProduct->est_shipping_days days"));
        @endphp
        <div class="deliverybox">
            <span class="title"><i class="fa fa-map-marker"></i>Delivery by {{$deliver_date}}</span>
            <form>
                <input type="number" name="pincode" value="670002" placeholder="Enter Pincode">
                <a href="javascript:void(0);" class="change">Change</a>
            </form>
            <ul class="row delivery">
                <li class="col-md-4">
                    <img src="{{static_asset('assets_web/img/shipping.svg')}}" class="loadimg delimg" alt="">
                    <span class="name">Priority</span>
                    <span class="status">Delivery</span>
                </li>
                <li class="col-md-4">
                    <img src="{{static_asset('assets_web/img/cancellation.svg')}}" class="loadimg delimg" alt="">
                    <span class="name">Cancellation</span>
                    <span class="status">Allowed</span>
                </li>
            </ul>
            <div class="details">
                <p style="display: none;"><i class="fa fa-inr" aria-hidden="true"></i> Cash on Delivery Available
                </p>
                <p><i class="fa fa-inr" aria-hidden="true"></i> Online Payment Available</p>
            </div>
        </div>
        <!-- deliverybox -->
    </div>
    <div class="mb-8">
        <div class="border-bottom border-color-1 mb-3">
            <h3 class="section-title section-title__sm mb-0 pb-2 font-size-18">Complementary Products</h3>
        </div>
        <ul class="list-unstyled">
            @foreach (filter_products(\App\Models\Product::where('category_id',
            $detailedProduct->category_id)->where('id', '!=', $detailedProduct->id))->limit(10)->get() as $key =>
            $related_product)
            <li class="mb-4">
                <div class="row">
                    <div class="col-auto col-md-4">
                        <a href="{{ route('product', $related_product->slug) }}" class="d-block width-75">
                            <img class="img-fluid" src="{{ uploaded_asset($related_product->thumbnail_img) }}"
                                alt="{{ $related_product->getTranslation('name') }}">
                        </a>
                    </div>
                    <div class="col col-md-8">
                        <h3 class="text-lh-1dot2 compldy font-size-14 mb-0"><a
                                href="{{ route('product', $related_product->slug) }}">{{ $related_product->getTranslation('name') }}</a>
                        </h3>
                    </div>
                </div>
            </li>
            @endforeach

        </ul>
    </div>
    <div class="form_rights_inner p-20 animated fadeIn">
        <a class="dcompinfo_anchor" href="#1">
            <div class="dcomp_imag"><img src="{{static_asset('assets_web/img/cement1.jpg')}}" class="dcomp_imgbox "
                    alt="Ebuild Bazaar">
                <span class="dcomp_thumb_icon ebuild_icon"></span>
            </div>
        </a>
        <div class="dcomp_foll mt-10">
            <button class="dcomp_follbtn font11 fw600 color414">Follow</button>
        </div>
        <a class="forms_wrapper" href="#1">
            <div class="dcomp_name mt-15 font18 fw600 color414">
                <h3>Ebuild Bazaar</h3>
            </div>
            <div class="dcomp_loct mt-15">
                <span class="details_locat_icon ebuild_icon"></span>
                <span class="details_locat_cont font11 fw600 color414">
                    <img src="{{static_asset('assets_web/img/in.jpg')}}" alt="alt"
                        style="    border-radius: 50px;  width: 25px;  height: 25px;">
                    IND
                </span>
                <span class="font15 fw400 color414">Noida</span>
            </div>
        </a>
        <div class="dcomp_rati mt-5">
            <a class="dcomp_rati" href="#12">
                <span class="dcomp_rtext mr-10 font16 fw600 color363">4.1</span>
                <span class="dcomp_rstar mr-10 ">
                    <svg width="100%" height="100%" viewBox="0 0 1000 200">
                        <polygon id="star8371" points="100,10 40,198 190,78 10,78 160,198" fill="#FFE372"></polygon>
                        <defs>
                            <clipPath id="stars8371">
                                <use xlink:href="#star8371"></use>
                                <use xlink:href="#star8371" x="21%"></use>
                                <use xlink:href="#star8371" x="41%"></use>
                                <use xlink:href="#star8371" x="61%"></use>
                                <use xlink:href="#star8371" x="81%"></use>
                            </clipPath>
                        </defs>
                        <rect width="100%" height="100%" clip-path="url(#stars8371)"
                            style="fill: rgb(215, 215, 215); stroke: red; stroke-width: 1; height: 100%; width: 100%;">
                        </rect>
                        <rect width="82%" height="100%" clip-path="url(#stars8371)"
                            style="fill: rgb(255, 110, 0); height: 100%;"></rect>
                    </svg>
                </span>
                <span class="dcomp_rnumb font15 fw400 color788">129 Ratings</span>
            </a>
        </div>
        <a class="dcompinfo_anchor" href="#1">
            <div class="dcomp_bagd mt-5">
                <span class="dcomp_trust_icon ebuild_icon mr-10">
                    <svg xmlns="http://www.w3.org/2000/svg" width="37" height="8.818" viewBox="0 0 37 8.818">
                        <defs>
                            <style>
                            .cls-1 {
                                fill: #2192d9;
                                fill-rule: evenodd
                            }

                            .cls-2 {
                                fill: #3d71b7
                            }
                            </style>
                        </defs>
                        <g id="verified" transform="translate(-.835 -.175)">
                            <g id="Artboard-43" transform="translate(.835 .175)">
                                <g id="Group-2">
                                    <path id="Combined-Shape"
                                        d="M4.59 6.179l4.434-6h2.846L5.48 8.993H3.424L.835 3.163h2.589z" class="cls-1"
                                        transform="translate(-.835 -.175)" />
                                    <path id="Combined-Shape-2"
                                        d="M13.543 2.923a1.717 1.717 0 0 1 .708.62 2.529 2.529 0 0 1 .351.969 7.838 7.838 0 0 1 .098 1.267v.349h-3.2v.484a3.278 3.278 0 0 0 .041.524 1.666 1.666 0 0 0 .135.451.856.856 0 0 0 .246.315.592.592 0 0 0 .375.118.665.665 0 0 0 .6-.282 2.021 2.021 0 0 0 .258-.856H14.6a2.374 2.374 0 0 1-.585 1.611 2.284 2.284 0 0 1-1.7.552 2.773 2.773 0 0 1-1.37-.282 1.778 1.778 0 0 1-.726-.743 2.845 2.845 0 0 1-.287-1.036c-.028-.308.006-.548 0-.856l2.48-3.428a2.612 2.612 0 0 1 1.131.223zM13.151 5.2q-.012-.349-.047-.614a1.526 1.526 0 0 0-.123-.451.636.636 0 0 0-.246-.282.769.769 0 0 0-.4-.1.706.706 0 0 0-.4.107.778.778 0 0 0-.252.282 1.356 1.356 0 0 0-.135.389 2.272 2.272 0 0 0-.041.428V5.2zm2.388-2.343h1.545v.811h.023a2.226 2.226 0 0 1 .6-.7 1.379 1.379 0 0 1 .855-.265q.07 0 .146.006t.146.017v1.487Q18.723 4.2 18.6 4.2t-.252-.006a1.626 1.626 0 0 0-.421.056 1.142 1.142 0 0 0-.386.186.938.938 0 0 0-.281.338 1.128 1.128 0 0 0-.105.513v3.634h-1.616zM19.5.788h1.615v1.329H19.5zm0 2.073h1.615v6.06H19.5zm3.1 1.059h-.819V2.861h.819v-.687a1.791 1.791 0 0 1 .117-.687 1.087 1.087 0 0 1 .334-.451 1.347 1.347 0 0 1 .533-.242 3.117 3.117 0 0 1 .7-.073q.433 0 .866.034v1.1a.917.917 0 0 0-.164-.011h-.152a.781.781 0 0 0-.48.113.449.449 0 0 0-.14.372v.529h.937V3.92h-.937v5H22.6zM25.782.788H27.4v1.329h-1.618zm0 2.073H27.4v6.06h-1.618zM31.565 5.2q-.012-.349-.047-.614a1.526 1.526 0 0 0-.123-.451.636.636 0 0 0-.246-.282.769.769 0 0 0-.4-.1.706.706 0 0 0-.4.107.778.778 0 0 0-.252.282 1.356 1.356 0 0 0-.135.389 2.272 2.272 0 0 0-.041.428V5.2zm-1.651.924v.484a3.278 3.278 0 0 0 .041.524 1.666 1.666 0 0 0 .135.451.856.856 0 0 0 .246.315.592.592 0 0 0 .375.118.665.665 0 0 0 .6-.282 2.021 2.021 0 0 0 .258-.856h1.452a2.374 2.374 0 0 1-.585 1.611 2.284 2.284 0 0 1-1.7.552 2.773 2.773 0 0 1-1.37-.282 1.778 1.778 0 0 1-.726-.743 2.845 2.845 0 0 1-.287-1.036q-.053-.571-.053-1.145a7.6 7.6 0 0 1 .088-1.172 2.754 2.754 0 0 1 .351-1 1.876 1.876 0 0 1 .755-.7A2.822 2.822 0 0 1 30.8 2.7a2.634 2.634 0 0 1 1.153.22 1.717 1.717 0 0 1 .708.62 2.529 2.529 0 0 1 .351.969 7.837 7.837 0 0 1 .094 1.267v.349zm7.27 2.152h-.023a1.588 1.588 0 0 1-.6.6 1.815 1.815 0 0 1-.825.169 1.612 1.612 0 0 1-1.463-.732 4.687 4.687 0 0 1-.473-2.422 4.786 4.786 0 0 1 .468-2.439 1.6 1.6 0 0 1 1.465-.752 1.571 1.571 0 0 1 .778.18 1.806 1.806 0 0 1 .579.541h.023V.878h1.616v8.043h-1.545zm-1.767-2.385a5.29 5.29 0 0 0 .158 1.493.657.657 0 0 0 .685.5.664.664 0 0 0 .7-.5 5.291 5.291 0 0 0 .158-1.493 5.291 5.291 0 0 0-.162-1.491.664.664 0 0 0-.7-.5.657.657 0 0 0-.685.5 5.29 5.29 0 0 0-.154 1.491z"
                                        class="cls-2" data-name="Combined-Shape" transform="translate(-1.729 -.229)" />
                                </g>
                            </g>
                        </g>
                    </svg>
                </span>
                <span class="dcomp_verify_icon ebuild_icon mr-10">
                    <svg xmlns="http://www.w3.org/2000/svg" width="44.521" height="15.772" viewBox="0 0 44.521 15.772">
                        <defs>
                            <style>
                            .cls-1,
                            .cls-2 {
                                fill: #face32
                            }

                            .cls-2 {
                                stroke: #fff;
                                fill-rule: evenodd
                            }

                            .cls-3 {
                                fill: #fff
                            }

                            .cls-4 {
                                fill: #4c4a4a
                            }
                            </style>
                        </defs>
                        <g id="trusted" transform="translate(-194.479 -566.484)">
                            <rect id="Rectangle_7273" width="31.5" height="10" class="cls-1" data-name="Rectangle 7273"
                                rx="1.5" transform="translate(207.5 569.5)" />
                            <path id="Path_3849"
                                d="M13.258 1.281v2.057h-2.253V.607L8.592 0 6.179.607v2.731H3.926V1.281l-2.334.71.608 10.751 6.391 1.991 6.391-1.991.609-10.751z"
                                class="cls-2" data-name="Path 3849" transform="translate(193.408 567)" />
                            <path id="Path_3853" d="M3.853-7.139H2.339v-5.879H.4v-1.26h5.391v1.26H3.853z" class="cls-3"
                                data-name="Path 3853" transform="translate(198.9 586.139)" />
                            <path id="Path_4184"
                                d="M.176-15.4h4.551v1.042H3.062v4.4H1.833v-4.4H.176zm6.192 2.015a1.522 1.522 0 0 1 .568-.591 1.661 1.661 0 0 1 .817-.21v1.128a1.64 1.64 0 0 0-.187-.008 1.236 1.236 0 0 0-.875.3 1.036 1.036 0 0 0-.323.8v2.015H5.17v-4.189h1.2zm6.013-.755v4.185h-1.19v-.739a1.473 1.473 0 0 1-1.4.786 1.443 1.443 0 0 1-1.1-.432 1.634 1.634 0 0 1-.408-1.171v-2.629h1.2v2.287a.878.878 0 0 0 .21.622.748.748 0 0 0 .576.226.86.86 0 0 0 .677-.3 1.143 1.143 0 0 0 .249-.762v-2.073zm3.8 1.229a3.489 3.489 0 0 0-.677-.3 2.025 2.025 0 0 0-.6-.105.687.687 0 0 0-.35.078.254.254 0 0 0-.134.238.289.289 0 0 0 .179.264 3.427 3.427 0 0 0 .583.21 6.155 6.155 0 0 1 .731.261 1.364 1.364 0 0 1 .5.381 1.007 1.007 0 0 1 .21.665 1.127 1.127 0 0 1-.478.969 2.039 2.039 0 0 1-1.225.346 3.225 3.225 0 0 1-.988-.152 2.546 2.546 0 0 1-.825-.432l.389-.809a2.454 2.454 0 0 0 .712.385 2.272 2.272 0 0 0 .743.136.779.779 0 0 0 .385-.082.265.265 0 0 0 .144-.245.31.31 0 0 0-.183-.28 3.056 3.056 0 0 0-.587-.218 5.942 5.942 0 0 1-.71-.252 1.269 1.269 0 0 1-.486-.377 1.02 1.02 0 0 1-.2-.657 1.126 1.126 0 0 1 .467-.965 1.947 1.947 0 0 1 1.182-.342 3.142 3.142 0 0 1 .856.121 2.857 2.857 0 0 1 .778.346zm3.835 2.723a1.958 1.958 0 0 1-.517.214 2.261 2.261 0 0 1-.572.074 1.351 1.351 0 0 1-.949-.335 1.231 1.231 0 0 1-.366-.957v-1.937h-.583v-.825h.583V-15.1H18.8v1.151h1.136v.832H18.8v1.727q0 .482.381.482a1.347 1.347 0 0 0 .583-.156z"
                                class="cls-4" data-name="Path 4184" transform="translate(213.324 586.9)" />
                        </g>
                    </svg>
                </span>
                <span class="dcomp_yers font11 fw700 color414">41 YRS</span>
            </div>
        </a>
        <hr>
        <div class="dcomp_btnbox mt-15">
            <div class="dcomp_text mt-10 mb-5 font15 fw400 color788">For more details on products</div>
            <button class="dcomp_ebtn mt-10">
                <span class="font15 fw400 color007">Contact Supplier</span></button>
            <button class="dcomp_fbtn mt-10 font15 fw400 colorFFF">Get Best Price</button>
        </div>
    </div>

</div>
</div>
</div>
</div>

<!-- Product relative Carousel -->
<div class="headsections111">
    <div class="container">
        <div class="service-pros m-0 p-0">
            <div class="head-cnt work-center text-center mb-0">
                <div class="bounceIn animated">

                    <h4>{{ translate('Related products')}}</h4>
                    <hr class="underlinskd">

                </div>
            </div>
        </div>

        <div class="owl-carousel owl-theme trending0">
            @foreach (filter_products(\App\Models\Product::where('category_id',
            $detailedProduct->category_id)->where('id', '!=', $detailedProduct->id))->limit(10)->get() as $key =>
            $related_product)
            <div class="item">
                <div class="product-box">
                    <div class="beachs">{{$related_product->discount}}% Off</div>
                    <img src="{{ uploaded_asset($related_product->thumbnail_img) }}"
                        alt="{{ $related_product->getTranslation('name') }}">
                    <div class="discrptions">
                        <h5>{{ $related_product->getTranslation('name') }} </h5>
                        <h6>{{ home_discounted_base_price($related_product) }}</h6>
                    </div>
                    <div class="discrptions_button">
                        <h5><a href="{{ route('product', $related_product->slug) }}">View Detail</a></h5>
                        <h6><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></h6>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>
@include('frontend.partials.youmaylike')

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
@endsection