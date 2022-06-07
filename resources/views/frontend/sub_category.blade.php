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
      <section> <img src="{{static_asset('assets_web/img/building-material.png')}}" alt="Image Description" style="width:100%;"></section>
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
    <li class="link-category0">
                           <div class="dropdown-title"></div>
                        </li>
    <li class="link-category link-category1aa">



       <div id="accordion" class="accordion-container">
          <article class="content-entry">
             <h4 class="article-title">
                <a class="dropdown-toggle1 dropdown-toggle-collapse1" href="javascript:;" role="button">
                   Show All Categories<span class="text-gray-25 font-size-12 font-weight-normal"> (9)</span> <i class="fa fa-angle-right" aria-hidden="true" style="    line-height: 35px;"></i>
                </a>
             </h4>
             <div class="accordion-content">
                <div class="link-categoryx link-category1az ">
                   <ul class="list-unstyled dropdown-list">
                     @foreach ($categories as $key => $category)
					         <li><a class="dropdown-item1" href="{{ route('cat', $category->slug) }}">{{  $category->getTranslation('name') }} (20) </a></li>
                     @endforeach

                   </ul>
                </div>
             </div>
          </article>

       </div>
    </li>
	</ul>
                           
                            
                        </div>
                          <aside id="sidebar" class="sidebar-wrap" style="margin-bottom:30px;">
   <div class="property-form-wrap">
      <div class="property-form clearfix">
         <form method="post" action="#">
            <div class="agent-details">
               <div class="d-flex align-items-center">
                  <div class="agent-image"><img class="rounded" src="{{static_asset('assets_web/img/forms.jpg')}}" alt="Brittany Watkins" width="70" height="70"></div>
                  <ul class="agent-information list-unstyled">
                     <li class="agent-name"><i class="fa fa-user-o" aria-hidden="true"></i> Pooja Batra</li>
                     <li class="agent-link"><a href="#1">View Listings</a></li>
                  </ul>
               </div>
            </div>
            <div class="form-group">
               <input class="form-control" name="name" value="" type="text" placeholder="Name">
            </div>
            <!-- form-group -->
            <div class="form-group">
               <input class="form-control" name="mobile" value="" type="text" placeholder="Phone">
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
    
            <button type="button" class="houzez_agent_property_form btn btn-secondary btn-half-width">
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
{{-- @php
    $uri = $request->path();
@endphp --}}
	
						  @foreach ($categories as $key => $category)
                           <div class="item">
                              <div class="fancybox thumb1">
                                 <a class="tablskd {{  request()->routeIs('cat.*') ? 'active' : '' }}" href="{{ route('cat', $category->slug) }}">
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
                     <h4>Top Structural Materials Brands</h4>
                     <hr class="underlinskd">
                  </div>
               </div>
            </div>
            <div class="brandss">
               <div class="row">
                  <div class="col-md-2"><a href="#1"><img src="{{static_asset('assets_web/img/brand2.png')}}" alt=""></a></div>
                  <div class="col-md-2"><a href="#1"><img src="{{static_asset('assets_web/img/brand1.png')}}" alt=""></a></div>
                  <div class="col-md-2"><a href="#1"><img src="{{static_asset('assets_web/img/brand3.png')}}" alt=""></a></div>
                  <div class="col-md-2"><a href="#1"><img src="{{static_asset('assets_web/img/brand6.png')}}" alt=""></a></div>
                  <div class="col-md-2"><a href="#1"><img src="{{static_asset('assets_web/img/brand5.png')}}" alt=""></a></div>
                  <div class="col-md-2"><a href="#1"><img src="{{static_asset('assets_web/img/brand4.png')}}" alt=""></a></div>
                  <div class="col-md-2"><a href="#1"><img src="{{static_asset('assets_web/img/brand10.png')}}" alt=""></a></div>
                  <div class="col-md-2"><a href="#1"><img src="{{static_asset('assets_web/img/brand8.png')}}" alt=""></a></div>
                  <div class="col-md-2"><a href="#1"><img src="{{static_asset('assets_web/img/brand9.png')}}" alt=""></a></div>
                  <div class="col-md-2"><a href="#1"><img src="{{static_asset('assets_web/img/brand7.png')}}" alt=""></a></div>
                  <div class="col-md-2"><a href="#1"><img src="{{static_asset('assets_web/img/brand12.png')}}" alt=""></a></div>
                  <div class="col-md-2"><a href="#1"><img src="{{static_asset('assets_web/img/brand11.png')}}" alt=""></a></div>
                  <div class="col-md-2"><a href="#1"><img src="{{static_asset('assets_web/img/brand13.png')}}" alt=""></a></div>
                  <div class="col-md-2"><a href="#1"><img src="{{static_asset('assets_web/img/brand14.png')}}" alt=""></a></div>
                  <div class="col-md-2"><a href="#1"><img src="{{static_asset('assets_web/img/brand15.png')}}" alt=""></a></div>
                  <div class="col-md-2"><a href="#1"><img src="{{static_asset('assets_web/img/brand16.png')}}" alt=""></a></div>
                  <div class="col-md-2"><a href="#1"><img src="{{static_asset('assets_web/img/brand12.png')}}" alt=""></a></div>
                  <div class="col-md-2"><a href="#1"><img src="{{static_asset('assets_web/img/brand11.png')}}" alt=""></a></div>
               </div>
            </div>
         </div>
      </section>
	   <section class="youmayalso">
	  
    
	   <div class="service-pros23 service-pros animated animate__fadeInUp wow">
         <div class="container">
		 <div class="service-pros" style="padding:0px;margin:0px;">
		<div class="head-cnt work-center text-center">
            <div class="bounceIn animated">
           
               <h4>You may also like</h4>
			   <hr class="underlinskd">
               
            </div>
         </div>
         </div>
		 	 
         
	  <div class="owl-carousel owl-theme trending4">
                                 <div class="item">
                                    <a href="javascript:void(0);">
                                       <div class="trend-theme">
                                          <img src="{{static_asset('assets_web/img/pros1.png')}}" alt="" />
                                       
                                       </div>
									      <h3>Modular kitchen</h3>
                                    </a>
                                 </div>
                                 <div class="item">
                                    <a href="javascript:void(0);">
                                       <div class="trend-theme">
                                          <img src="{{static_asset('assets_web/img/pros2.jpg')}}" alt="" />
                                      
                                       </div>    <h3>Hardware and tools</h3>
                                    </a>
                                 </div>
                                 <div class="item">
                                    <a href="javascript:void(0);">
                                       <div class="trend-theme">
                                          <img src="{{static_asset('assets_web/img/pros3.jpg')}}" alt="" />
                                        
                                       </div>  <h3>Paints and surface care (PSC)</h3>
                                    </a>
                                 </div>
                                 <div class="item">
                                    <a href="javascript:void(0);">
                                       <div class="trend-theme">
                                          <img src="{{static_asset('assets_web/img/pros4.jpg')}}" alt="" />
                                         
                                       </div> <h3>Structural materials (SMT)</h3>
                                    </a>
                                 </div>
                                 <div class="item">
                                    <a href="javascript:void(0);">
                                       <div class="trend-theme">
                                          <img src="{{static_asset('assets_web/img/pros5.jpg')}}" alt="" />
                                  
                                       </div>        <h3>Wood materials (WMT)</h3>
                                    </a>
                                 </div>
                                 <div class="item">
                                    <a href="javascript:void(0);">
                                       <div class="trend-theme">
                                          <img src="{{static_asset('assets_web/img/pros6.jpg')}}" alt="" />
                                  
                                       </div>        <h3>Electrical & lighting (ELT)</h3>
                                    </a>
                                 </div>
                                 <div class="item">
                                    <a href="javascript:void(0);">
                                       <div class="trend-theme">
                                          <img src="{{static_asset('assets_web/img/pros7.jpg')}}" alt="" />
                                  
                                       </div>        <h3>Sanitary ware & bath fittings</h3>
                                    </a>
                                 </div>
                              </div>
        
      </div>
      </div>
      </section>
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