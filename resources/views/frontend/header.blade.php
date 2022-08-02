<div class="header">
   <div class="topHeader">
      <div class="container">
         <div class="row">
            <div class="col-sm-2 col-12">
               <ul class="s_m">
                  <li>
                     <a href="https://www.facebook.com" target="_blank"><i class="fab fa-facebook-square"></i
                        ></a>
                  </li>
                  <li>
                     <a href="https://www.instagram.com" target="_blank"><i class="fab fa-instagram"></i
                        ></a>
                  </li>
                  <li>
                     <a href="https://twitter.com" target="_blank"><i class="fab fa-twitter"></i
                        ></a>
                  </li>
                  <li>
                     <a href="https://www.linkedin.com" target="_blank"><i class="fab fa-linkedin"></i
                        ></a>
                  </li>
                  <li>
                     <a href="https://web.skype.com/" target="_blank"><i class="fab fa-skype"></i
                        ></a>
                  </li>
               </ul>
            </div>
            <div class="col-sm-10 col-12">
               <div class="t_c right-text">
                  <ul>
                     <li>
                        <a href="{{url('/advertise')}}"><i class="fas fa-volume-up"></i> Advertise</a>
                     </li>
                     <li>
                        <a href="javascript:void(0);"><i class="fa-solid fa-download animated infinite slideInDown"></i>Brochure</a>
                     </li>
                     <li>
                        <a href="{{url('/enquiry')}}"><i class="far fa-question-circle"></i> Enquiry</a>
                     </li>
                     <li>
                        <a href="{{url('/become-seller')}}"><i class="fas fa-archway"></i> Become a Seller</a>
                     </li>
                     <li>
                        <a href="{{url('/help-center')}}"><i class="far fa-question-circle"></i> Help Center</a>
                     </li>
                     <li class="cartonlog">
                        <a href="{{url('/appointment')}}">Appointment</a>
                     </li>
                     <li>
                        <a href="bulk-order2.php"><i class="fas fa-truck"></i> Bulk Order</a>
                     </li>
                     <li>
                        <a href="{{url('track-your-order')}}"><i class="fas fa fa-cube"></i> Track Order </a>
                     </li>
                  </ul>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<nav>
<header class="site-header">
   <div class="pt-2 pb-2 search-bar">
      <div class="container">
         <div class="row">
            <div class="col-md-2 col-sm-2 col-xs-12">
               <div class="logo-img">
                  <div class="nav-trigger" id="rotatezero">
                     <span></span>
                     <span></span>
                     <span></span>
                  </div>
                  <a href="{{url('')}}"><img src="{{ asset('public/assets/img/logo.png')}}" alt="" /></a>
               </div>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12">
               <div class="search-box">
                  <div class="select-box custom-select">
                     <select class="form-control">
                        <option value="mumbai">Delhi</option>
                        <option value="Ahmedabad">Faridabad</option>
                        <option value="Delhi">Ghaziabad</option>
                        <option value="Chennai">Gurgaon</option>
                        <option value="mumbai">Noida</option>
                        <option value="mumbai">Delhi</option>
                        <option value="Ahmedabad">Faridabad</option>
                        <option value="Delhi">Ghaziabad</option>
                        <option value="Chennai">Gurgaon</option>
                        <option value="mumbai">Noida</option>
                     </select>
                  </div>
                  <div class="select-search">
                     <input type="search" class="form-control" placeholder="What are you looking for.."  id="searchid" />
                     
                  </div>
                  <div class="seach-btn">
                     <button class="btn"><i class="fas fa-search"></i></button>
                  </div>
               </div>
            </div>
            <div class="col-md-4 col-xs-12">
               <div class="right-menu">
                  <ul>
                    
					 <li id="cart_items" class="flot-right getquote">
                         @include('frontend.partials.cart')
                     </li>
                     @if (Auth::check() && (Auth::user()->user_type!=='admin')) 
                     <li class="flot-right getquote getquote-signs">
                        <a href="javascript:void(0);" id="SignInlogin" class="SignInlogin"><i class="far fa-user"></i>
                        {{ Auth::user()->name }}</a>
                        <div class="tab-more tab-more2 bg-dark active">
                           <ul class="login_signiN">
                              <li>
								
                                 <a href="{{url('profile')}}"
                                    class="d-flex align-items-center justify-content-around p-0 m-0">
                                 <i class="fa fa-user-circle"></i> {{ Auth::user()->name }} <i
                                    class="fa fa-angle-right ms-2"></i>
                                 </a>
								 
                              </li>
                              <li><a href="{{url('purchase_history')}}"><i
                                 class="bg_icon-img"></i>My Orders</a></li>
                              <li><a href="{{url('product_return')}}"><i
                                 class="bg_icon-img"></i>My Returns</a></li>
                              
                              <li><a href="{{url('help_support')}}"><i
                                 class="bg_icon-img"></i>Help &amp; Support</a></li>
                              <li><a href="{{url('logout')}}"><i class="bg_icon-img"></i>Sign
                                 Out</a>
                              </li>
                           </ul>
                        </div>
                     </li>
                     @else
                     <li class="flot-right getquote getquote-signs">
                        <a href="#1" id="SignInlogin" class="SignInlogin"><i class="far fa-user"></i>
                        Sign In / Login</a>
                        <div class="tab-more tab-more2 bg-dark active">
							<ul class="login_signiN">
			                                                <li>
			                                                    <a href="{{url('users/login')}}"
			                                                        class="d-flex align-items-center justify-content-around p-0 m-0">
			                                                        <i class="fa fa-user-circle"></i> Login <i
			                                                            class="fa fa-angle-right ms-2"></i>
			                                                    </a>
			                                                </li>
			                                                <li><a href="{{url('purchase_history')}}"><i
			                                                            class="bg_icon-img"></i>My Orders</a></li>
			                                                <li><a href="{{url('product_return')}}"><i
			                                                            class="bg_icon-img"></i>My Returns</a></li>
			                                                
			                                                <li><a href="{{url('profile')}}"><i
			                                                            class="bg_icon-img"></i>My Profile</a></li>
			                                               <li><a href="{{url('help_support')}}"><i
			                                                            class="bg_icon-img"></i>Help &amp; Support</a></li>
			                                                
			                                            </ul>
														
                        </div>
                     </li>
                     @endif
                     <li class="border-zero flot-right">
                        <a href="javascript:void(0);" id="imgrotate"><img
                           src="{{static_asset('assets_web/img/services-arrow.png')}}" alt="" /></a>
                           
                           <div class="right-sidemenu">
    <div class="top-button">
       <button class="btns">Organize Site Visit</button>
    </div>
     <div class="request-button">
       <button class="btn">
       <i class="fas fa-phone-volume"></i> Request Call Back
       </button>
       <hr />
	<form method="post" autocomplete="off" action="" class="">
       <div class="req-form">
          <h3>Pre-Register here for Best Offers</h3>
          <span style="color:red;font-size:16px;" id="error_message"></span>
          <div class="form-group">
             <input type="text" required id="names" name="name" placeholder="Name" class="form-control" />
          </div>
          <div class="form-group">
             <input type="number" required name="mobile" placeholder="Mobile No" class="form-control" />
          </div>
          <div class="form-group">
             <input type="text" id="emails" required placeholder="E-Mail address" class="form-control" name="email"/>
          </div>
       </div>
       <button class="btn btn2 request-call-back">
       <i class="fas fa-phone-volume"></i> Pre-Register Now
       </button>
	</form>
       <div class="req-form callus">
          <h3>CALL US : 1800 419 3805</h3>
       </div>
       <div class="book-visit">
          <h3>
             Book A Site Visit <i class="fas fa-car hvr-icon-pulse-grow"></i>
          </h3>
       </div>
       <div class="social_media">
          <ul>
             <li>
                <a href="javascript:void(0);"><i class="fab fa-facebook-square"></i></a>
             </li>
             <li>
                <a href="javascript:void(0);"><i class="fab fa-instagram"></i></a>
             </li>
             <li>
                <a href="javascript:void(0);"><i class="fab fa-twitter"></i></a>
             </li>
             <li>
                <a href="javascript:void(0);"><i class="fab fa-linkedin"></i></a>
             </li>
             <li>
                <a href="javascript:void(0);"><i class="fab fa-skype"></i></a>
             </li>
          </ul>
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
   <!-- seach box end here -->
   <div class="header-1-top">
      <div class="container1">
         <div class="middelHeader">
            <div class="container">
               <nav>
                  <div class="row">
                    <div class="col-md-12 col-xs-12">
                        <div class="collapseNav top-headers">
                           <ul class="first-ul">
                              <li class="shop">
                                 <a href="javascript:void(0);" id="shopid">Shop By Department <i class="fa fa-angle-down"></i></a>
                                 
                                 
                                 <div class="top_ul">
                                    
                                    
                                    
                                    <ul class="departmentdks">
                                      <li class="buildings1a...1">
                                             <a href="{{url('categories')}}">
                                             <span class="img000"><img src="{{static_asset('assets_web/img/icona1.png')}}" alt="" /></span>
                                             <span class="spand-line"><b>All Products</b></span>
                                             </a>
                                          </li>
                                          
                                         
                                       @foreach (\App\Models\Category::where('parent_id','0')->where('type','1')->orderBy('order_level', 'ASC')->get() as $key => $category)
                              
                                       <li class="{{$category->slug}}">
                                          <a href="{{ route('cat', $category->slug) }}" class="firstnav">
                                          <span class="img000"><img src="{{ uploaded_asset($category->icon) }}" alt="{{  $category->getTranslation('name') }}"></span>
                                          <span class="spand-line">
                                          {{  $category->getTranslation('name') }}
                                           <i class="fa fa-angle-right" aria-hidden="true"></i>
                                           </span>
                                          </a>
                                       </li>
                                       
                                       
                                       <script> 
                                          $(".top_ul .{{$category->slug}}").hover(function() {
                                             $('.top_ul .{{$category->slug}}').css("display", "block");
                                          }, function() {
                                             $('.top_ul .top-megamenu.web-mega').css("display", "none");
                                          });
										  
										  								 
										  
                                       </script>
                                       @endforeach                                       
                                      
                                    </ul>
                                    
									         <div class="dpeartmens">
                                    
                                    
                                    @foreach (\App\Models\Category::where('parent_id','0')->where('type','1')->orderBy('order_level', 'ASC')->get() as $key => $category)
                                    <div class="top-megamenu web-mega {{$category->slug}}">
                                          <!-- mega menu content start here -->
                                          <div class="megamenu megamenu2" style="background: center top rgb(255, 255, 255); display:block ; opacity:1;">
                                             <div class="row posrel">
                                                <div class="col-md-7 megamenuoverflow">
                                                   <ul class="megamenusubs">
                                                      @php
                                                         $i=0;
                                                      @endphp
                                                      @foreach (\App\Utility\CategoryUtility::get_immediate_children_ids($category->id) as $key => $first_level_id)
                                                         <li>
                                                            @php
                                                               $i++;
                                                               $subcatSlug = \App\Models\Category::find($first_level_id)->slug;
                                                            @endphp
                                                            <a href="{{ route('products.category', $subcatSlug) }}" class="secondnav">
                                                               {{ \App\Models\Category::find($first_level_id)->getTranslation('name') }} <i class="fa fa-long-arrow-right" aria-hidden="true"></i>
                                                            </a>
                                                              
                                                            <ul class="megamenusubs231">
                                                            <span class="morein">
                                                     More In Cement
                                                     <!--{{ \App\Models\Category::find($first_level_id)->getTranslation('name') }} -->
                                                            </span>
                                                               @foreach (\App\Utility\CategoryUtility::get_immediate_children_ids($first_level_id) as $key => $second_level_id)                                                                   
                                                                  <li>     
                                                                     @php
                                                                     $cat_icon =  \App\Models\Category::find($second_level_id);
                                                                     $childcatSlug = \App\Models\Category::find($second_level_id)->slug;
                                                                     @endphp
                                                                     <a href="{{ route('products.category', $childcatSlug) }}">
                                                                       
                                                                        {{ \App\Models\Category::find($second_level_id)->getTranslation('name') }}
                                                                     </a>
                                                                  </li>
                                                               @endforeach
                                                               <!--<li>
			                                                          <a href="{{ route('products.category', $subcatSlug) }}" class="buildsing">View More <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
			                                                                                                </li>-->

                                                            </ul>
                                                         </li>
                                                         @php
                                                            if($i==5)
                                                            {
                                                               $i=0;
                                                            }
                                                         @endphp
                                                      @endforeach
                                                   </ul>
                                                </div>

                                                <div class="col-md-5">
                                                   <div class="divcalimmega">
                                                      <h3>Top Brands</h3>
                                                      <ul class="brand-menus">
                                                               @foreach (\App\Models\Category_wise_brand::where('category_id', $category->id)->get() as $key)
                                                               <li><img src="{{ uploaded_asset( $key->brand->logo)}}" alt=""></li>
                                                               @endforeach  
                                                            </ul>
                                                      
                                                      <a class="hire-team-btn" href="javascript:void(0);" target="_self">View More</a>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                          <!-- mega menu content end here -->
										  
                                       </div>
                                       
                                       @endforeach
                                       
                                       
                                      
                                    </div>
									
                                 </div>
                                 
                                 @foreach (\App\Models\Category::where('parent_id','0')->where('type','1')->orderBy('order_level', 'ASC')->get() as $key => $category)
                                 <script> 
								 
                                 $(".top_ul .{{$category->slug}}").hover(function() {
									$('.top_ul .{{$category->slug}}').css("display", "block");
								}, function() {
									$('.top_ul .top-megamenu.web-mega').css("display", "none");
								});
								</script>
                                 
                                @endforeach  
                                 
                                 
                                 
                                 
                              </li>
                              <li class="home">
                                 <a href="{{url('/')}}"><i class="fas fa-home"></i></a>
                              </li>
                              <li class="menulocationds menulocationds1 com">
                                 <a href="#s">Company</a>
                                 <div class="megamenu megamenu1" style="
                                    background-image: url({{static_asset('assets_web/img/megamenusbanner.png')}};);
                                    background-size: cover;
                                    background: #fff;
                                    background-position: top center;
                                    ">
                                    <div class="submenu submenu4">
                                       <div class="submenu4_top">
                                          <div class="submenu4_top1" style="background-image: url({{static_asset('assets_web/img/web-icon15.png')}});background-size: 20px; background-position: top left;">
                                             <a href="{{url('/about-us')}}">
                                                <h3>About Us</h3>
                                                <p>
                                                   ACSIUS, an ISO 9001:2015 certified Web Design Company.
                                                </p>
                                             </a>
                                          </div>
                                          <div class="submenu4_top2" style="  background-image: url({{static_asset('assets_web/img/web-icon16.png')}});background-size: 20px; background-position: top left;">
                                             <a href="javascript:void(0);">
                                                <h3>Blog</h3>
                                                <p>
                                                   A perspective to talk about new ideas, future technology and its impact on enterprises.
                                                </p>
                                             </a>
                                          </div>
                                          <div class="submenu4_top3" style=" background-image: url({{static_asset('assets_web/img/web-icon17.png')}}); background-size: 20px; background-position: top left; ">
                                             <a href="testimonials">
                                                <h3>Testimonials</h3>
                                                <p>See what people have to say about us.</p>
                                             </a>
                                          </div>
                                          <div class="submenu4_top4" style=" background-image: url({{static_asset('assets_web/img/web-icon18.png')}}); background-size: 20px; background-position: top left; ">
                                             <a href="javascript:void(0);">
                                                <h3>Press &amp; Media</h3>
                                                <p>Knowing Us in Interesting Ways</p>
                                             </a>
                                          </div>
                                       </div>
                                       <div class="submenu4_bot">
                                          <div class="submenu4_botlt">
                                             <h3>The Next Level Knowledge Awaits</h3>
                                             <p>
                                                Make your web presence impressive by getting precise web design, digital marketing, mobile responsive website, web development and complete IT solutions from certified experts.
                                             </p>
                                          </div>
                                          <div class="submenu4_botrt">
                                             <a href="contact-us" class="borderbtn1">Talk To Our Experts</a
                                                >
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </li>
                              <!-- PRODUCT START HERE -->
                              <li class="menulocationds menulocationds5 com">
                                 <a href="#folio">Pro-Services</a>
                                 <!-- mega sub menu start here -->
                                 <div class="product_submenu">
                                 
                                 <div class="col-md-8 fl megamenuoverflow">
                                 
                                 <!--<ul class="megamenusubs">
                                 <li><a href="#" class="secondnav">Cement <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                                 	
                                    <ul class="megamenusubs231">
                                                            <span class="morein">More In Cement</span>
                                                                                                                                  
                                                                  <li><a href="#">Black Cement</a>
                                                                  </li>
                                    </ul>
                                                                  
                                 </li>
                                 </ul>-->
                                 
                                 
                                    <ul class="megamenusubs">
									
                                          @foreach (\App\Models\Category::where('parent_id','0')->where('type','2')->orderBy('order_level','asc')->get() as $key => $category)
                                          
                                       <li>
                                          
                                             <a href="{{ route('servicecat', $category->slug) }}" class="secondnav">
                                                <!--<img src="{{uploaded_asset($category->home_image)}}" class="NavThumbnail fl" alt="{{$category->name}}" />-->
                                                <img src="https://ebb.orrish.org/public/uploads/all/FXBcyKoSKriEsuC6TQ5dViZC90rmwT5WUYxwA2Yi.svg" class="NavThumbnail fl" alt="{{$category->name}}" />
                                                <span>{{$category->name}} <i class="fa fa-long-arrow-right" aria-hidden="true"></i></span>
                                             </a>
                                             <ul class="megamenusubs231">
                                             <span class="morein">More In {{$category->name}}</span>
											 @foreach (\App\Utility\CategoryUtility::get_immediate_children_ids($category->id) as $key => $first_level_id)
                                                <li>
                                                   <a href="end_to_end_construction.php">  {{ \App\Models\Category::find($first_level_id)->getTranslation('name') }} </a>
                                                </li>
												@endforeach
                                               
                                             </ul>
                                          
                                       </li>
									   @endforeach
                                       
                                    </ul>
                                    </div>
                                    
                                    
                                    
                                    <div class="col-md-4 fr">
			                                                                <div class="divcalimmega">
			                                                                    <h3>Hire Team</h3>
			                                                                    <p>
			                                                                        Hire our dedicated team who will prove to be
			                                                                        the biggest sources to help your businesses
			                                                                        with cost-effective method.
			                                                                    </p>
			                                                                    <img src="https://orrish.com/run-project/ebuild-bazaar-s7/img/service-banner-1.png">
			                                                                    <a class="hire-team-btn" href="https://orrish.com/run-project/ebuild-bazaar-s7/javascript:void(0);" target="_self">Hire Team</a>
			                                                                </div>
			                                                            </div>
                                    
                                 </div>
                                 <!-- mega sub menu end here -->
                              </li>
                              <!-- PRODUCT END HERE -->
                              <li class="menulocationds menulocationds2 com">
                                 <a href="#">Products </a>
                                 <div class="megamenu megamenu2" style="
                                    background-image: url({{static_asset('assets_web/img/megamenusbanner.png')}});
                                    background-size: cover;
                                    background: #fff;
                                    background-position: top center;
                                    ">
                                    <div class="row">
                                       <div class="col-md-12" style="padding-right: 0px">
                                          <ul class="megamenusubs">
                                          @php
                                             $i=0;
                                          @endphp
                                             @foreach (\App\Models\Category::where('parent_id','0')->where('type','1')->get() as $key => $category)
                                             <li>
                                             @php
                                                   $i++;
                                                   $subcatSlug = \App\Models\Category::find($first_level_id)->slug;
                                                @endphp
                                                <a href="{{ route('cat', $category->slug) }}" style="    padding: 0px;">
                                                <b class="webhead{{$i}}">{{  $category->getTranslation('name') }}</b>
                                                </a>
                                                <ul class="megamenusubs231 megamenusubs231a{{$i}}">
													<li class="overflow-hidden m-0 p-0 h-96">
														<ul class="m-0 p-0 d-block">
														   @foreach (\App\Utility\CategoryUtility::get_immediate_children_ids($category->id) as $key => $first_level_id)
                                                   <li>
                                                      @php
                                                      $subcatSlug = \App\Models\Category::find($first_level_id)->slug;
                                                      @endphp
                                                      <a href="{{ route('products.category', $subcatSlug) }}"><img src="{{static_asset('assets_web/img/mechanic-tools.png')}}" alt="" /> {{ \App\Models\Category::find($first_level_id)->getTranslation('name') }}
                                                      </a>
                                                   </li>
                                                   @endforeach
														</ul>
													</li>
                                                
                                                   <li class="mb-2">
                                                      <a href="{{route('cat', $category->slug)}}" class="viewmorepro">  View More <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                                                   </li>
                                                </ul>
                                             </li>
                                             @php
                                                            if($i==5)
                                                            {
                                                               $i=0;
                                                            }
                                                         @endphp
                                                      @endforeach
                                          </ul>
                                       </div>
                                       
                                    </div>
                                 </div>
                              </li>
                              <li class="menulocationds menulocationds3 com">
                                 <a href="#s">Build Expertise </a>
                                 <div class="megamenu megamenu3" style="
                                    background-image: url({{static_asset('assets_web/img/megamenusbanner.png')}});
                                    background-size: cover;
                                    background: #fff;
                                    background-position: top center;
                                    ">
                                    <div class="submenu submenu3">
                                       <div class="menuleft menuleft3">
                                          <h3><span>Hire</span> Remote Team</h3>
                                          <img class="lazyloaded" src="{{static_asset('assets_web/img/hire-team-photo.png')}}" data-src="{{static_asset('assets_web/img/hire-team-photo.png')}}" alt="Team Photos" />
                                          <a href="technology-expertise#tab2" class="borderbtn1">Hire Now</a
                                             >
                                       </div>
                                       <div class="menuright menuright3">
                                          <ul>
                                             <li>
                                                <a href="{{url('/residentilal')}}">
                                                <img
                                                   class="lazyloaded"
                                                   src="{{static_asset('assets_web/img/technology-menu-icon.svg')}}"
                                                   data-src="{{static_asset('assets_web/img/technology-menu-icon.svg')}}"
                                                   alt="Technology"
                                                   width="44"
                                                   />
                                                <span><strong>Residential</strong> Home</span
                                                   ></a
                                                   >
                                             </li>
                                             <li>
                                                <a href="{{url('/commercial')}}"
                                                   ><img
                                                   src="{{static_asset('assets_web/img/4p-menu-icon.svg')}}"
                                                   alt="4p"
                                                   width="44"
                                                   />
                                                <span
                                                   ><strong>Commercial</strong> Building
                                                Development.</span
                                                   ></a
                                                   >
                                             </li>
                                             <li>
                                                <a href="{{url('/architect')}}"
                                                   ><img
                                                   src="{{static_asset('assets_web/img/models-menu-icon.svg')}}"
                                                   alt="models"
                                                   width="44"
                                                   />
                                                <span
                                                   ><strong>architect</strong> Building <br>Design</span></a
                                                   >
                                             </li>
                                             <li>
                                                <a href="{{url('/interior-exterior')}}"
                                                   ><img
                                                   class="lazyloaded"
                                                   src="{{static_asset('assets_web/img/agile-menu-icon.svg')}}"
                                                   data-src="{{static_asset('assets_web/img/agile-menu-icon.svg')}}"
                                                   alt=">Agile &amp; Scrum"
                                                   width="44"
                                                   />
                                                <span
                                                   ><strong>Interior / Exterior</strong>Designing</span></a>
                                             </li>
                                             <li>
                                                <a href="{{url('/building')}}"
                                                   ><img
                                                   src="{{static_asset('assets_web/img/scrum-menu-icon.svg')}}"
                                                   alt="Valued Professionals"
                                                   width="44"
                                                   />
                                                <span
                                                   ><strong>Building </strong><br> Material Supply</span>
                                                </a>
                                             </li>
                                             <li>
                                                <a href="{{url('/talk-to')}}"
                                                   ><img
                                                   src="{{static_asset('assets_web/img/scrum-menu-icon.svg')}}"
                                                   alt="Valued Professionals"
                                                   width="44"
                                                   />
                                                <span
                                                   ><strong>Talk to</strong> experts</span>
                                                </a>
                                             </li>
                                             <li>
                                                <a href="{{url('/plumber-electrician')}}"
                                                   ><img
                                                   src="{{static_asset('assets_web/img/scrum-menu-icon.svg')}}"
                                                   alt="Valued Professionals"
                                                   width="44"
                                                   />
                                                <span
                                                   ><strong>Plumber / Electrician </strong> experts</span>
                                                </a>
                                             </li>
                                          </ul>
                                       </div>
                                    </div>
                                 </div>
                              </li>
                              <li class="menulocationds menulocationds4 com">
                                 <a href="#s">Partner With Us</a>
                                 <div class="megamenu megamenu4" style="
                                    background-image: url({{static_asset('assets_web/img/megamenusbanner.png')}});
                                    background-size: cover;
                                    background: #fff;
                                    background-position: top center;
                                    ">
                                    <div class="submenu submenu4">
                                       <div class="submenu4_top">
                                          <div class="submenu4_top1">
                                             <a href="{{url('/sales-partner')}}">
                                                <h3>Sales Partner</h3>
                                                <p>
                                                   Our prowess to create growth, generate productivity and help launch new business models.
                                                </p>
                                             </a>
                                          </div>
                                          <div class="submenu4_top2">
                                             <a href="{{url('/material-supplier')}}">
                                                <h3>material Suppliers</h3>
                                                <p>
                                                   A perspective to talk about new ideas, future technology and its impact on enterprises.
                                                </p>
                                             </a>
                                          </div>
                                          <div class="submenu4_top3">
                                             <a href="{{url('/labour-suppllier')}}">
                                                <h3>Labour Suppliers</h3>
                                                <p>See what people have to say about us.</p>
                                             </a>
                                          </div>
                                          <div class="submenu4_top4">
                                             <a href="{{url('/engineer-architect-associates')}}">
                                                <h3>Engineer and Architect Associates</h3>
                                                <p>Knowing Us in Interesting Ways</p>
                                             </a>
                                          </div>
                                       </div>
                                       <div class="submenu4_bot">
                                          <div class="submenu4_botlt">
                                             <h3>The Next Level Knowledge Awaits</h3>
                                             <p>
                                                Learn more about the innumerable possibilities that can be unleashed by bridging the gap between aspiration and realization with the right technology and smart resources.
                                             </p>
                                          </div>
                                          <div class="submenu4_botrt">
                                             <a href="contact-us" class="borderbtn1">Talk To Our Experts</a
                                                >
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </li>
                              <li class="com more_tabs">
                                 <a href="#tact-us">More</a>
                                 <div class="tab-more">
                                    <ul>
                                       <li><a href="javascript:void(0);"><img src="{{static_asset('assets_web/img/visualizer.png')}}" alt=""> Visuliazer</a></li>
                                       <li><a href="javascript:void(0);"><img src="{{static_asset('assets_web/img/freesampleorder.png')}}" alt=""> Order free sample</a></li>
                                       <li><a href="javascript:void(0);"><img src="{{static_asset('assets_web/img/explorer.jpg')}}" alt=""> Design explorer</a></li>
                                       <li><a href="javascript:void(0);"><img src="{{static_asset('assets_web/img/web-icon17.png')}}" alt=""> Testimonials</a></li>
                                       <li><a href="javascript:void(0);"><img src="{{static_asset('assets_web/img/web-icon16.png')}}" alt=""> Blog </a></li>
                                       <li><a href="{{url('/career')}}"><img src="{{static_asset('assets_web/img/icona1.png')}}" alt=""> Career</a></li>
                                       <li><a href="{{url('/contact-us')}}"><i class="fa-solid fa-address-book"></i> Contact Us</a></li>
                                    </ul>
                                 </div>
                              </li>
                           </ul>
                        </div>
                     </div>
                  </div>
            
            </nav>
         </div>
      </div>
   </div>
   </div>
   <div class="header-inner">
      <div class="logo-container">
         <div class="container">
            <div class="landing-logo">
               <a class="navbar-brand" href="javascript:void(0);"><img src="{{static_asset('assets_web/img/icon.png')}}" /></a>
            </div>
            <div class="mobile-logo">
               <a class="navbar-brand" href="javascript:void(0);"><img src="{{static_asset('assets_web/img/icon.png')}}" /></a>
            </div>
            <div class="humberg-menu">
               <span></span> <span class="middle"></span> <span></span>
            </div>
         </div>
      </div>
      <div class="popmenu-container">
         <a href="javascript:void(0);" class="close-menu"><img src="{{static_asset('assets_web/img/close.png')}}" alt="" /></a>
         <div class="menu-overlay"></div>
         <div class="left-side-bar">
            <ul class="menu-list">
               <li>
                  <a href="javascript:void(0);"><i class="fa-solid fa-house"></i> Ebuild Bazaar </a
                     >
               </li>
               <li>
                  <a href="javascript:void(0);"
                     ><i class="fa-solid fa-kit-medical"></i> Ebuild Bazaar Wealth  Advisors<b class="caret"></b
                     ></a>
                  <div class="menu-sub-list">
                     <ul>
                        <li><a href="javascript:void(0);">About Us</a></li>
                        <li><a href="javascript:void(0);">Our Companies</a></li>
                        <li><a href="javascript:void(0);">Our Board Member</a></li>
                        <li><a href="javascript:void(0);">Our Team</a></li>
                        <li><a href="javascript:void(0);">Ebuild Bazaar Foundation</a></li>
                        <li><a href="javascript:void(0);">Disclosure</a></li>
                      </ul>
                  </div>
               </li>
               <li>
                  <a href="javascript:void(0);"><i class="fa-solid fa-house"></i> Ebuild Bazaar
    Investment Managers</a
                     >
               </li>
               <li>
                  <a href="javascript:void(0);"
                     ><i class="fa-solid fa-house"></i> Ebuild Bazaar Property
    Investment
                  </a>
               </li>
               <li>
                  <a href="javascript:void(0);"><i class="fa-solid fa-house"></i> Ebuild Bazaar Capital
    Management
                  </a>
               </li>
               <li>
                  <a href="javascript:void(0);"><i class="fa-solid fa-headphones-simple"></i> Ebuild Bazaar Pravi</a
                     >
               </li>
               <li>
                  <a href="javascript:void(0);"><i class="fa-solid fa-play"></i> Media </a>
               </li>
               <li>
                  <a href="javascript:void(0);"><i class="fa-solid fa-book"></i> Careers</a>
               </li>
               <li>
                  <a href="javascript:void(0);"><i class="fa-solid fa-headphones-simple"></i> Contact
                  us</a
                     >
               </li>
            </ul>
            <div class="right-0 bottom-0 left-0 z-index-n1">
               <svg
                  xmlns="http://www.w3.org/2000/svg"
                  xmlns:xlink="http://www.w3.org/1999/xlink"
                  x="0px"
                  y="0px"
                  viewBox="0 0 300 126.5"
                  style="
                  margin-bottom: -5px;
                  enable-background: new 0 0 300 126.5;
                  "
                  xml:space="preserve"
                  class="injected-svg js-svg-injector"
                  data-parent="#SVGwaveWithDots"
                  >
                 
                  <path
                     class="wave-bottom-with-dots-0 fill-primary"
                     opacity=".6"
                     d="M0,58.9c0-0.9,5.1-2,5.8-2.2c6-0.8,11.8,2.2,17.2,4.6c4.5,2.1,8.6,5.3,13.3,7.1C48.2,73.3,61,73.8,73,69  c43-16.9,40-7.9,84-2.2c44,5.7,83-31.5,143-10.1v69.8H0C0,126.5,0,59,0,58.9z"
                     ></path>
                  <path
                     class="wave-bottom-with-dots-1 fill-primary"
                     d="M300,68.5v58H0v-58c0,0,43-16.7,82,5.6c12.4,7.1,26.5,9.6,40.2,5.9c7.5-2.1,14.5-6.1,20.9-11  c6.2-4.7,12-10.4,18.8-13.8c7.3-3.8,15.6-5.2,23.6-5.2c16.1,0.1,30.7,8.2,45,16.1c13.4,7.4,28.1,12.2,43.3,11.2  C282.5,76.7,292.7,74.4,300,68.5z"
                     ></path>
                  <g>
                     <circle
                        class="wave-bottom-with-dots-2 fill-danger"
                        cx="259.5"
                        cy="17"
                        r="13"
                        ></circle>
                     <circle
                        class="wave-bottom-with-dots-1 fill-primary"
                        cx="290"
                        cy="35.5"
                        r="8.5"
                        ></circle>
                     <circle
                        class="wave-bottom-with-dots-3 fill-success"
                        cx="288"
                        cy="5.5"
                        r="5.5"
                        ></circle>
                     <circle
                        class="wave-bottom-with-dots-4 fill-warning"
                        cx="232.5"
                        cy="34"
                        r="2"
                        ></circle>
                  </g>
               </svg>
            </div>
         </div>
      </div>
   </div>
</header>