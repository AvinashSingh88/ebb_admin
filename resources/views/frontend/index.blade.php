@extends('frontend.master')

@section('title')Home - @endsection

@section('description') @endsection


@section('content')
<div class="banner-main">
   <div class="owl-carousel444 owl-carousel owl-theme">
      <div class="item">
         <div class="boxcircle boxcircle54">
            <div class="colamsid">
               <div class="slidebag1"></div>
               <div class="slidebag2"></div>
               <div class="slidebag3"></div>
               <div class="slidebag4">
                  <video autoplay="" muted="muted" loop="" style="width: 490px">
                     <source src="{{static_asset('assets_web/img/home_1080.mp4')}}" type="video/mp4" />
                  </video>
               </div>
               <div class="slidebag5"><img src="{{static_asset('assets_web/img/shape5.png')}}" /></div>
            </div>
         </div>
         <div class="cover">
            <div class="container">
               <div class="header-content">
                  <h1>India's Largest<span> Building Products Platform</span></h1>
                  <h2> <span class="spanls1"> 160+ <b>Brands</b></span>
                     <span class="febslide">30000+ <b>Products Online</b></span>
                     <span class="spanls">12000+ <b>Products In Store</b></span>
                  </h2>

               </div>
            </div>
         </div>
         <img src="{{static_asset('assets_web/img/slider1.jpg')}}" alt="" />
      </div>
      <div class="item">
         <div class="boxcircle boxcircle34">
            <div class="heading-slide1">
               <h5 class="textslides1"><img src="{{static_asset('assets_web/img/sild5.png')}}" /></h5>
               <h5 class="textslides2"><img src="{{static_asset('assets_web/img/sild4.png')}}" /></h5>
               <h5 class="textslides3"><img src="{{static_asset('assets_web/img/sild3.png')}}" /></h5>
               <h5 class="textslides4"><img src="{{static_asset('assets_web/img/sild2.png')}}" /></h5>
               <h5 class="textslides5"><img src="{{static_asset('assets_web/img/sild1.png')}}" /></h5>
            </div>
         </div>
         <div class="cover">
            <div class="container">
               <div class="header-content">
                  <h1>Now Delivering In<span> Gurgaon & Delhi</span></h1>
                  <h2> <span class="spanls1 spanls1a "> <img src="{{static_asset('assets_web/img/light-bulb.png')}}"
                           alt=""> <b>Get Product Knowledge</b></span>
                     <span class="febslide febslidea "><img src="{{static_asset('assets_web/img/guaranteed.png')}}"
                           alt=""> <b>Original Guaranteed</b></span>
                     <span class="spanls spanlsa "><img src="{{static_asset('assets_web/img/price-tag.png')}}" alt="">
                        <b> Wholesale Price</b></span>
                  </h2>

               </div>
            </div>
         </div>
         <img src="{{static_asset('assets_web/img/slider2.jpg')}}" alt="" />
      </div>
      <div class="item">
         <div class="boxcircle boxcircle2">
            <div class="heading-slide1">
               <h5 class="textslide1">ISO <span>9001-2008 Certified</span></h5>
               <h5 class="textslide2">7+ <span>Years Experience</span></h5>
               <h5 class="textslide3">24x7 <span>Support Avilable</span></h5>
               <h5 class="textslide4">
                  40000+ <span>Successful Projects</span>
               </h5>
            </div>
            <img src="{{static_asset('assets_web/img/slider-img2.png')}}" />
         </div>
         <div class="cover">
            <div class="container">
               <div class="header-content">
                  <h1>Modular Kitchens & Wardrobes<span> Making Sense of space & style</span></h1>
                  <h2> <span class="spanls1aa"> Starting <b> <i class="fa-solid fa-indian-rupee-sign"></i> 1.5
                           Lakhs*</b></span>
                     <span class="febslideaa"><i class="fa-solid fa-indian-rupee-sign"></i> 5000 Off*<b>On Kitchen
                           Appliances </b></span>
                  </h2>

               </div>
            </div>
         </div>
         <img src="{{static_asset('assets_web/img/slider3.jpg')}}" alt="" />
      </div>
   </div>
   <div class="stopowl">
      <a class="button secondary play"><i class="fas fa-play"></i></a><a class="button secondary stop"><i
            class="fa fa-pause"></i></a>
   </div>
</div>

<div class="services_sectionssd">

   <!-- Service section start  -->
   <section class="product-csteogry">
      <div class="trend servoce_dops service_sections45 pb-0">
         <div class="container">
            <div class="row">
               <div class="col-md-12 col-sm-12 col-12">
                  <div class="border-bottom1 border-color-111 mt-3 mb-3">
                     <div class="border-botb-3">
                        <a href="javascript:void(0);" class="view-link"> View all <i
                              class="fa-solid fa-chevron-right"></i>
                        </a>
                     </div>
                     <h3 class="section-title section-title__sm mb-0 pb-2 font-size-18"> Services Offered</h3>
                     <div class="deals">
                        <hr>
                     </div>
                  </div>
               </div>

               <div class="col-md-5c">
                  <a href="javascript:void(0);">
                     <div class="trend-theme">
                        <img src="{{static_asset('assets_web/img/ser1a.jpg')}}" alt="" />
                     </div>
                     <h3>End to End Consultants</h3>
                  </a>
               </div>
               <div class="col-md-5c">
                  <a href="javascript:void(0);">
                     <div class="trend-theme">
                        <img src="{{static_asset('assets_web/img/ser2.jpg')}}" alt="" />
                     </div>
                     <h3>Architect</h3>
                  </a>
               </div>
               <div class="col-md-5c">
                  <a href="javascript:void(0);">
                     <div class="trend-theme">
                        <img src="{{static_asset('assets_web/img/ser3.jpg')}}" alt="" />
                     </div>
                     <h3>Contractor</h3>
                  </a>
               </div>
               <div class="col-md-5c">
                  <a href="javascript:void(0);">
                     <div class="trend-theme">
                        <img src="{{static_asset('assets_web/img/ser4.jpg')}}" alt="" />
                     </div>
                     <h3>Interior design</h3>
                  </a>
               </div>
               <div class="col-md-5c">
                  <a href="javascript:void(0);">
                     <div class="trend-theme">
                        <img src="{{static_asset('assets_web/img/ser5.jpg')}}" alt="" />
                     </div>
                     <h3>Vastu</h3>
                  </a>
               </div>
            </div>
         </div>
      </div>
   </section>
   <!-- Service section end  -->

   <!-- Category section start  -->
   @include('frontend.partials.home_categories_section')
   <!-- Category section end  -->
</div>

<div class="sample-secondary">

   <!-- The Best Premium Manufacturers st -->

   <div class="headsections111 dkjfksjjksdfjis seicktioons">
      <div class="container">
         @php
         $primium_offers = \App\Models\FlashDeal::where('type', '=', 'best_premium_section')->where('status',
         1)->where('is_home', 1)->get();
         @endphp

         @if(count($primium_offers) > 0)
         <div class="row">
            <div class="col-md-12 col-sm-12 col-12">
               <div class="border-bottom1 border-color-111 mt-3 mb-3">
                  <div class="border-botb-3">
                     <a href="{{ route('flash-deals') }}" class="view-link">
                        View all
                        <i class="fa-solid fa-chevron-right"></i>
                     </a>
                  </div>
                  <h3 class="section-title section-title__sm mb-0 pb-2 font-size-18">
                     The Best Premium Offer
                  </h3>
                  <div class="deals">
                     <hr>
                  </div>
               </div>
            </div>
         </div>

         <div class="boxoodod">
            <div class="row">
               @foreach($primium_offers as $featured_deal)
               @if($featured_deal != null && strtotime(date('Y-m-d H:i:s')) >= $featured_deal->start_date &&
               strtotime(date('Y-m-d H:i:s')) <= $featured_deal->end_date)
                  <div class="col-md-4">
                     <div class="product-box">
                        <h6>
                           <span>
                              <a href="{{ route('flash-deal-details', $featured_deal->slug) }}">
                                 {{$featured_deal->title}}
                              </a>
                           </span>
                        </h6>

                        <ul class="image-productsll">

                           @foreach ($featured_deal->flash_deal_get_products($featured_deal->id, 3) as $key =>
                           $flash_deal_product)
                           @php
                           $product = \App\Models\Product::find($flash_deal_product->product_id);
                           @endphp
                           @if ($product->published != 0)
                           <li>
                              <img src="{{ uploaded_asset($product->thumbnail_img) }}"
                                 alt="{{  $product->getTranslation('name')  }}">
                              <div class="discrptions">
                                 <h6>{{ home_discounted_base_price($product) }}</h6>
                                 <h5> {{ $product->getTranslation('name') }} </h5>
                              </div>
                           </li>
                           @endif
                           @endforeach

                        </ul>
                     </div>
                  </div>
                  @endif
                  @endforeach
            </div>
         </div>
         @endif

      </div>
   </div>
   <!-- The Best Premium Manufacturers end -->

   <!-- Product relative Carousel -->
   <div class="headsections111 dkjfksjjksdfjis seicktioons secionryuioe">
      <div class="container">
         <div class="row">
            <div class="col-md-12 col-sm-12 col-12">
               <div class="border-bottom1 border-color-111 mt-3 mb-3">
                  <div class="border-botb-3"> <a href="javascript:void(0);" class="view-link">  View all <i class="fa-solid fa-chevron-right"></i> </a> </div>
                  <h3 class="section-title section-title__sm mb-0 pb-2 font-size-18">The best premium manufacturers</h3>
                  <div class="deals">
                     <hr> </div>
               </div>
            </div>
         </div>
         <div class="boxoodod">
            <div class="row">
               <div class="col-md-6">
                  <div class="second-product-box">
                     <div class="secitonkdknvhh">
                        <h6>Customized products </h6>
                        <p>Partner with one of 60,000 experienced manufacturers with design & production</p>
                     </div>
                     <div class="climprosk" style="background-image:url({{static_asset('assets_web/img/bankjkgi.jpg')}});"></div>
                     <div class="nkekoloiond">
                        <div class="product-box">
                           <h6>  <span>Source from Factories</span></h6>
                           <ul class="image-productsll">
                              <li> <img src="{{static_asset('assets_web/img/images1.png')}}" alt=""> </li>
                              <li> <img src="{{static_asset('assets_web/img/images2.png')}}" alt=""> </li>
                              <li> <img src="{{static_asset('assets_web/img/images3.png')}}" alt=""> </li>
                           </ul>
                        </div>
                        <div class="product-box">
                           <h6>  <span>Top-ranking suppliers</span></h6>
                           <ul class="image-productsll">
                              <li> <img src="{{static_asset('assets_web/img/psldid1.png')}}" alt=""> </li>
                              <li> <img src="{{static_asset('assets_web/img/psldid2.png')}}" alt=""> </li>
                              <li> <img src="{{static_asset('assets_web/img/psldid3.png')}}" alt=""> </li>
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-md-6">
                  <div class="second-product-box">
                     <div class="secitonkdknvhh">
                        <h6>Ready-to-ship products</h6>
                        <p>Source from 15 million products that are ready to ship, and leave the facility within 15 days.</p>
                     </div>
                     <div class="climprosk" style="background-image:url({{static_asset('assets_web/img/dkdjksd.jpg')}});    background-position: center center;"></div>
                     <div class="nkekoloiond">
                        <div class="product-box">
                           <h6>  <span>Fast Dispatch</span></h6>
                           <ul class="image-productsll">
                              <li> <img src="{{static_asset('assets_web/img/index0/appliances.png')}}" alt=""> </li>
                              <li> <img src="{{static_asset('assets_web/img/index0/appliancessd.png')}}" alt=""> </li>
                              <li> <img src="{{static_asset('assets_web/img/index0/dfdfsd.png')}}" alt=""> </li>
                           </ul>
                        </div>
                        <div class="product-box">
                           <h6>  <span>Weekly Deals</span></h6>
                           <ul class="image-productsll">
                              <li> <img src="{{static_asset('assets_web/img/index0/kitchen.png')}}" alt=""> </li>
                              <li> <img src="{{static_asset('assets_web/img/index0/furniture.png')}}" alt=""> </li>
                              <li> <img src="{{static_asset('assets_web/img/index0/Doors.png')}}" alt=""> </li>
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>

	@if(count($cat_wise_brands) > 0)
   <div class="headsections111 dfgj66786gggff dkjfksjjksdfjis seicktioons">
      <div class="container">
         <div class="row">
            <div class="col-md-12 col-sm-12 col-12">
               <div class="border-bottom1 border-color-111 mt-3 mb-3">
                  <h3 class="section-title section-title__sm mb-0 pb-2 font-size-18">The best premium Popular Brand</h3>
                  <div class="deals">
                     <hr>
                  </div>
               </div>

               <div class="position-absolutedk">
                  <div class="mt-md-n1ddd div-tab-dps">
                     <ul class="nav nav-pills">
						@php
							$i=0;
						@endphp
                        @foreach ($cat_wise_brands as $item)
						@php
							$i++;
						@endphp
                        <li onclick="showCategoryWiseBrand(this)" id="{{$item->id}}"
                           class="col-tabs-{{$i}} tabs-dps-tab nav-item @if($i=='1') active @endif">
                           <a class="nav-link rounded-pill seldectbrand">{{$item->name}} </a>
                            
                        </li>
						@php
							 $cat_s_id = $item->id;
						@endphp
						
							@endforeach
						
                     </ul>
                  </div>

               </div>
            </div>
         </div>

         <div class="div-tab-dps sections">
            <ul>
				
						@php
							$i=0;
						@endphp
                        @foreach ($cat_wise_brands as $item)
						@php
							$i++;
							$cat_idd = $item->id;
						@endphp
                        <li id="{{$item->id}}"
                           class="col-tabs-{{$i}} tabs-dps-tab nav-item @if($i=='1') active @endif">
                          <div class="owl-carousel owl-theme trending001">
						@foreach(\App\Models\Category_wise_brand::where('category_id',$cat_idd)->get() as $key => $cc)
						<div class="item">
							<div class="product-box">
								<!-- <h6>Brand</h6>-->
								<div class="box-elech"> <img src="{{uploaded_asset($cc->brand->logo)}}" alt=""> </div>
								<div class="pro_img_mens"> <img src="{{uploaded_asset($cc->image)}}" alt=""> </div>
								<div class="discrptions">
									<h5>  {{$cc->title}} </h5>
									<h6>{{$cc->category->name}}</h6> </div>
								<div class="discrptions_button">
									<h5><a href="{{$cc->url}}">View Detail</a></h5> </div>
							</div>
						</div>
						@endforeach
					</div>
                            
                        </li>
					 
                        
                        @endforeach
				
				
				<!--<li id="onloadactivecatbrand" class="col-tabs-1 tabs-dps-tab active">
					<div class="owl-carousel owl-theme trending001">
						@foreach(\App\Models\Category_wise_brand::where('category_id',$cat_s_id)->get() as $key => $cc)
						<div class="item">
							<div class="product-box">
								 
								<div class="box-elech"> <img src="{{uploaded_asset($cc->brand->logo)}}" alt=""> </div>
								<div class="pro_img_mens"> <img src="{{uploaded_asset($cc->image)}}" alt=""> </div>
								<div class="discrptions">
									<h5>  {{$cc->title}} </h5>
									<h6>{{$cc->category->name}}</h6> </div>
								<div class="discrptions_button">
									<h5><a href="{{$cc->url}}">View Detail</a></h5> </div>
							</div>
						</div>
						@endforeach
					</div>
				</li>-->
				
             <!--  <li id="cat-list" class="col-tabs-1 tabs-dps-tab active">
                  <div class="owl-carousel owl-theme trending001 catbrandslistss" >
                      
                     

                  </div>
               </li>-->
            </ul>
         </div>

      </div>
   </div>
   @endif
   <!-- banner 1 section start -->
   @if (get_setting('home_banner1_images') != null)
   <section>
      <div class="mb-5 closindig">
         <div class="container">
            <div class="row">

               @php $banner_1_imags = json_decode(get_setting('home_banner1_images')); @endphp
               @foreach ($banner_1_imags as $key => $value)
               <div class="col-lg-6 mb-4 mb-xl-0">
                  <a href="{{ json_decode(get_setting('home_banner1_links'), true)[$key] }}" class="d-block">
                     <img class="img-fluid" src="{{ uploaded_asset($banner_1_imags[$key]) }}"
                        alt="{{ env('APP_NAME') }} promo">
                  </a>
               </div>
               @endforeach
            </div>
         </div>
      </div>
   </section>
   @endif
   <!-- banner 1 section end -->

   <!-- CONSUMER ELECTRONICS end -->
   <div class="other-categories">
      <div class="container">
         <div class="other-categories-list">
            <div class="row">
               @php
               $category_offers = \App\Models\FlashDeal::where('type', '=', 'category_section')->where('status',
               1)->where('is_home', 1)->take(4)->get();
               @endphp
               @if(count($category_offers) > 0)
               <div class="col-md-4">
                  <div class="category-wrpr">
                     <p>Shop Deals in Product Category | <span>Upto 55% OFF</span></p>
                     <ul class="category-list row">
                        @foreach($category_offers as $deal)
                        @if($deal != null && strtotime(date('Y-m-d H:i:s')) >= $deal->start_date &&
                        strtotime(date('Y-m-d H:i:s')) <= $deal->end_date)
                           <li class="col-6">
                              <a href="{{ route('flash-deal-details', $deal->slug) }}">
                                 <img class="lazy loaded" src="{{ uploaded_asset($deal->banner) }}"
                                    alt="{{$deal->title}}">
                                 <span>{{$deal->title}}</span>
                              </a>
                           </li>
                           @endif
                           @endforeach
                     </ul>

                     <a href="{{ route('flash-deals') }}" class="view-link">
                        View all
                        <svg width="17" height="17" viewBox="0 0 17 17" fill="none" xmlns="http://www.w3.org/2000/svg">
                           <path d="M6.10059 3.8772L11.1006 8.87454L6.10059 13.8719" stroke="#515151" stroke-width="1.5"
                              stroke-linecap="round" stroke-linejoin="round"></path>
                        </svg>
                     </a>

                  </div>
               </div>
               @endif

               @php
               $service_offers = \App\Models\FlashDeal::where('type', '=', 'service_section')->where('status',
               1)->where('is_home', 1)->take(4)->get();
               @endphp
               @if(count($service_offers) > 0)
               <div class="col-md-4">
                  <div class="category-wrpr">
                     <p class="orange-text">Top Deals on Services Offers | <span>Upto 40% OFF</span></p>
                     <ul class="category-list row">
                        @foreach($service_offers as $deal)
                        @if($deal != null && strtotime(date('Y-m-d H:i:s')) >= $deal->start_date &&
                        strtotime(date('Y-m-d H:i:s')) <= $deal->end_date)
                           <li class="col-6">
                              <a href="{{ route('flash-deal-details', $deal->slug) }}">
                                 <img class="lazy loaded" src="{{ uploaded_asset($deal->banner) }}"
                                    alt="{{$deal->title}}">
                                 <span>{{$deal->title}}</span>
                              </a>
                           </li>
                           @endif
                           @endforeach
                     </ul>
                     <a href="{{ route('flash-deals') }}" class="view-link">
                        View all
                        <svg width="17" height="17" viewBox="0 0 17 17" fill="none" xmlns="http://www.w3.org/2000/svg">
                           <path d="M6.10059 3.8772L11.1006 8.87454L6.10059 13.8719" stroke="#515151" stroke-width="1.5"
                              stroke-linecap="round" stroke-linejoin="round"></path>
                        </svg>
                     </a>
                  </div>
               </div>
               @endif

               @php
               $brand_offers = \App\Models\FlashDeal::where('type', '=', 'brand_section')->where('status',
               1)->where('is_home', 1)->take(4)->get();
               @endphp
               @if(count($brand_offers) > 0)
               <div class="col-md-4">
                  <div class="category-wrpr">
                     <p>Best Brand Offers | <span>Upto 35% OFF</span> </p>
                     <ul class="category-list row">
                        @foreach($brand_offers as $deal)
                        @if($deal != null && strtotime(date('Y-m-d H:i:s')) >= $deal->start_date &&
                        strtotime(date('Y-m-d H:i:s')) <= $deal->end_date)
                           <li class="col-6">
                              <a href="{{ route('flash-deal-details', $deal->slug) }}">
                                 <img class="lazy loaded" src="{{ uploaded_asset($deal->banner) }}"
                                    alt="{{$deal->title}}">
                                 <span>{{$deal->title}}</span>
                              </a>
                           </li>
                           @endif
                           @endforeach
                     </ul>
                     <a href="{{ route('flash-deals') }}" class="view-link">
                        View all
                        <svg width="17" height="17" viewBox="0 0 17 17" fill="none" xmlns="http://www.w3.org/2000/svg">
                           <path d="M6.10059 3.8772L11.1006 8.87454L6.10059 13.8719" stroke="#515151" stroke-width="1.5"
                              stroke-linecap="round" stroke-linejoin="round"></path>
                        </svg>
                     </a>
                  </div>
               </div>
               @endif

            </div>
         </div>
      </div>
   </div>
   <!-- VEHICLE PARTS & ACCESSORIES st -->

   <!-- Category With Banner section start  -->
   @include('frontend.partials.home_category_with_banner')
   <!-- Category With Banner section end  -->

   <!-- Product relative Carousel -->
   <div class=" headsections111 weekinliud dkjfksjjksdfjis">
      <div class="container">
         <div class="row">

            @php
            $weekly_offers = \App\Models\FlashDeal::where('type', '=', 'weekly_section')->where('status',
            1)->where('is_home', 1)->first();
            @endphp
            @if($weekly_offers != null)
            <div class="col-md-4 col-sm-4 col-4">

               <div class="border-bottom1 border-color-111 mt-3 mb-3">
                  <a href="{{ route('flash-deal-details', $weekly_offers->slug) }}">
                     <h3 class="section-title section-title__sm mb-0 pb-2 font-size-18">
                        {{$weekly_offers->title}}
                     </h3>
                  </a>
                  <div class="deals">
                     <hr>
                  </div>
               </div>

               <div class="bkdjfoskji">
                  <div class="row">

                     @foreach ($weekly_offers->flash_deal_get_products($weekly_offers->id, 2) as $key =>
                     $flash_deal_product)
                     @php
                     $product = \App\Models\Product::find($flash_deal_product->product_id);
                     @endphp
                     @if ($product->published != 0)
                     <div class="col-md-6">
                        <div class="product-box">
                           <div class="imllskdon">
                              <img src="{{ uploaded_asset($product->thumbnail_img) }}"
                                 alt="{{ $product->getTranslation('name') }}">
                           </div>
                           <div class="discrptions">
                              <h5> {{ $product->getTranslation('name') }} </h5>
                              <h6> {{ home_discounted_base_price($product) }} </h6>
                           </div>
                        </div>
                     </div>
                     @endif
                     @endforeach

                  </div>
               </div>
            </div>
            @endif

            @php
            $live_offers = \App\Models\FlashDeal::where('type', '=', 'live_section')->where('status',
            1)->where('is_home', 1)->first();
            @endphp
            @if($live_offers != null)
            <div class="col-md-4 col-sm-4 col-4">

               <div class="border-bottom1 border-color-111 mt-3 mb-3">
                  <a href="{{ route('flash-deal-details', $live_offers->slug) }}">
                     <h3 class="section-title section-title__sm mb-0 pb-2 font-size-18">
                        {{$live_offers->title}}
                     </h3>
                  </a>
                  <div class="deals">
                     <hr>
                  </div>
               </div>

               <div class="bkdjfoskji">
                  <div class="row">

                     @foreach ($live_offers->flash_deal_get_products($live_offers->id, 2) as $key =>
                     $flash_deal_product)
                     @php
                     $product = \App\Models\Product::find($flash_deal_product->product_id);
                     @endphp
                     @if ($product->published != 0)
                     <div class="col-md-6">
                        <div class="product-box">
                           <div class="imllskdon">
                              <img src="{{ uploaded_asset($product->thumbnail_img) }}"
                                 alt="{{ $product->getTranslation('name') }}">
                           </div>
                           <div class="discrptions">
                              <h5> {{ $product->getTranslation('name') }} </h5>
                              <h6> {{ home_discounted_base_price($product) }} </h6>
                           </div>
                        </div>
                     </div>
                     @endif
                     @endforeach

                  </div>
               </div>
            </div>
            @endif

            @php
            $small_comodity_offers = \App\Models\FlashDeal::where('type', '=',
            'small_comodity_section')->where('status', 1)->where('is_home', 1)->first();
            @endphp
            @if($small_comodity_offers != null)
            <div class="col-md-4 col-sm-4 col-4">

               <div class="border-bottom1 border-color-111 mt-3 mb-3">
                  <a href="{{ route('flash-deal-details', $small_comodity_offers->slug) }}">
                     <h3 class="section-title section-title__sm mb-0 pb-2 font-size-18">
                        {{$small_comodity_offers->title}}
                     </h3>
                  </a>
                  <div class="deals">
                     <hr>
                  </div>
               </div>

               <div class="bkdjfoskji">
                  <div class="row">

                     @foreach ($small_comodity_offers->flash_deal_get_products($small_comodity_offers->id, 2) as $key =>
                     $flash_deal_product)
                     @php
                     $product = \App\Models\Product::find($flash_deal_product->product_id);
                     @endphp
                     @if ($product->published != 0)
                     <div class="col-md-6">
                        <div class="product-box">
                           <div class="imllskdon">
                              <img src="{{ uploaded_asset($product->thumbnail_img) }}"
                                 alt="{{ $product->getTranslation('name') }}">
                           </div>
                           <div class="discrptions">
                              <h5> {{ $product->getTranslation('name') }} </h5>
                              <h6> {{ home_discounted_base_price($product) }} </h6>
                           </div>
                        </div>
                     </div>
                     @endif
                     @endforeach

                  </div>
               </div>
            </div>
            @endif


         </div>


      </div>
   </div>
   <!-- VEHICLE PARTS & ACCESSORIES end -->

   <!-- banner section 2 start-->

   @if (get_setting('home_banner2_images') != null)
   @php $home_banner2_images = json_decode(get_setting('home_banner2_images')); @endphp
   @foreach ($home_banner2_images as $key => $value)
   <div class="bannnner">
      <div class="container">
         <a href="{{ json_decode(get_setting('home_banner2_links'), true)[$key] }}">
            <img src="{{ uploaded_asset($home_banner2_images[$key]) }}" alt="" style="width:100%;">
         </a>
      </div>
   </div>
   @endforeach
   @endif
   <!-- banner section 2 end-->

   <!-- Deals of the day section start -->
   @php
   $flash_deal = \App\Models\FlashDeal::where('status', 1)->where('featured', 1)->first();
   @endphp
   @if($flash_deal != null && strtotime(date('Y-m-d H:i:s')) >= $flash_deal->start_date && strtotime(date('Y-m-d
   H:i:s')) <= $flash_deal->end_date)
      <div class=" headsections111 dealsofday dkjfksjjksdfjis">
         <div class="container">
            <div class="row">
               <div class="col-md-12 col-sm-12 col-12">

                  <div class="border-bottom1 border-color-111 mt-3 mb-3">
                     <div class="border-botb-3">
                        <a href="{{ route('flash-deal-details', $flash_deal->slug) }}" class="view-link">
                           View all
                           <i class="fa-solid fa-chevron-right"></i>
                        </a>
                     </div>
                     <h3 class="section-title section-title__sm mb-0 pb-2 font-size-18"> Deals Of The Day</h3>
                     <div class="deals">
                        <hr>
                     </div>
                  </div>

                  <div class="position-absolutedk">
                     <div class="mt-md-n1ddd div-tab-dpsa">
                        <div class="mt-md-n1 border-tops border-color-1">
                           <div class="flex-horizontal-centersss">
							   
                              <h5 class="font-size-15 mb-0 font-weight-bold text-lh-1 mr-1">
                                 Ends in &nbsp; : &nbsp; 
                              </h5>
                              

                              <p id="demo"></p>


                           </div>
                        </div>
                     </div>
                  </div>

               </div>
            </div>

            <div class="div-tab-dpsa sections">
               <div class="owl-carousel owl-theme trending0001">

                  @foreach ($flash_deal->flash_deal_products->take(20) as $key => $flash_deal_product)
                  @php
                  $product = \App\Models\Product::find($flash_deal_product->product_id);
                  @endphp
                  @if ($product != null && $product->published != 0)
                  <div class="item">
                     <div class="product-box">
                        <div class="imllskdon">
                           <img src="{{ uploaded_asset($product->thumbnail_img) }}"
                              alt="{{  $product->getTranslation('name')  }}">
                        </div>
                        <div class="discrptions">
                           <h5> {{ $product->getTranslation('name') }} </h5>
                           <h6> {{ home_discounted_base_price($product) }} </h6>
                        </div>

                     </div>
                  </div>
                  @endif
                  @endforeach

               </div>
            </div>
         </div>
      </div>
      @endif
      <!-- Deals of the day section end -->

      

      <!-- JUST FOR YOU start -->
      <div class=" headsections111 dkjfksjjksdfjis just-for-you pb-2">
         <div class="container">

            <div class="row">
               <div class="col-md-12 col-sm-12 col-12">
                  <div class="border-bottom1 border-color-111 mt-3 mb-3">
                     <h3 class="section-title section-title__sm mb-0 pb-2 font-size-18">Just For You</h3>
                     <div class="deals">
                        <hr>
                     </div>
                  </div>
               </div>
            </div>

            <div class="owl-carousel owl-theme trending0001">

               @foreach (filter_products(\App\Models\Product::orderBy('num_of_sale', 'desc'))->limit(6)->get() as $key
               => $top_product)
               <div class="item">
                  <div class="product-box">
                     <!-- <div class="beachs">10% Off</div> -->
					 <div class="imllskdon">
                     <img src="{{ uploaded_asset($top_product->thumbnail_img) }}" alt="">
					 </div>
                     <div class="discrptions">
                        <h5 class="text-truncate-2">{{ $top_product->getTranslation('name') }} </h5>
                        <h6>{{ home_discounted_base_price($top_product) }}
                           @if(home_base_price($top_product) != home_discounted_base_price($top_product))
                           <strike> {{ home_base_price($top_product) }}</strike>
                           @endif
                        </h6>
                     </div>
                     <div class="discrptions_button">
                        <h5><a href="{{ route('product', $top_product->slug) }}">View Detail</a></h5>
                     </div>
                  </div>
               </div>
               @endforeach

            </div>

         </div>
      </div>
      <!-- JUST FOR YOU end -->

      <!--Premium Brand Fair Partnerst -->
      @if (get_setting('top10_brands') != null)
      <section class="banner-brand_product banner-brand_product2 brankdisections ">
         <div class="container">
            <div class="row">
               <div class="col-md-12 col-sm-12 col-12">
                  <div class="border-bottom1 border-color-111 mt-3 mb-3">
                     <div class="border-botb-3">
                        <a href="{{ route('brands.all') }}" class="view-link"> View all
                           <i class="fa-solid fa-chevron-right"></i>
                        </a>
                     </div>
                     <h3 class="section-title section-title__sm mb-0 pb-2 font-size-18">Premium Brand fair partners
                     </h3>
                     <div class="deals">
                        <hr>
                     </div>
                  </div>
               </div>
            </div>
            <div class="brandss">
               <div class="row">

                  @php $top10_brands = json_decode(get_setting('top10_brands')); @endphp
                  @foreach ($top10_brands as $key => $value)
                  @php $brand = \App\Models\Brand::find($value); @endphp
                  @if ($brand != null)
                  <div class="col-md-2">
                     <a href="{{ route('products.brand', $brand->slug) }}">
                        <img src="{{ uploaded_asset($brand->logo) }}"
                           alt="{{ $brand->getTranslation('name') }}">
                     </a>
                  </div>
                  @endif
                  @endforeach

               </div>
            </div>
         </div>
      </section>
      @endif
      <!-- Premium Brand Fair Partners end -->

    
</div>
<!-- CHOOSE YOUR SUPPLIERS BY REGIONS st -->
<section class="product-csteogry kdikskon">
   <div class="trend servoce_dops service_sections45 pb-0">
      <div class="container">
         <div class="row">
            <div class="col-md-12 col-sm-12 col-12">
               <div class="border-bottom1 border-color-111 mt-3 mb-3">
                  <div class="border-botb-3">
                     <!-- <a href="javascript:void(0);" class="view-link"> View all <i class="fa-solid fa-chevron-right"></i>
                     </a> -->
                  </div>
                  <h3 class="section-title section-title__sm mb-0 pb-2 font-size-18">Choose your suppliers by regions
                  </h3>
                  <div class="deals">
                     <hr>
                  </div>
               </div>
            </div>
            <div class="owl-carousel owl-theme trending400">
               <div class="item">
                  <a href="javascript:void(0);">
                     <div class="trend-theme">
                        <img src="{{static_asset('assets_web/img/mumbai.png')}}" alt="">
                        <h6>Mumbai</h6>

                     </div>
                  </a>
               </div>
               <div class="item">
                  <a href="javascript:void(0);">
                     <div class="trend-theme">
                        <img src="{{static_asset('assets_web/img/banglore.png')}}" alt="">
                        <h6>Delhi</h6>

                     </div>
                  </a>
               </div>
               <div class="item">
                  <a href="javascript:void(0);">
                     <div class="trend-theme">
                        <img src="{{static_asset('assets_web/img/banglore.png')}}" alt="">
                        <h6>Bengaluru</h6>

                     </div>
                  </a>
               </div>
               <div class="item">
                  <a href="javascript:void(0);">
                     <div class="trend-theme">
                        <img src="{{static_asset('assets_web/img/banglore.png')}}" alt="">
                        <h6>Bengaluru</h6>

                     </div>
                  </a>
               </div>
               <div class="item">
                  <a href="javascript:void(0);">
                     <div class="trend-theme">
                        <img src="{{static_asset('assets_web/img/banglore.png')}}" alt="">
                        <h6>Indore</h6>

                     </div>
                  </a>
               </div>
               <div class="item">
                  <a href="javascript:void(0);">
                     <div class="trend-theme">
                        <img src="{{static_asset('assets_web/img/banglore.png')}}" alt="">
                        <h6>Hyderabad</h6>

                     </div>
                  </a>
               </div>
               <div class="item">
                  <a href="javascript:void(0);">
                     <div class="trend-theme">
                        <img src="{{static_asset('assets_web/img/banglore.png')}}" alt="">
                        <h6>Chennai</h6>

                     </div>
                  </a>
               </div>
            
            </div>
         </div>
      </div>
   </div>
</section>

<!-- CHOOSE YOUR SUPPLIERS BY REGIONS end -->
<section class="latest animated animate__fadeInUp wow">
   <div class="container1">
      <div class="row">
         <div class="col-lg-12 parent-tab">
            <div class="latest-news main-parent">
               <div class="backtabs-dp">
                  <ul class="ulines-dps">
				    <li class="ukine ukine5 active">Our Team</li>
                     <!--<li class="ukine ukine1 ">Testimonials</li>-->
                     <li class="ukine ukine2">Clients</li>
                     <li class="ukine ukine3">News</li>
                     <li class="ukine ukine4">Client review</li>
                   
                     <li class="ukine ukine6">Certification</li>
                  </ul>
                  <ul class="ulines-dps-para">
                   <!--  <li class="ukine ukine1 ">
                        <div>
                           <div class="owl-carousel owl-carousel012 owl-theme slide-latest">
                              <div class="item">
                                 <div class="row" style="width: 95%; margin-right: 3%">
                                    <div class="col-md-4">
                                       <div class="LDSCarouselItem">
                                          <h6>design space</h6>
                                          <h4>Young Vibes</h4>
                                          <p>
                                             We feel blessed that we choose Arrivae whose expert designer make our dream
                                             come true with our newly bought 2 BHK with his out of box design
                                             suggestions.
                                          </p>
                                          <div class="d-flex align-items-center">
                                             <div class="mr-4 profileSection">
                                                <h6 class="mb-0">Suman Gupta</h6>
                                                <p>Pune</p>
                                             </div>
                                             <img alt="customer_image" class="cus_img pb-3"
                                                src="{{static_asset('assets_web/img/testis.png')}}" />
                                          </div>
                                       </div>
                                    </div>
                                    <div class="col-md-8">
                                       <iframe src="https://www.youtube.com/embed/21KjRjtrbJM" frameborder="0"
                                          allowfullscreen="" style="
                                                height: 345px;
                                                width: 100%;
                                                border-radius: 10px;
                                                "></iframe>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="row" style="width: 95%; margin-right: 3%">
                                    <div class="col-md-4">
                                       <div class="LDSCarouselItem">
                                          <h6>design space</h6>
                                          <h4>Young Vibes</h4>
                                          <p>
                                             We feel blessed that we choose Arrivae whose expert designer make our dream
                                             come true with our newly bought 2 BHK with his out of box design
                                             suggestions.
                                          </p>
                                          <div class="d-flex align-items-center">
                                             <div class="mr-4 profileSection">
                                                <h6 class="mb-0">Suman Gupta</h6>
                                                <p>Pune</p>
                                             </div>
                                             <img alt="customer_image" class="cus_img pb-3"
                                                src="{{static_asset('assets_web/img/testis.png')}}" />
                                          </div>
                                       </div>
                                    </div>
                                    <div class="col-md-8">
                                       <iframe src="https://www.youtube.com/embed/21KjRjtrbJM" frameborder="0"
                                          allowfullscreen="" style="
                                                height: 345px;
                                                width: 100%;
                                                border-radius: 10px;
                                                "></iframe>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="row" style="width: 95%; margin-right: 3%">
                                    <div class="col-md-4">
                                       <div class="LDSCarouselItem">
                                          <h6>design space</h6>
                                          <h4>Young Vibes</h4>
                                          <p>
                                             We feel blessed that we choose Arrivae whose expert designer make our dream
                                             come true with our newly bought 2 BHK with his out of box design
                                             suggestions.
                                          </p>
                                          <div class="d-flex align-items-center">
                                             <div class="mr-4 profileSection">
                                                <h6 class="mb-0">Suman Gupta</h6>
                                                <p>Pune</p>
                                             </div>
                                             <img alt="customer_image" class="cus_img pb-3"
                                                src="{{static_asset('assets_web/img/testis.png')}}" />
                                          </div>
                                       </div>
                                    </div>
                                    <div class="col-md-8">
                                       <iframe src="https://www.youtube.com/embed/21KjRjtrbJM" frameborder="0"
                                          allowfullscreen="" style="
                                                height: 345px;
                                                width: 100%;
                                                border-radius: 10px;
                                                "></iframe>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </li>-->
                     <li class="ukine ukine2">
                        <div class="slikdir">
                           <div class="slick marquee">
                              <div class="slick-slide">
                                 <div class="inner">
                                    <img src="{{static_asset('assets_web/img/clientas1.png')}}" alt="Placeholder"
                                       width="100%" height="78" />
                                 </div>
                              </div>
                              <div class="slick-slide">
                                 <div class="inner">
                                    <img src="{{static_asset('assets_web/img/clientas2.png')}}" alt="Placeholder"
                                       width="100%" height="78" />
                                 </div>
                              </div>
                              <div class="slick-slide">
                                 <div class="inner">
                                    <img src="{{static_asset('assets_web/img/clientas3.png')}}" alt="Placeholder"
                                       width="100%" height="78" />
                                 </div>
                              </div>
                              <div class="slick-slide">
                                 <div class="inner">
                                    <img src="{{static_asset('assets_web/img/clientas4.png')}}" alt="Placeholder"
                                       width="100%" height="78" />
                                 </div>
                              </div>
                              <div class="slick-slide">
                                 <div class="inner">
                                    <img src="{{static_asset('assets_web/img/clientas5.png')}}" alt="Placeholder"
                                       width="100%" height="78" />
                                 </div>
                              </div>
                              <div class="slick-slide">
                                 <div class="inner">
                                    <img src="{{static_asset('assets_web/img/clientas6.png')}}" alt="Placeholder"
                                       width="100%" height="78" />
                                 </div>
                              </div>
                           </div>
                           <div class="slick marquee2">
                              <div class="slick-slide2">
                                 <div class="inner">
                                    <img src="{{static_asset('assets_web/img/clientas1.png')}}" alt="Placeholder"
                                       width="100%" height="78" />
                                 </div>
                              </div>
                              <div class="slick-slide2">
                                 <div class="inner">
                                    <img src="{{static_asset('assets_web/img/clientas2.png')}}" alt="Placeholder"
                                       width="100%" height="78" />
                                 </div>
                              </div>
                              <div class="slick-slide2">
                                 <div class="inner">
                                    <img src="{{static_asset('assets_web/img/clientas3.png')}}" alt="Placeholder"
                                       width="100%" height="78" />
                                 </div>
                              </div>
                              <div class="slick-slide2">
                                 <div class="inner">
                                    <img src="{{static_asset('assets_web/img/clientas4.png')}}" alt="Placeholder"
                                       width="100%" height="78" />
                                 </div>
                              </div>
                              <div class="slick-slide2">
                                 <div class="inner">
                                    <img src="{{static_asset('assets_web/img/clientas5.png')}}" alt="Placeholder"
                                       width="100%" height="78" />
                                 </div>
                              </div>
                              <div class="slick-slide2">
                                 <div class="inner">
                                    <img src="{{static_asset('assets_web/img/clientas6.png')}}" alt="Placeholder"
                                       width="100%" height="78" />
                                 </div>
                              </div>
                           </div>
                           <div class="slick marquee">
                              <div class="slick-slide">
                                 <div class="inner">
                                    <img src="{{static_asset('assets_web/img/clientas1.png')}}" alt="Placeholder"
                                       width="100%" height="78" />
                                 </div>
                              </div>
                              <div class="slick-slide">
                                 <div class="inner">
                                    <img src="{{static_asset('assets_web/img/clientas2.png')}}" alt="Placeholder"
                                       width="100%" height="78" />
                                 </div>
                              </div>
                              <div class="slick-slide">
                                 <div class="inner">
                                    <img src="{{static_asset('assets_web/img/clientas3.png')}}" alt="Placeholder"
                                       width="100%" height="78" />
                                 </div>
                              </div>
                              <div class="slick-slide">
                                 <div class="inner">
                                    <img src="{{static_asset('assets_web/img/clientas4.png')}}" alt="Placeholder"
                                       width="100%" height="78" />
                                 </div>
                              </div>
                              <div class="slick-slide">
                                 <div class="inner">
                                    <img src="{{static_asset('assets_web/img/clientas5.png')}}" alt="Placeholder"
                                       width="100%" height="78" />
                                 </div>
                              </div>
                              <div class="slick-slide">
                                 <div class="inner">
                                    <img src="{{static_asset('assets_web/img/clientas6.png')}}" alt="Placeholder"
                                       width="100%" height="78" />
                                 </div>
                              </div>
                           </div>
                           <div class="slick marquee2">
                              <div class="slick-slide2">
                                 <div class="inner">
                                    <img src="{{static_asset('assets_web/img/clientas1.png')}}" alt="Placeholder"
                                       width="100%" height="78" />
                                 </div>
                              </div>
                              <div class="slick-slide2">
                                 <div class="inner">
                                    <img src="{{static_asset('assets_web/img/clientas2.png')}}" alt="Placeholder"
                                       width="100%" height="78" />
                                 </div>
                              </div>
                              <div class="slick-slide2">
                                 <div class="inner">
                                    <img src="{{static_asset('assets_web/img/clientas3.png')}}" alt="Placeholder"
                                       width="100%" height="78" />
                                 </div>
                              </div>
                              <div class="slick-slide2">
                                 <div class="inner">
                                    <img src="{{static_asset('assets_web/img/clientas4.png')}}" alt="Placeholder"
                                       width="100%" height="78" />
                                 </div>
                              </div>
                              <div class="slick-slide2">
                                 <div class="inner">
                                    <img src="{{static_asset('assets_web/img/clientas5.png')}}" alt="Placeholder"
                                       width="100%" height="78" />
                                 </div>
                              </div>
                              <div class="slick-slide2">
                                 <div class="inner">
                                    <img src="{{static_asset('assets_web/img/clientas6.png')}}" alt="Placeholder"
                                       width="100%" height="78" />
                                 </div>
                              </div>
                           </div>
                        </div>
                     </li>
                     <li class="ukine ukine3">
                        <div class="tab-news">
                           <div class="owl-carousel owl-carouselnews owl-theme">
                              <div class="item">
                                 <div class="news-tab-card">
                                    <div class="news-tab-img">
                                       <img src="{{static_asset('assets_web/img/news1.jpg')}}" alt="" />
                                    </div>
                                    <div class="news-tab-content">
                                       <h2>News1</h2>
                                       <p>
                                          Ever wondered why children and animals avoid sitting or sleeping at certain
                                          places, or why anthills and beehives come up at certain locations? Or why, out
                                          of six machines...
                                       </p>
                                       <a href="javascript:void(0);">Read More</a>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="news-tab-card">
                                    <div class="news-tab-img">
                                       <img src="{{static_asset('assets_web/img/news2.jpg')}}" alt="" />
                                    </div>
                                    <div class="news-tab-content">
                                       <h2>News2</h2>
                                       <p>
                                          Ever wondered why children and animals avoid sitting or sleeping at certain
                                          places, or why anthills and beehives come up at certain locations? Or why, out
                                          of six machines...
                                       </p>
                                       <a href="javascript:void(0);">Read More</a>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="news-tab-card">
                                    <div class="news-tab-img">
                                       <img src="{{static_asset('assets_web/img/news3.jpg')}}" alt="" />
                                    </div>
                                    <div class="news-tab-content">
                                       <h2>News3</h2>
                                       <p>
                                          Ever wondered why children and animals avoid sitting or sleeping at certain
                                          places, or why anthills and beehives come up at certain locations? Or why, out
                                          of six machines...
                                       </p>
                                       <a href="javascript:void(0);">Read More</a>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </li>
                     <li class="ukine ukine4">
                        <div class="owl-carousel owl-carousel012 owl-theme slide-latest">
                           <div class="item">
                              <div class="row" style="width: 95%; margin-right: 3%">
                                 <div class="col-md-4">
                                    <div class="LDSCarouselItem LDSCarouselItem33">
                                       <img src="{{static_asset('assets_web/img/client1.jpg')}}" />
                                       <div class="d-flex align-items-center">
                                          <div class="mr-4 profileSection">
                                             <h6 class="mb-0">Services Name</h6>
                                             <p>Name</p>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                                 <div class="col-md-8">
                                    <div class="walkin-col">
                                       <div class="walkIn_right_sec">
                                          <div class="reviciview2">
                                             <div class="reviciview_reviciviewstar_rating__21e5o undefined">
                                                <div class="reviciview_googleLogo__3B3_2">
                                                   <img src="{{static_asset('assets_web/img/googles.jpg')}}"
                                                      style="width: 60px; margin-right: 10px" />
                                                </div>
                                                <div class="reviciview_reviciviewSection__3eYUw">
                                                   <span class="reviciview_reviewRating__1uda5">4.5/5 </span><span
                                                      class="reviciview_reviewsCount__20JnR">(1000+ Reviews)</span>
                                                   <div class="reviciview_star-rating__3fSCB">
                                                      <span class="reviciview_star-rating__fill__1TiOD"
                                                         style="width: 90%"></span>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                          <h3>16 Cities | 22 Experience Centers</h3>
                                          <p>
                                             Bengaluru | Chennai | Hyderabad | Coimbatore | Mysore
                                          </p>
                                          <p>
                                             Delhi - Gurugram - Noida | Mumbai - Thane | Mangalore
                                          </p>
                                          <p>
                                             Pune | Kolkata | Visakhapatnam | Lucknow | Indore | Surat
                                          </p>
                                          <div>
                                             <div class="bestBrand_awardSec">
                                                <img class="brand_img" alt="Best Brand"
                                                   src="{{static_asset('assets_web/img/bestBrand_award1.jpg')}}"
                                                   style="opacity: 1" />
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="item">
                              <div class="row" style="width: 95%; margin-right: 3%">
                                 <div class="col-md-4">
                                    <div class="LDSCarouselItem LDSCarouselItem33">
                                       <img src="{{static_asset('assets_web/img/clien2.jpg')}}" />
                                       <div class="d-flex align-items-center">
                                          <div class="mr-4 profileSection">
                                             <h6 class="mb-0">Services Name</h6>
                                             <p>Name</p>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                                 <div class="col-md-8">
                                    <div class="walkin-col">
                                       <div class="walkIn_right_sec">
                                          <div class="reviciview2">
                                             <div class="reviciview_reviciviewstar_rating__21e5o undefined">
                                                <div class="reviciview_googleLogo__3B3_2">
                                                   <img src="{{static_asset('assets_web/img/googles.jpg')}}"
                                                      style="width: 60px; margin-right: 10px" />
                                                </div>
                                                <div class="reviciview_reviciviewSection__3eYUw">
                                                   <span class="reviciview_reviewRating__1uda5">4.5/5 </span><span
                                                      class="reviciview_reviewsCount__20JnR">(1000+ Reviews)</span>
                                                   <div class="reviciview_star-rating__3fSCB">
                                                      <span class="reviciview_star-rating__fill__1TiOD"
                                                         style="width: 90%"></span>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                          <h3>16 Cities | 22 Experience Centers</h3>
                                          <p>
                                             Bengaluru | Chennai | Hyderabad | Coimbatore | Mysore
                                          </p>
                                          <p>
                                             Delhi - Gurugram - Noida | Mumbai - Thane | Mangalore
                                          </p>
                                          <p>
                                             Pune | Kolkata | Visakhapatnam | Lucknow | Indore | Surat
                                          </p>
                                          <div>
                                             <div class="bestBrand_awardSec">
                                                <img class="brand_img" alt="Best Brand"
                                                   src="{{static_asset('assets_web/img/bestBrand_award1.jpg')}}"
                                                   style="opacity: 1" />
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="item">
                              <div class="row" style="width: 95%; margin-right: 3%">
                                 <div class="col-md-4">
                                    <div class="LDSCarouselItem LDSCarouselItem33">
                                       <img src="{{static_asset('assets_web/img/clien3.jpg')}}" />
                                       <div class="d-flex align-items-center">
                                          <div class="mr-4 profileSection">
                                             <h6 class="mb-0">Services Name</h6>
                                             <p>Name</p>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                                 <div class="col-md-8">
                                    <div class="walkin-col">
                                       <div class="walkIn_right_sec">
                                          <div class="reviciview2">
                                             <div class="reviciview_reviciviewstar_rating__21e5o undefined">
                                                <div class="reviciview_googleLogo__3B3_2">
                                                   <img src="{{static_asset('assets_web/img/googles.jpg')}}"
                                                      style="width: 60px; margin-right: 10px" />
                                                </div>
                                                <div class="reviciview_reviciviewSection__3eYUw">
                                                   <span class="reviciview_reviewRating__1uda5">4.5/5 </span><span
                                                      class="reviciview_reviewsCount__20JnR">(1000+ Reviews)</span>
                                                   <div class="reviciview_star-rating__3fSCB">
                                                      <span class="reviciview_star-rating__fill__1TiOD"
                                                         style="width: 90%"></span>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                          <h3>16 Cities | 22 Experience Centers</h3>
                                          <p>
                                             Bengaluru | Chennai | Hyderabad | Coimbatore | Mysore
                                          </p>
                                          <p>
                                             Delhi - Gurugram - Noida | Mumbai - Thane | Mangalore
                                          </p>
                                          <p>
                                             Pune | Kolkata | Visakhapatnam | Lucknow | Indore | Surat
                                          </p>
                                          <div>
                                             <div class="bestBrand_awardSec">
                                                <img class="brand_img" alt="Best Brand"
                                                   src="{{static_asset('assets_web/img/bestBrand_award1.jpg')}}"
                                                   style="opacity: 1" />
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </li>
                     <li class="ukine ukine5 active">
                        <div class="mangementTeam">
                           <div class="owl-carouselteam owl-carousel owl-theme">
                              <div class="item">
                                 <div class="team-item">
                                    <div class="thumb">
                                       <img src="{{static_asset('assets_web/img/management-team4.png')}}" alt="image" />
                                    </div>
                                    <div class="content text-center">
                                       <h4 class="name">Suman Sahani</h4>
                                       <span class="designation">Business Developer</span>
                                       <ul class="socials-links">
                                          <li>
                                             <a href="javascript:void(0);"><i class="fab fa-facebook-f"></i></a>
                                          </li>
                                          <li>
                                             <a href="javascript:void(0);"><i class="fab fa-twitter"></i></a>
                                          </li>
                                          <li>
                                             <a href="javascript:void(0);"><i class="fab fa-google"></i></a>
                                          </li>
                                          <li>
                                             <a href="javascript:void(0);"><i class="fab fa-instagram"></i></a>
                                          </li>
                                       </ul>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="team-item">
                                    <div class="thumb">
                                       <img src="{{static_asset('assets_web/img/management-team4.png')}}" alt="image" />
                                    </div>
                                    <div class="content text-center">
                                       <h4 class="name">Suman Sahani</h4>
                                       <span class="designation">Business Developer</span>
                                       <ul class="socials-links">
                                          <li>
                                             <a href="javascript:void(0);"><i class="fab fa-facebook-f"></i></a>
                                          </li>
                                          <li>
                                             <a href="javascript:void(0);"><i class="fab fa-twitter"></i></a>
                                          </li>
                                          <li>
                                             <a href="javascript:void(0);"><i class="fab fa-google"></i></a>
                                          </li>
                                          <li>
                                             <a href="javascript:void(0);"><i class="fab fa-instagram"></i></a>
                                          </li>
                                       </ul>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="team-item">
                                    <div class="thumb">
                                       <img src="{{static_asset('assets_web/img/management-team4.png')}}" alt="image" />
                                    </div>
                                    <div class="content text-center">
                                       <h4 class="name">Suman Sahani</h4>
                                       <span class="designation">Business Developer</span>
                                       <ul class="socials-links">
                                          <li>
                                             <a href="javascript:void(0);"><i class="fab fa-facebook-f"></i></a>
                                          </li>
                                          <li>
                                             <a href="javascript:void(0);"><i class="fab fa-twitter"></i></a>
                                          </li>
                                          <li>
                                             <a href="javascript:void(0);"><i class="fab fa-google"></i></a>
                                          </li>
                                          <li>
                                             <a href="javascript:void(0);"><i class="fab fa-instagram"></i></a>
                                          </li>
                                       </ul>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="team-item">
                                    <div class="thumb">
                                       <img src="{{static_asset('assets_web/img/management-team4.png')}}" alt="image" />
                                    </div>
                                    <div class="content text-center">
                                       <h4 class="name">Suman Sahani</h4>
                                       <span class="designation">Business Developer</span>
                                       <ul class="socials-links">
                                          <li>
                                             <a href="javascript:void(0);"><i class="fab fa-facebook-f"></i></a>
                                          </li>
                                          <li>
                                             <a href="javascript:void(0);"><i class="fab fa-twitter"></i></a>
                                          </li>
                                          <li>
                                             <a href="javascript:void(0);"><i class="fab fa-google"></i></a>
                                          </li>
                                          <li>
                                             <a href="javascript:void(0);"><i class="fab fa-instagram"></i></a>
                                          </li>
                                       </ul>
                                    </div>
                                 </div>
                              </div>
                              <div class="item">
                                 <div class="team-item">
                                    <div class="thumb">
                                       <img src="{{static_asset('assets_web/img/management-team4.png')}}" alt="image" />
                                    </div>
                                    <div class="content text-center">
                                       <h4 class="name">Suman Sahani</h4>
                                       <span class="designation">Business Developer</span>
                                       <ul class="socials-links">
                                          <li>
                                             <a href="javascript:void(0);"><i class="fab fa-facebook-f"></i></a>
                                          </li>
                                          <li>
                                             <a href="javascript:void(0);"><i class="fab fa-twitter"></i></a>
                                          </li>
                                          <li>
                                             <a href="javascript:void(0);"><i class="fab fa-google"></i></a>
                                          </li>
                                          <li>
                                             <a href="javascript:void(0);"><i class="fab fa-instagram"></i></a>
                                          </li>
                                       </ul>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </li>
                     <li class="ukine ukine6">
                        <div class="head-form332">
                           <div class="head-form text-center">
                              <h2>Our Certification</h2>
                           </div>
                           <div class="owl-carousel owl-carousel41 owl-theme form-slide">
                              <div class="item">
                                 <img class="owl-lazy" data-src="{{static_asset('assets_web/img/according1.png')}}"
                                    alt="Clutch Award" src="{{static_asset('assets_web/img/according1.png')}}"
                                    style="opacity: 1" />
                              </div>
                              <div class="item">
                                 <img class="owl-lazy" data-src="{{static_asset('assets_web/img/according1.png')}}"
                                    alt="Clutch Award" src="{{static_asset('assets_web/img/according1.png')}}"
                                    style="opacity: 1" />
                              </div>
                              <div class="item">
                                 <img class="owl-lazy" data-src="{{static_asset('assets_web/img/according1.png')}}"
                                    alt="Clutch Award" src="{{static_asset('assets_web/img/according1.png')}}"
                                    style="opacity: 1" />
                              </div>
                              <div class="item">
                                 <img class="owl-lazy" data-src="{{static_asset('assets_web/img/according1.png')}}"
                                    alt="Clutch Award" src="{{static_asset('assets_web/img/according1.png')}}"
                                    style="opacity: 1" />
                              </div>
                              <div class="item">
                                 <img class="owl-lazy" data-src="{{static_asset('assets_web/img/according1.png')}}"
                                    alt="Clutch Award" src="{{static_asset('assets_web/img/according1.png')}}"
                                    style="opacity: 1" />
                              </div>
                              <div class="item">
                                 <img class="owl-lazy" data-src="{{static_asset('assets_web/img/according1.png')}}"
                                    alt="Clutch Award" src="{{static_asset('assets_web/img/according1.png')}}"
                                    style="opacity: 1" />
                              </div>
                           </div>
                        </div>
                     </li>
                  </ul>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>
<!-- testimonials section end here -->
<div id="sticky-block-1" class="sticky-block-wrapper animated animate__fadeInUp wow">
   <section class="form-above_footer">
      <div class="container">
         <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
               <div class="contact-form">
                  <div class="backtabs-dp">
                     <ul class="ulines-dps">
                        <li class="ukine ukine8 active2">Product</li>
                        <li class="ukine ukine9">Services</li>
                     </ul>
                     <ul class="ulines-dps-para">
                        <li class="ukine ukine8 active2">
                           <form autocomplete="off" class="bottom-form" method="post" action="{{route('productRequestQuote')}}">
                              @csrf
                              <div class="bounceIn animated">
                                 <h4>Request A Free Quote</h4>
                                 <p>
                                    Get a free quote from our specialists on your
                                    project.
                                 </p>
                              </div>
                              <div class="row">
                                 <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="main-parenttttttT">
                                       <div class="input-group" style="margin-bottom: 10px">
                                          <span class="input-group-addon">
                                             <i class="fa-solid fa-user"></i>
                                          </span>
                                          <input required type="text" name="name" class="form-control empty"
                                             placeholder="Full Name" />
											  
                                       </div>
											<span class="form-text text-danger my-3">@error('name'){{$message}}@enderror</span>
                                       <div class="input-group w-440" style="margin-bottom: 10px; float: left">
                                          <span class="input-group-addon">
                                             <i class="fa-solid fa-envelope"></i>
                                          </span>
                                          <input type="email" required name="email" class="form-control empty"
                                             placeholder="Email Address" />
                                       </div>
									   <span class="form-text text-danger my-3">@error('email'){{$message}}@enderror</span>
                                       <div class="input-group w-441" style="margin-bottom: 10px; float: left">
                                          <span class="input-group-addon">
                                             <i class="fa-solid fa-phone-flip"></i>
                                          </span>
                                          <input type="tel" required name="phone" class="form-control empty"
                                             placeholder="Phone Number" maxlength="10" min="10" />
                                       </div>
									    <span class="form-text text-danger my-3">@error('phone'){{$message}}@enderror</span>
                                       <div class="input-group w-441" style="margin-bottom: 10px; float: left">
                                          <span class="input-group-addon">
                                             <i class="fa-solid fa-inr"></i>
                                          </span>
                                          <input required type="tel" name="price_range" class="form-control empty"
                                             placeholder="Price Range" />
                                       </div>
									   <span class="form-text text-danger my-3">@error('price_range'){{$message}}@enderror</span>
                                       {{-- <div class="input-group " style="margin-bottom: 10px">
                                          <input id="multi" class="multi-range" type="range" />
                                          <h3 class="left-range1">500</h3>
                                          <h3 class="left-range2">2000</h3>
                                       </div> --}}
                                       <div class="input-group" style="margin-bottom: 5px">
                                          <span class="input-group-addon text-aAaA" style="height: 120px">
                                             <i class="fa-solid fa-pen-to-square"></i>
                                          </span>
                                          <textarea name="message" style="height: 120px;" class="form-control textareas"
                                             placeholder="Your Message *"> 
                                               </textarea>
                                       </div>
									   <span class="form-text text-danger my-3">@error('message'){{$message}}@enderror</span>
									   <input required type="hidden" name="type" value="1">
                                       <div class="ginput_container ginput_container_checkbox">
                                          <ul class="gfield_checkbox" id="input_18_14">
                                             @foreach (\App\Models\Category::where('parent_id','=','0')->where('type','1')->get() as $key => $category)
                                             <li class="gchoice_18_14_1">
                                                <input name="category" required id="pro_cat{{$category->id}}" type="radio" value="{{$category->name}}"
                                                   id="choice_18_14_1" />
                                                <label for="pro_cat{{$category->id}}" id="label_18_14_1">{{$category->name}}</label>
                                             </li>
                                          @endforeach
                                          </ul>
                                       </div>
                                       <!-- checkbox -->
                                       <!-- 4 -->
                                    </div>
                                 </div>
                                 <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                       <div class="btn-box">
                                          <button type="submit" class="addto">
                                             Submit
                                             <svg class="position-relative ml-2" width="13px" height="10px"
                                                viewBox="0 0 13 10">
                                                <path d="M1,5 L11,5"></path>
                                                <polyline points="8 1 12 5 8 9"></polyline>
                                             </svg>
                                          </button>
                                          <!--  <input  value="submit_project" type="hidden"  name="submit_project" /> -->
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </form>
                        </li>
                        
                        <li class="ukine ukine9">
                           <form autocomplete="off" class="bottom-form" method="post" action="{{route('productRequestQuote')}}">
                              @csrf
                              <div class="bounceIn animated">
                                 <h4>Request A Free Quote</h4>
                                 <p>
                                    Get a free quote from our specialists on your
                                    project.
                                 </p>
                              </div>
                              <div class="row">
                                 <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="main-parenttttttT">
                                       <div class="input-group" style="margin-bottom: 10px">
                                          <span class="input-group-addon">
                                             <i class="fa-solid fa-user"></i>
                                          </span>
                                          <input type="text" name="name" class="form-control"
                                             placeholder="Full Name" />
											 <span class="form-text text-danger">@error('name')
												{{$message}}
												@enderror
											</span>
                                       </div>
                                       <div class="input-group w-440" style="margin-bottom: 10px; float: left">
                                          <span class="input-group-addon">
                                             <i class="fa-solid fa-envelope"></i>
                                          </span>
                                          <input type="email" required name="email" class="form-control empty"
                                             placeholder="Email Address" />
                                       </div>
									   <span class="form-text text-danger my-3">@error('email'){{$message}}@enderror</span>
                                       <div class="input-group w-441" style="margin-bottom: 10px; float: left">
                                          <span class="input-group-addon">
                                             <i class="fa-solid fa-phone-flip"></i>
                                          </span>
                                          <input type="tel" required name="phone" class="form-control empty"
                                             placeholder="Phone Number" maxlength="10" minlength="10" />
                                       </div>
									   <span class="form-text text-danger my-3">@error('phone'){{$message}}@enderror</span>
                                       <div class="input-group w-441" style="margin-bottom: 10px; float: left">
                                          <span class="input-group-addon">
                                             <i class="fa-solid fa-inr"></i>
                                          </span>
                                          <input type="tel" required name="price_range" class="form-control empty"
                                             placeholder="Price Range" />
                                       </div>
									   <span class="form-text text-danger my-3">@error('price_range'){{$message}}@enderror</span>
                                       {{-- <div class="input-group " style="margin-bottom: 10px">
                                          <input id="multi" class="multi-range" type="range" />
                                          <h3 class="left-range1">500</h3>
                                          <h3 class="left-range2">2000</h3>
                                       </div> --}}
                                       <div class="input-group" style="margin-bottom: 5px">
                                          <span class="input-group-addon text-aAaA" style="height: 120px">
                                             <i class="fa-solid fa-pen-to-square"></i>
                                          </span>
                                          <textarea required name="message" style="height: 120px;" class="form-control textareas"
                                             placeholder="Your Message *"> 
                                               </textarea>
                                       </div>
									   <span class="form-text text-danger my-3">@error('message'){{$message}}@enderror</span>
									   <input required type="hidden" name="type" value="2">
                                       <div class="ginput_container ginput_container_checkbox">
                                          <ul class="gfield_checkbox" id="input_18_14">
                                             @foreach (\App\Models\Category::where('parent_id','=','0')->where('type','2')->get() as $key => $category)
                                             <li class="gchoice_18_14_1">
                                                <input name="category" required id="pro_cat{{$category->id}}" type="radio" value="{{$category->name}}"
                                                   id="choice_18_14_1" />
                                                <label for="pro_cat{{$category->id}}" id="label_18_14_1">{{$category->name}}</label>
                                             </li>
                                          @endforeach
                                          </ul>
                                       </div>
                                       <!-- checkbox -->
                                       <!-- 4 -->
                                    </div>
                                 </div>
                                 <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                       <div class="btn-box">
                                          <button type="submit" class="addto">
                                             Submit
                                             <svg class="position-relative ml-2" width="13px" height="10px"
                                                viewBox="0 0 13 10">
                                                <path d="M1,5 L11,5"></path>
                                                <polyline points="8 1 12 5 8 9"></polyline>
                                             </svg>
                                          </button>
                                          <!--  <input  value="submit_project" type="hidden"  name="submit_project" /> -->
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </form>
                        </li>
                     </ul>
                  </div>
               </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
               <!-- cards section -->
               <div class="content-section justify mt-0 oveR">
                  <div class="achieve-box">
                     <div class="head-cnt work-center text-left" style="margin-bottom:30px;">
                        <div class="bounceIn animated">
                           <!--<div class="our-latest-border" style="    margin: 0px;"></div>-->
                           <h5>Blog</h5>
                           <h4> Latest Blogs</h4>
                           <p>
                              Construction Materials & Services Your Online Purchase Manager Saves Time, Energy and Cost
                              Source & order construction materials digitally on one platform
                           </p>
                        </div>
                     </div>
                     <div class=" dnone768 ">
                        <div class=" row ">
                           @foreach ($allblogs as $item)
                           <div class="col-md-6 col-sm-12">
                              <div class="card">
                                 <img class="card-img-top" alt="{{$item->title}}"
                                    src="{{uploaded_asset($item->banner)}}" />
                                 <div class="card-block">
                                    <h4 class="card-title text-truncate">{{$item->title}}</h4>
                                    <div class="card-text">
                                       {{$item->short_description}}
                                    </div>
                                    <a class="ankblog" href="{{url('blog/'.$item->slug)}}">Read More</a>
                                 </div>
                              </div>
                           </div>
                           @endforeach
                           
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>
</div>

@endsection

@section('script')
<script>
// Set the date we're counting down to
var flash_date = "{{date('M d, Y H:i:s', $flash_deal->end_date)}}";


var countDownDate = new Date(flash_date).getTime();

// Update the count down every 1 second
var x = setInterval(function() {

  // Get today's date and time
  var now = new Date().getTime();
    
  // Find the distance between now and the count down date
  var distance = countDownDate - now;
    
  // Time calculations for days, hours, minutes and seconds
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);
    
  // Output the result in an element with id="demo"
  document.getElementById("demo").innerHTML = days + " : " + hours + " : "
  + minutes + " : " + seconds;
    
  // If the count down is over, write some text 
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("demo").innerHTML = "EXPIRED";
  }
}, 1000);
</script>
@endsection