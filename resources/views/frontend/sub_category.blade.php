@extends('frontend.master')

@section('title')Home -  @endsection

@section('description') @endsection


@section('content')
<style>
		 .product-categorys2 .product-box {height: auto;} 
		 .product-box img {padding: 15px 70px; height: auto;}
		 .product-box{padding-bottom:25px;}
		 .product-categorys2 .product-box {box-shadow: 0px 0px 5px 1px #ccc;}
		 </style>
 <!-- <section class="pageTitle "> </section> -->
      <section> 
	  @if($subcategories->page_wise_banner=='')
	  <img src="{{static_asset('assets_web/img/building-material.png')}}" alt="Image Description" style="width:100%;">
		@else
			<img src="{{ uploaded_asset($subcategories->page_wise_banner) }}" alt="Image Description" style="width:100%;">
			@endif
	  </section>
      <!--top banner end -->
      <div class="service-pros animate__fadeInUps product-categorys product-catbsnner">
         <div class="container">
            <div class="row">
               <div class="col-md-12 breadmcrumsize">
                  <nav aria-label="breadcrumb">
                     <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{url('')}}">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">{{$subcategories->name}} </li>
                     </ol>
                  </nav>
               </div>
            </div>
         </div>
         <div class="pt-5 pb-5 elec-tb productcategoryd">
            <div class="container">
               <div class="row">
                  <div class="col-md-3">
                     <div class="d-xl-block col-wd-2gdot5">
					 <div class="mb-8 border border-width-2 border-color-3 borders-radius-6">
								<ul id="sidebarNav" class="list-unstyled mb-0 sidebar-navbar view-all">
     <?php 
  $page = basename($_SERVER['SCRIPT_NAME'],".php");
  ?>
     <!--<li class="link-category0">
                           <div class="dropdown-title"></div>
                        </li>-->
     <li class="link-category link-category1aa">



         <div id="accordion" class="accordion-container">
             <article class="content-entry">
                 <h4 class="article-title">
				 @php
					 $total_category = \App\Models\Category::where('parent_id', '=', '0')->count();
				 @endphp
                     <a class="dropdown-toggle1 dropdown-toggle-collapse1" href="javascript:;" role="button">
                         Show All Categories<span class="text-gray-25 font-size-12 font-weight-normal"> ({{$total_category}})</span> <i
                             class="fa fa-angle-right" aria-hidden="true" style="    line-height: 35px;"></i>
                     </a>
                 </h4>
                 <div class="accordion-content">
                     <div class="link-categoryx link-category1az ">
                         <ul class="list-unstyled dropdown-list">
					@foreach (\App\Models\Category::where('parent_id', '=', '0')->get() as $key => $category)
					         <li><a class="dropdown-item1" href="{{ route('cat', $category->slug) }}">{{  $category->getTranslation('name') }} </a></li>
                     @endforeach

                         </ul>
                     </div>
                 </div>
             </article>

         </div>
     </li>
                        
						 <li class="listing-botoms">
                              <b> {{$subcategories->name}}</b>
                              <ul class="list-unstyled dropdown-list listing_block filter">
								 @foreach ($firstFiveSubcat as $item)
									<li><a class="dropdown-item1" href="{{ route('products.category', $item->slug) }}">{{$item->name}}</a></li>
								 @endforeach
								    
								 @foreach ($exceptFiveSubcat as $item)
									<li class="collapses3"><a class="dropdown-item1" href="{{ route('products.category', $item->slug) }}">{{$item->name}}</a></li>
                                 @endforeach
                                 <li> <a class="link link-collapse small font-size-13 text-gray-27 d-inline-flex mt-2" data-toggle="collapse" href="#collapseBrand" role="button" aria-expanded="false" aria-controls="collapseBrand">
                                    <span class="link__icon text-gray-27 bg-white">
                                    <span class="link__icon-inner">+</span>
                                    </span>
                                    <span class="link-collapse__default3">Show more</span>
                                    <span class="link-collapse__active3">Show less</span>
                                    </a>
                                 </li>
                              </ul>
                           </li>

 </ul>
                     </div>
                         
                          <aside id="sidebar" class="sidebar-wrap" style="margin-bottom:30px;">
   <div class="property-form-wrap">
      <div class="property-form clearfix">
         <form method="post" action="{{route('makeEnquiry')}}" enctype="multipart/form-data">
			@csrf
            <div class="agent-details">
               <div class="d-flex align-items-center">
                  <div class="agent-image"><img class="rounded" src="{{ static_asset('assets/img/avatar-place.png') }}" alt="Brittany Watkins" width="70" height="70"></div>
                  <ul class="agent-information list-unstyled">
                     <li class="agent-name"><i class="fa fa-user-o" aria-hidden="true"></i> Admin</li>
                  </ul>
               </div>
            </div>
            <div class="form-group">
               <input class="form-control" name="name" value="" type="text" placeholder="Name">
            </div>
            <!-- form-group -->
            <div class="form-group">
               <input class="form-control" name="phone" value="" type="text" placeholder="Phone">
            </div>
            <!-- form-group -->
            <div class="form-group">
               <input class="form-control" name="email" value="" type="email" placeholder="Email">
            </div>
            <!-- form-group -->
            <div class="form-group form-group-textarea">
               <textarea class="form-control hz-form-message" name="message" rows="4" placeholder="Message">Hello, I am interested in [Modern Apartment]</textarea>
            </div>
            <!-- form-group -->	
            <div class="form-group">
               <div class="dropdown1 bootstrap-select1 form-control1">
                  <select name="user_type" class="selectpicker form-control" title="Select">
                     <option class="bs-title-option" value="">Selected</option>
                     <option value="buyer">I'm a buyer</option>
                     <option value="tennant">I'm a tennant</option>
                     <option value="agent">I'm an agent</option>
                     <option value="other">Other</option>
                  </select>
               </div>
               <!-- selectpicker -->
            </div>
            <!-- form-group -->
            <div class="form-group">
               <label class="control control--checkbox m-0 hz-terms-of-use">
               <input type="checkbox" name="privacy_policy">By submitting this form I agree to <a target="_blank" href="#1">Terms of Use</a>
               </label>
            </div>
            <!-- form-group -->	
    
            <button type="submit" class="houzez_agent_property_form btn btn-secondary btn-half-width">
				<span class="btn-loader houzez-loader-js"></span>					Send Message					
            </button>
            <a href="tel:999999999" class="btn btn-secondary-outlined btn-half-width">
               <!-- <button type="button" class="btn"> -->
               <span class="hide-on-click">Call</span> 
               <!-- </button> -->
            </a>
            <a target="_blank" href="https://api.whatsapp.com/send, I am interested in [Modern Apartment] " class="btn btn-secondary-outlined btn-full-width mt-10"><i class="houzez-icon icon-messaging-whatsapp mr-1"></i> WhatsApp</a>
         </form>
      </div>
      <!-- property-form -->
   </div>
   <!-- property-form-wrap -->
</aside>
                     </div>
                  </div>
                  <div class="col-md-9">
                     <div class="tab-content">
                          
  
    <div class="owl-carousel owl-theme category-slide">
 
	
						   @foreach ($categories as $key => $category)
                           <div class="item">
                              <div class="fancybox thumb1">
                               
                                 <!---<a class="rana {{ (request()->is('admin/cities')) ? 'active' : 'inactive' }}"> {{ (request()->is('admin/cities')) }} </a>-->
                                 <a class="rana {{ Request::is('cat/'.$category->slug) ? 'active':'' }}"> {{ set_active('cat', $category->slug) }} </a>

                                 <a class="tablskd {{ Request::is('cat/'.$category->slug) ? 'active':'' }}" href="{{ route('cat', $category->slug) }}">
                                    <img data-u="image" src="{{ uploaded_asset($category->icon) }}" alt="{{translate('icon')}}" /> 
                                    <h6>{{  $category->getTranslation('name') }} </h6>
                                    <div class="triangle-down"></div>
                                 </a>
                              </div>
                           </div>
						   
                        @endforeach
                           
                        </div>
                        <div class="brand_product tab-pane active" id="tab-electric1">
                           <div class="row">
                              <div class="col-md-6 col-sm-6 col-12">
                                 <div class="deals">
                                    <h3> {{$subcategories->name}}</h3>
                                 </div>
                              </div>
                              <div class="col-md-6 col-sm-6 col-12">
                              </div>
                           </div>
                           <div class="deals">
                              <hr>
                           </div>
                           <!-- -->
                           <div class="row">
                              @foreach ($subcatlist as $item)
								<div class="col">
									<div class="product_br">
										<a href="{{ route('products.category', $item->slug) }}">
										   <img src="{{ uploaded_asset($item->icon) }}" alt="">
										   <h3>{{$item->name}}</h3>
										</a>
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
      </div>
      <section class="banner-categorys">
         <div class="container" style="position:relative;">
            <img src="{{static_asset('assets_web/img/category-banner.jpg')}}" alt="">
            <div class="banner-content-wrapper">
               <h3 class="entry-title">Are You a reseller or contractor ?</h3>
               <div class="entry-description">
                  <p>Become a business member to get consistent benefits.</p>
               </div>
               <div class="entry-button">
                  <a href="javascript:void(0);" class="btn">Register Now</a>
               </div>
            </div>
         </div>
      </section>
      <section class="banner-brand_product banner-brand_product2 ">
         <div class="container">
            <div class="service-pros" style="padding:0px;margin:0px;">
               <div class="head-cnt work-center text-center">
                  <div class="bounceIn animated">
                     <h4>Top {{$subcategories->name}} Brands</h4>
                     <hr class="underlinskd">
                  </div>
               </div>
            </div>
            <div class="brandss">
				<div class="row">
					@foreach ($catwisebrands as $key)
						<div class="col-md-2"><a href="{{ $key->url }}"><img src="{{ uploaded_asset( $key->brand->logo)}}" alt=""></a></div>
					@endforeach
				</div>
            </div>
         </div>
      </section>
	  
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
	 
	 <script>
		/*
      $(document).ready(function() {
			$(".tablskd").click(function () {
				$(".tablskd").removeClass("active");
				$(".tablskd").addClass("active");        
			});
		});
      */
	 </script>