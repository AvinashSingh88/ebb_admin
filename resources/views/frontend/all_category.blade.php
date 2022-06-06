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
 <section class="pageTitle">
         <div class="container">    </div>
      </section>
      <!--top banner end -->
      <div class="service-pros animated animate__fadeInUp wow product-categorys product-categorys2 ulines-dps-para ">
	  <div class="container">
	  <div class="row">
		 <div class="col-md-12 breadmcrumsize">
		   <nav aria-label="breadcrumb" style="margin-bottom:20px;">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{{url('')}}">Home</a></li> 
                  <li class="breadcrumb-item active" aria-current="page"> Category     </li>
               </ol>
            </nav>
		 </div>
		 </div>
		 </div>
         <div class="container">
		    <div class="row">
              <div class="col-md-3">
                     <div class="d-xl-block col-wd-2gdot5">
                        <div class="mb-8 border border-width-2 border-color-3 borders-radius-6">
                           
                           <li class="listing-botoms">
                              <b> Structural Materials</b>
                              <ul class="list-unstyled dropdown-list listing_block filter">
                                 <li><a class="dropdown-item1" href="product.php">Cement (20)</a></li>
								    <li><a class="dropdown-item1" href="javascript:void(0);">Steel & TMT (18)</a></li>
									 <li><a class="dropdown-item1" href="javascript:void(0);">Bricks & Blocks (16)</a></li>
                                 <li><a class="dropdown-item1" href="javascript:void(0);">Sand (20)</a></li>
                                 <li><a class="dropdown-item1" href="javascript:void(0);">Stone & Gravel (20)</a></li>
								 
                                 <li class="collapses3"><a class="dropdown-item1" href="javascript:void(0);">Aggregate (20)</a></li>
                                 <li class="collapses3"><a class="dropdown-item1" href="javascript:void(0);">Wood (20)</a></li>
                                 <li class="collapses3"><a class="dropdown-item1" href="javascript:void(0);">Roofing Solution (20)</a></li>
								   <li class="collapses3"><a class="dropdown-item1" href="javascript:void(0);">Glass (17) </a></li>
								     <li class="collapses3"><a class="dropdown-item1" href="javascript:void(0);">Plaster Board (14)</a></li> 
                                 <li class="collapses3"><a class="dropdown-item1" href="javascript:void(0);">False Ceiling Painting (15)</a></li>
                                 <li class="collapses3"><a class="dropdown-item1" href="javascript:void(0);">Insulation (24)</a></li>
                                 <li class="collapses3"><a class="dropdown-item1" href="javascript:void(0);">Timber & Board (20)</a></li> 
                                 <li class="collapses3"><a class="dropdown-item1" href="javascript:void(0);">Door (20)</a></li> 
                                 <li class="collapses3"><a class="dropdown-item1" href="javascript:void(0);">Construction Chemical (20)</a></li> 
                                 <li class="collapses3"><a class="dropdown-item1" href="javascript:void(0);">Alluminium (20)</a></li> 
                                 <li class="collapses3"><a class="dropdown-item1" href="javascript:void(0);">Window (20)</a></li> 
                                 <li class="collapses3"><a class="dropdown-item1" href="javascript:void(0);">Garden & Lawn (20)</a></li> 
                                 <li class="collapses3"><a class="dropdown-item1" href="javascript:void(0);">Construction tools & machinery (20)</a></li> 
                                 <li class="collapses3"><a class="dropdown-item1" href="javascript:void(0);">Safety (20)</a></li> 
								 
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
                       
                     </div>
                  </div>
               <div class="col-xl-9 col-wd-9gdot5">
                    <div class="row">
                     @foreach ($categories as $key => $category)
					 <div class="col-md-3">
                        <div class="product-box">
                              <div class="beachs">10% Off</div>
                           <img src="{{ uploaded_asset($category->icon) }}" alt="{{translate('icon')}}">
                          <a href="{{ route('products.category', $category->slug) }}"> <div class="discrptions">
                              <h5>{{  $category->getTranslation('name') }} </h5>
                           </div></a>
                          
                        </div>
                     </div>
                     @endforeach
                
                  </div>
               </div>
            </div> 
           
         </div>
      </div>
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
	 