<!DOCTYPE html>
<html lang="en">

<head>
   <meta name="csrf-token" content="{{ csrf_token() }}">
   <meta name="app-url" content="{{ getBaseURL() }}">
   <meta name="file-base-url" content="{{ getFileBaseURL() }}">
   <title>Shopplers</title>
   <!-- <title>@yield('meta_title', get_setting('website_name').' | '.get_setting('site_motto'))</title> -->
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta name="robots" content="index, follow">
   <meta name="description" content="@yield('meta_description', get_setting('meta_description') )" />
   <meta name="keywords" content="@yield('meta_keywords', get_setting('meta_keywords') )">

   @yield('meta')


   @if(!isset($detailedProduct) && !isset($customer_product) && !isset($shop) && !isset($page) && !isset($blog))
   <!-- Schema.org markup for Google+ -->
   <meta itemprop="name" content="{{ get_setting('meta_title') }}">
   <meta itemprop="description" content="{{ get_setting('meta_description') }}">
   <meta itemprop="image" content="{{ uploaded_asset(get_setting('meta_image')) }}">

   <!-- Twitter Card data -->
   <meta name="twitter:card" content="product">
   <meta name="twitter:site" content="@publisher_handle">
   <meta name="twitter:title" content="{{ get_setting('meta_title') }}">
   <meta name="twitter:description" content="{{ get_setting('meta_description') }}">
   <meta name="twitter:creator" content="@author_handle">
   <meta name="twitter:image" content="{{ uploaded_asset(get_setting('meta_image')) }}">

   <!-- Open Graph data -->
   <meta property="og:title" content="{{ get_setting('meta_title') }}" />
   <meta property="og:type" content="website" />
   <meta property="og:url" content="{{ route('home') }}" />
   <meta property="og:image" content="{{ uploaded_asset(get_setting('meta_image')) }}" />
   <meta property="og:description" content="{{ get_setting('meta_description') }}" />
   <meta property="og:site_name" content="{{ env('APP_NAME') }}" />
   <meta property="fb:app_id" content="{{ env('FACEBOOK_PIXEL_ID') }}">
   @endif

   <!-- Favicon -->
   <link rel="icon" href="{{ uploaded_asset(get_setting('site_icon')) }}">

   <link
      href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;display=swap"
      rel="stylesheet">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
   <link rel="stylesheet" href="{{ static_asset('assets_home/css/font-family.css') }}">
   <link rel="stylesheet" href="{{ static_asset('assets_home/css/animate.min.css') }}">
   <link rel="stylesheet" href="{{ static_asset('assets_home/css/hs.megamenu.css') }}">
   <link rel="stylesheet" href="{{ static_asset('assets_home/css/jquery.mCustomScrollbar.css') }}">
   <link rel="stylesheet" href="{{ static_asset('assets_home/css/jquery.fancybox.css') }}">
   <link rel="stylesheet" href="{{ static_asset('assets_home/css/slick.css') }}">
   <link rel="stylesheet" href="{{ static_asset('assets_home/css/bootstrap-select.min.css') }}">
   <link rel="stylesheet" href="{{ static_asset('assets_home/css/style.css') }}">
   <link rel="stylesheet" href="{{ static_asset('assets/css/custom-style.css') }}">


   <style>
      .custom_card {
         align-items: center !important;
         justify-content: center;
         padding: 0 !important;
         border-radius: 5px;
         overflow: hidden !important;
      }

      i.fas.fa-phone-alt.custom_ico {
         color: #ff5b08;
         font-size: 25px;
         margin-top: 20px;
      }
   </style>


</head>

<body>
   <!-- Header Section Start -->
   <header id="header" class="u-header u-header-left-aligned-nav">
      <div class="u-header__section">
         <!--Top Navbar Start  -->
         <div class="u-header-topbar py-2 d-none d-xl-block">
            <div class="container">
               <div class="d-flex align-items-center">
                  <div class="topbar-left">

                     <li
                        class="list-inline-item mr-0 u-header-topbar__nav-item u-header-topbar__nav-item-border u-header-topbar__nav-item-no-border u-header-topbar__nav-item-border-single">
                        <div class="d-flex align-items-center">
                           <div class="position-relative">
                              <a id="languageDropdownInvoker"
                                 class="dropdown-nav-link dropdown-toggle d-flex align-items-center u-header-topbar__nav-link font-weight-normal"
                                 href="javascript:;" role="button" aria-controls="languageDropdown" aria-haspopup="true"
                                 aria-expanded="false" data-unfold-event="hover" data-unfold-target="#languageDropdown"
                                 data-unfold-type="css-animation" data-unfold-duration="300" data-unfold-delay="300"
                                 data-unfold-hide-on-scroll="true" data-unfold-animation-in="slideInUp"
                                 data-unfold-animation-out="fadeOut">
                                 <span class="d-inline-block d-sm-none">US</span>
                                 <span class="d-none d-sm-inline-flex align-items-center"><i
                                       class="ec ec-dollar mr-1"></i> Dollar (US) &nbsp; <i
                                       class="fa fa-angle-down"></i></span>
                              </a>
                              <div id="languageDropdown" class="dropdown-menu dropdown-unfold"
                                 aria-labelledby="languageDropdownInvoker">
                                 <a class="dropdown-item active" href="#">English</a>
                              </div>
                           </div>
                        </div>
                     </li>
                  </div>

                  <div class="topbar-right ml-auto">
                     <ul class="list-inline mb-0">

                        @if (get_setting('helpline_number'))
                        <li class="list-inline-item mr-0 u-header-topbar__nav-item u-header-topbar__nav-item-border">
                           <a href="tel:{{ get_setting('helpline_number') }}" class="u-header-topbar__nav-link">
                              <i class="fas fa-phone-alt"></i>
                              {{ translate('Help line')}} {{ get_setting('helpline_number') }}
                           </a>
                        </li>

                        @endif

                        @auth
                        @if(isAdmin())
                        <li class="list-inline-item mr-0 u-header-topbar__nav-item u-header-topbar__nav-item-border">
                           <a href="{{ route('admin.dashboard') }}" role="button" class="u-header-topbar__nav-link">
                              My Panel
                           </a>
                        </li>
                        @else
                        <li class="list-inline-item mr-3 border-right border-left-0 pr-3 pl-0 dropdown">
                           <a class="dropdown-toggle no-arrow text-reset" data-toggle="dropdown"
                              href="javascript:void(0);" role="button" aria-haspopup="false" aria-expanded="false">
                              <span class="">
                                 <span class="position-relative d-inline-block">
                                    <i class="las la-bell fs-18"></i>
                                    @if(count(Auth::user()->unreadNotifications) > 0)
                                    <span
                                       class="badge badge-sm badge-dot badge-circle badge-primary position-absolute absolute-top-right"></span>
                                    @endif
                                 </span>
                              </span>
                           </a>
                           <div class="dropdown-menu dropdown-menu-right dropdown-menu-lg py-0">
                              <div class="p-3 bg-light border-bottom">
                                 <h6 class="mb-0">{{ translate('Notifications') }}</h6>
                              </div>
                              <div class="px-3 c-scrollbar-light overflow-auto " style="max-height:300px;">
                                 <ul class="list-group list-group-flush">
                                    @forelse(Auth::user()->unreadNotifications as $notification)
                                    <li class="list-group-item">
                                       @if($notification->type == 'App\Notifications\OrderNotification')
                                       @if(Auth::user()->user_type == 'customer')
                                       <a href="javascript:void(0)"
                                          onclick="show_purchase_history_details({{ $notification->data['order_id'] }})"
                                          class="text-reset">
                                          <span class="ml-2">
                                             {{translate('Order code: ')}} {{$notification->data['order_code']}} {{
                                             translate('has been '. ucfirst(str_replace('_', ' ',
                                             $notification->data['status'])))}}
                                          </span>
                                       </a>
                                       @elseif (Auth::user()->user_type == 'seller')
                                       @if(Auth::user()->id == $notification->data['user_id'])
                                       <a href="javascript:void(0)"
                                          onclick="show_purchase_history_details({{ $notification->data['order_id'] }})"
                                          class="text-reset">
                                          <span class="ml-2">
                                             {{translate('Order code: ')}} {{$notification->data['order_code']}} {{
                                             translate('has been '. ucfirst(str_replace('_', ' ',
                                             $notification->data['status'])))}}
                                          </span>
                                       </a>
                                       @else
                                       <a href="javascript:void(0)"
                                          onclick="show_order_details({{ $notification->data['order_id'] }})"
                                          class="text-reset">
                                          <span class="ml-2">
                                             {{translate('Order code: ')}} {{$notification->data['order_code']}} {{
                                             translate('has been '. ucfirst(str_replace('_', ' ',
                                             $notification->data['status'])))}}
                                          </span>
                                       </a>
                                       @endif
                                       @endif
                                       @endif
                                    </li>
                                    @empty
                                    <li class="list-group-item">
                                       <div class="py-4 text-center fs-16">
                                          {{ translate('No notification found') }}
                                       </div>
                                    </li>
                                    @endforelse
                                 </ul>
                              </div>
                              <div class="text-center border-top">
                                 <a href="{{ route('all-notifications') }}" class="text-reset d-block py-2">
                                    {{translate('View All Notifications')}}
                                 </a>
                              </div>
                           </div>
                        </li>

                        <li class="list-inline-item mr-0 u-header-topbar__nav-item u-header-topbar__nav-item-border">
                           <a href="{{ route('dashboard') }}" role="button" class="u-header-topbar__nav-link">
                              <i class="ec ec-user mr-1"></i> My Panel
                           </a>
                        </li>

                        @endif
                        <li class="list-inline-item mr-0 u-header-topbar__nav-item u-header-topbar__nav-item-border">
                           <a href="{{ route('logout') }}" role="button" class="u-header-topbar__nav-link">
                              Logout
                           </a>
                        </li>
                        @else
                        <li class="list-inline-item mr-0 u-header-topbar__nav-item u-header-topbar__nav-item-border">
                           <a href="{{ route('user.login') }}" role="button" class="u-header-topbar__nav-link">
                              Login
                           </a>
                        </li>
                        <li class="list-inline-item mr-0 u-header-topbar__nav-item u-header-topbar__nav-item-border">
                           <a href="{{ route('user.registration') }}" role="button" class="u-header-topbar__nav-link">
                              Register
                           </a>
                        </li>
                        @endauth

                     </ul>
                  </div>
               </div>
            </div>
         </div>
         <!--Top Navbar End  -->

         <!--Logo & Searchbar Start  -->
         <div class="py-2 py-xl-5 bg-primary-down-lg">
            <div class="container my-0dot5 my-xl-0">
               <div class="row align-items-center">
                  <div class="col-auto">
                     <nav
                        class="navbar navbar-expand u-header__navbar py-0 justify-content-xl-between max-width-270 min-width-270">
                        <a class="order-1 order-xl-0 navbar-brand u-header__navbar-brand u-header__navbar-brand-center"
                           href="#" aria-label="Electro">
                           @php
                           $header_logo = get_setting('header_logo');
                           @endphp

                           @if($header_logo != null)
                           <img src="{{ uploaded_asset($header_logo) }}">
                           @else
                           <img src="{{ static_asset('assets/img/logo.png') }}">
                           @endif
                        </a>
                     </nav>

                  </div>

                  <!-- Searchbar  -->
                  <div class="col d-none d-xl-block">
                     <form action="{{ route('search') }}" method="GET" class="js-focus-state">
                        <label class="sr-only" for="searchproduct">Search</label>
                        <div class="input-group">
                           <input type="text"
                              class="form-control py-2 pl-5 font-size-15 border-right-0 height-40 border-width-2 rounded-left-pill border-primary"
                              id="search" name="keyword" @isset($query) value="{{ $query }}" @endisset
                              placeholder="{{translate('I am shopping for...')}}" autocomplete="off">
                           <div class="input-group-append">
                              <button class="btn btn-primary height-40 py-2 px-3 rounded-right-pill" type="submit"
                                 id="searchProduct1">
                                 <span class="ec ec-search font-size-24"></span>
                              </button>
                           </div>
                        </div>
                     </form>
                  </div>


                  <div class="col col-xl-auto text-right text-xl-left pl-0 pl-xl-3 position-static">
                     <div class="d-inline-flex">
                        <ul class="d-flex list-unstyled mb-0 align-items-center">

                           <li class="col d-none d-xl-block">

                              <a href="{{ route('compare') }}" class="text-gray-90" data-toggle="tooltip"
                                 data-placement="top" title="Compare">
                                 <i class="fas fa-sync custom-fa-icon"></i>
                                 <span class="flex-grow-1 ml-1" title="compare">
                                    @if(Session::has('compare'))
                                    <span class="badge badge-primary badge-inline badge-pill">{{
                                       count(Session::get('compare'))}}</span>
                                    @else
                                    <span class="badge badge-primary badge-inline badge-pill">0</span>
                                    @endif
                                    <!-- <span class="nav-box-text d-none d-xl-block opacity-70 " title="compare">{{translate('Compare')}}</span> -->
                                 </span>
                              </a>
                           </li>

                           <li class="col d-none d-xl-block">
                              <a href="{{ route('wishlists.index') }}" class="text-gray-90" data-toggle="tooltip"
                                 data-placement="top" title="Favorites">
                                 <i class="fas fa-heart custom-fa-icon"></i>
                                 <span class="flex-grow-1 ml-1">
                                    @if(Auth::check())
                                    <span class="badge badge-primary badge-inline badge-pill">{{
                                       count(Auth::user()->wishlists)}}</span>
                                    @else
                                    <span class="badge badge-primary badge-inline badge-pill">0</span>
                                    @endif
                                 </span>
                              </a>
                           </li>
                           <li class="col d-xl-none px-2 px-sm-3">
                              <a href="javascript:void(0)" class="text-gray-90" data-toggle="tooltip"
                                 data-placement="top" title="My Account">
                                 <i class="font-size-22 ec ec-user"></i>
                              </a>
                           </li>


                           @php
                           if(auth()->user() != null) {
                           $user_id = Auth::user()->id;
                           $cart = \App\Models\Cart::where('user_id', $user_id)->get();
                           } else {
                           $temp_user_id = Session()->get('temp_user_id');
                           if($temp_user_id) {
                           $cart = \App\Models\Cart::where('temp_user_id', $temp_user_id)->get();
                           }
                           }
                           @endphp

                           <li class="col pr-xl-0 px-2 px-sm-3 d-xl-none">
                              <a href="javascript:void(0)" class="text-gray-90 position-relative d-flex "
                                 data-toggle="tooltip" data-placement="top" title="Cart">
                                 <i class="fas fa-shopping-cart custom-fa-icon"></i>
                                 @if(isset($cart) && count($cart) > 0)
                                 <span class="badge badge-primary badge-inline badge-pill">{{ count($cart)}}</span>

                                 @else
                                 <span class="badge badge-primary badge-inline badge-pill">0</span>
                                 @endif

                              </a>
                           </li>

                           <li class="col pr-xl-0 px-2 px-sm-3 d-none d-xl-block">
                              <div id="basicDropdownHoverInvoker" class="text-gray-90 position-relative d-flex "
                                 data-toggle="tooltip" data-placement="top" title="Cart"
                                 aria-controls="basicDropdownHover" aria-haspopup="true" aria-expanded="false"
                                 data-unfold-event="click" data-unfold-target="#basicDropdownHover"
                                 data-unfold-type="css-animation" data-unfold-duration="300" data-unfold-delay="300"
                                 data-unfold-hide-on-scroll="true" data-unfold-animation-in="slideInUp"
                                 data-unfold-animation-out="fadeOut">
                                 <i class="fas fa-shopping-cart custom-fa-icon"></i>
                                 @if(isset($cart) && count($cart) > 0)
                                 <span class="badge badge-primary badge-inline badge-pill">{{ count($cart)}}</span>
                                 @else
                                 <span class="badge badge-primary badge-inline badge-pill">0</span>
                                 @endif
                              </div>

                              <div id="basicDropdownHover"
                                 class="cart-dropdown dropdown-menu dropdown-unfold border-top border-top-primary mt-3 border-width-2 border-left-0 border-right-0 border-bottom-0 left-auto right-0"
                                 aria-labelledby="basicDropdownHoverInvoker">

                                 @if(isset($cart) && count($cart) > 0)
                                 <ul class="list-unstyled px-3">

                                    @php
                                    $total = 0;
                                    @endphp
                                    @foreach($cart as $key => $cartItem)
                                    @php
                                    $product = \App\Models\Product::find($cartItem['product_id']);
                                    $total = $total + $cartItem['price'] * $cartItem['quantity'];
                                    @endphp
                                    @if ($product != null)
                                    <li class="border-bottom pb-3 mb-3">
                                       <div class="custom-height">
                                          <div class="p-3 fs-15 fw-600 p-3 border-bottom custom-border">
                                             Cart Items
                                          </div>
                                          <ul class="list-unstyled row mx-n2">

                                             <li class="px-2 col-auto">
                                                <img class="img-fluid"
                                                   src="{{ uploaded_asset($product->thumbnail_img) }}"
                                                   alt="{{  $product->getTranslation('name')  }}">
                                             </li>
                                             <li class="px-2 col">
                                                <h5 class="custom-heading text-blue font-size-14 font-weight-bold">{{
                                                   $product->getTranslation('name') }}</h5>
                                                <span class="custom-price-span font-size-14">{{ $cartItem['quantity'] }}
                                                   × {{
                                                   single_price($cartItem['price']) }}</span>
                                             </li>
                                             <li class="px-2 col-auto">
                                                <a href="#" class="custom-cross text-gray-90"><i
                                                      class="ec ec-close-remove"></i></a>
                                             </li>
                                          </ul>
                                       </div>
                                    </li>
                                    @endif
                                    @endforeach


                                 </ul>
                                 <!-- 
                                 <div class="flex-center-between px-4 pt-2">
                                    <a href="{{ route('cart') }}"
                                       class="btn btn-soft-secondary mb-3 mb-md-0 font-weight-normal px-5 px-md-4 px-lg-5">
                                       View cart</a>
                                    <a href="{{ route('checkout.shipping_info') }}"
                                       class="btn btn-primary-dark-w ml-md-2 px-5 px-md-4 px-lg-5">
                                       Checkout
                                    </a>
                                 </div> -->

                                 <div class="px-3 py-2 fs-15 border-top d-flex justify-content-between">
                                    <span class="opacity-60 custom-subtotal">Subtotal</span>
                                    <span class="fw-600 custom-total">Rs1,800.00</span>
                                 </div>

                                 <!--  -->
                                 <div class="px-3 py-2 text-center border-top">
                                    <ul class="list-inline mb-0">
                                       <li class="list-inline-item">
                                          <a href="http://localhost/shoppler/cart"
                                             class="custom-viewcart btn btn-soft-primary btn-sm">
                                             View cart
                                          </a>
                                       </li>
                                    </ul>
                                 </div>
                                 <!--  -->
                              </div>
                           </li>

                           @else
                           <div class="text-center p-3">
                              <i class="las la-frown la-3x opacity-60 mb-3"></i>
                              <h3 class="h6 fw-700">{{translate('Your Cart is empty')}}</h3>
                           </div>
                           @endif
                        </ul>

                     </div>
                  </div>

               </div>
            </div>
         </div>
         <!-- Logo & Searchbar End  -->

         <div class="d-none d-xl-block container">
            <div class="row">
               <div class="col-md-auto d-none d-xl-block">
                  <div class="max-width-270 min-width-270">
                     <div id="basicsAccordion">
                        <div class="card border-0">

                           <div class="card-header card-collapse border-0" id="basicsHeadingOne">
                              <button type="button"
                                 class="btn-link btn-remove-focus btn-block d-flex card-btn py-3 text-lh-1 px-4 shadow-none btn-primary rounded-top-lg border-0 font-weight-bold text-gray-90"
                                 data-toggle="collapse" data-target="#basicsCollapseOne" aria-expanded="true"
                                 aria-controls="basicsCollapseOne">
                                 <span class="ml-0 text-gray-90 mr-2">
                                    <span class="fa fa-list-ul"></span>
                                 </span>
                                 <span class="pl-1 text-gray-90">All Departments</span>
                              </button>
                           </div>

                           <div id="basicsCollapseOne" class="collapse show vertical-menu"
                              aria-labelledby="basicsHeadingOne" data-parent="#basicsAccordion">
                              <div class="card-body p-0">
                                 <nav
                                    class="js-mega-menu navbar navbar-expand-xl u-header__navbar u-header__navbar--no-space hs-menu-initialized">
                                    <div id="navBar" class="collapse navbar-collapse u-header__navbar-collapse">
                                       <ul class="navbar-nav u-header__navbar-nav">

                                          @foreach (\App\Models\Category::where('level', 0)->orderBy('order_level',
                                          'desc')->get()->take(11) as $key => $category)

                                          <li class="nav-item hs-has-mega-menu u-header__nav-item" data-event="hover"
                                             data-animation-in="slideInUp" data-animation-out="fadeOut"
                                             data-position="left">
                                             <a id="basicMegaMenu{{ $category->id }}"
                                                class="nav-link u-header__nav-link u-header__nav-link-toggle"
                                                href="{{ route('products.category', $category->slug) }}"
                                                aria-haspopup="true" aria-expanded="false">
                                                {{ $category->getTranslation('name') }}
                                             </a>
                                             <div class="hs-mega-menu vmm-tfw u-header__sub-menu"
                                                aria-labelledby="basicMegaMenu">

                                                <div class="row u-header__mega-menu-wrapper">
                                                   @php
                                                   $sub_categories = \App\Models\Category::where('parent_id',
                                                   $category->id)->orderBy('order_level','desc')->get();
                                                   @endphp
                                                   @foreach($sub_categories as $keys =>$subcategory)
                                                   <div class="col mb-3 mb-sm-0">
                                                      <span class="u-header__sub-menu-title">
                                                         <a href="{{ route('products.category', $subcategory->slug) }}">
                                                            {{$subcategory->getTranslation('name') }}
                                                         </a>
                                                      </span>

                                                      <ul class="u-header__sub-menu-nav-group mb-3">
                                                         @php
                                                         $child_categories = \App\Models\Category::where('parent_id',
                                                         $subcategory->id)->orderBy('order_level','desc')->get();
                                                         @endphp
                                                         @foreach($child_categories as $keys =>$chieldcategory)
                                                         <li>
                                                            <a href="{{ route('products.category', $chieldcategory->slug) }}"
                                                               class="nav-link u-header__sub-menu-nav-link">
                                                               {{$chieldcategory->getTranslation('name') }}
                                                            </a>
                                                         </li>
                                                         @endforeach

                                                      </ul>

                                                   </div>
                                                   @endforeach


                                                </div>
                                             </div>
                                          </li>

                                          @endforeach

                                       </ul>
                                    </div>
                                 </nav>
                              </div>
                           </div>

                        </div>
                     </div>
                  </div>
               </div>

               <!-- LTR Menubar Start -->
               <div class="col">
                  <nav class="js-mega-menu navbar navbar-expand-md u-header__navbar u-header__navbar--no-space">
                     <div id="navBar" class="collapse navbar-collapse u-header__navbar-collapse">
                        <ul class="navbar-nav u-header__navbar-nav">
                           @foreach (json_decode( get_setting('header_menu_labels'), true) as $key => $value)
                           <li class="nav-item u-header__nav-item">
                              <a class="nav-link u-header__nav-link"
                                 href="{{ json_decode( get_setting('header_menu_links'), true)[$key] }}"
                                 aria-haspopup="true" aria-expanded="false" aria-labelledby="pagesSubMenu">
                                 {{ translate($value) }}
                              </a>
                           </li>
                           @endforeach

                        </ul>
                     </div>
                  </nav>
               </div>
               <!-- LTR Menubar Start -->

            </div>
         </div>

      </div>
   </header>
   <!-- Header Section End -->

   <main id="content" role="main">

      <!-- Main Slider Section Start -->
      <div class="mb-5">
         <div class="bg-img-hero" style="background-image: url(assets_home/img/banner1.jpg);">
            <div class="container min-height-420 overflow-hidden">
               <div class="js-slick-carousel u-slick"
                  data-pagi-classes="text-center position-absolute right-0 bottom-0 left-0 u-slick__pagination u-slick__pagination--long justify-content-start mb-3 mb-md-4 offset-xl-3 pl-2 pb-1">

                  @if (get_setting('home_slider_images') != null)
                  <!-- <div class="aiz-carousel dots-inside-bottom mobile-img-auto-height" data-arrows="true" data-dots="true" data-autoplay="true"> -->
                  @php $slider_images = json_decode(get_setting('home_slider_images'), true); @endphp
                  @foreach ($slider_images as $key => $value)
                  <div class="js-slide bg-img-hero-center">
                     <div class="row min-height-420 py-7 py-md-0">
                        <div class="col-xl-5 col-6  d-flex align-items-center" data-scs-animation-in="zoomIn"
                           data-scs-animation-delay="500">
                           <img class="img-fluid" src="{{ uploaded_asset($slider_images[$key]) }}"
                              alt="Image Description">
                        </div>
                     </div>
                  </div>
                  @endforeach
               </div>
               @endif

            </div>
         </div>
      </div>
      <!-- Main Slider Section End -->

      <div class="container">

         <!-- First Banner Start -->
         <div class="mb-5">
            <div class="row">
               @php $banner_1_imags = json_decode(get_setting('home_banner1_images')); @endphp
               @foreach ($banner_1_imags as $key => $value)

               <div class="col-md-6 mb-4 mb-xl-0 col-xl-4">
                  <a href="{{ json_decode(get_setting('home_banner1_links'), true)[$key] }}"
                     class="d-black text-gray-90">
                     <div id="customCard" class="custom_card min-height-132 d-flex bg-gray-1 align-items-center">
                        <div class="custom_overflow col-lg-12 col-xl-12 col-wd-6 p-0">
                           <img src="{{ uploaded_asset($banner_1_imags[$key]) }}"
                              data-src="{{ uploaded_asset($banner_1_imags[$key]) }}" class="img-fluid lazyload w-100">
                        </div>
                     </div>
                  </a>
               </div>
               @endforeach
            </div>
         </div>
         <!-- First Banner End -->

         <div class="mb-5">
            <div class="row">
               <!-- <div class="col-md-auto mb-6 mb-md-0">
                  <div class="p-3 border border-width-2 border-primary borders-radius-20 bg-white min-width-370">
                     <div class="d-flex justify-content-between align-items-center m-1 ml-2">
                        <h3 class="font-size-22 mb-0 font-weight-normal text-lh-28 max-width-120">Special Offer</h3>
                        <div class="d-flex align-items-center flex-column justify-content-center bg-primary rounded-pill height-75 width-75 text-lh-1">
                           <span class="font-size-12">Save</span>
                           <div class="font-size-20 font-weight-bold">Rs.&nbsp;120</div>
                        </div>
                     </div>
                     <div class="mb-4">
                        <a href="#1" class="d-block text-center"><img class="img-fluid" src="assets_home/img/320X300/img1.jpg" alt="Image Description"></a>
                     </div>
                     <h5 class="mb-2 font-size-14 text-center mx-auto max-width-180 text-lh-18"><a href="#1" class="text-blue font-weight-bold">Game Console Controller + USB 3.0 Cable</a></h5>
                     <div class="d-flex align-items-center justify-content-center mb-3">
                        <del class="font-size-18 mr-2 text-gray-2">Rs.&nbsp;99,00</del>
                        <ins class="font-size-30 text-red text-decoration-none">Rs.&nbsp;79,00</ins>
                     </div>
                     <div class="mb-3 mx-2">
                        <div class="d-flex justify-content-between align-items-center mb-2">
                           <span class="">Availavle: <strong>6</strong></span>
                           <span class="">Already Sold: <strong>28</strong></span>
                        </div>
                        <div class="rounded-pill bg-gray-3 height-20 position-relative">
                           <span class="position-absolute left-0 top-0 bottom-0 rounded-pill w-30 bg-primary"></span>
                        </div>
                     </div>
                     <div class="mb-2">
                        <h6 class="font-size-15 text-gray-2 text-center mb-3">Hurry Up! Offer ends in:</h6>
                        <div class="js-countdown d-flex justify-content-center" data-end-date="2022/11/30" data-hours-format="%H" data-minutes-format="%M" data-seconds-format="%S">
                           <div class="text-lh-1">
                              <div class="text-gray-2 font-size-30 bg-gray-4 py-2 px-2 rounded-sm mb-2">
                                 <span class="js-cd-hours"></span>
                              </div>
                              <div class="text-gray-2 font-size-12 text-center">HOURS</div>
                           </div>
                           <div class="mx-1 pt-1 text-gray-2 font-size-24">:</div>
                           <div class="text-lh-1">
                              <div class="text-gray-2 font-size-30 bg-gray-4 py-2 px-2 rounded-sm mb-2">
                                 <span class="js-cd-minutes"></span>
                              </div>
                              <div class="text-gray-2 font-size-12 text-center">MINS</div>
                           </div>
                           <div class="mx-1 pt-1 text-gray-2 font-size-24">:</div>
                           <div class="text-lh-1">
                              <div class="text-gray-2 font-size-30 bg-gray-4 py-2 px-2 rounded-sm mb-2">
                                 <span class="js-cd-seconds"></span>
                              </div>
                              <div class="text-gray-2 font-size-12 text-center">SECS</div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div> -->
               <div class="col col-lg-12">
                  <div class="">

                     <div class="position-relative bg-white text-center z-index-2">
                        <ul class="nav nav-classic nav-tab justify-content-center" id="pills-tab" role="tablist">
                           <li class="nav-item">
                              <a class="nav-link active " id="pills-one-example1-tab" data-toggle="pill"
                                 href="#pills-one-example1" role="tab" aria-controls="pills-one-example1"
                                 aria-selected="true">
                                 <div class="d-md-flex justify-content-md-center align-items-md-center">
                                    Featured
                                 </div>
                              </a>
                           </li>
                           <li class="nav-item">
                              <a class="nav-link " id="pills-two-example1-tab" data-toggle="pill"
                                 href="#pills-two-example1" role="tab" aria-controls="pills-two-example1"
                                 aria-selected="false">
                                 <div class="d-md-flex justify-content-md-center align-items-md-center">
                                    Best Sale
                                 </div>
                              </a>
                           </li>
                           <!-- <li class="nav-item">
                              <a class="nav-link " id="pills-three-example1-tab" data-toggle="pill" href="#pills-three-example1" role="tab" aria-controls="pills-three-example1" aria-selected="false">
                                 <div class="d-md-flex justify-content-md-center align-items-md-center">
                                    Top Rated
                                 </div>
                              </a>
                           </li> -->
                        </ul>
                     </div>


                     <div class="tab-content" id="pills-tabContent">

                        <!-- Featured Section Start  -->
                        @php
                        $featured_products = Cache::remember('featured_products', 3600, function () {
                        return filter_products(\App\Models\Product::where('published', 1)->where('featured',
                        '1'))->limit(12)->get();
                        });
                        @endphp

                        @if (count($featured_products) > 0)
                        <div class="tab-pane fade pt-2 show active" id="pills-one-example1" role="tabpanel"
                           aria-labelledby="pills-one-example1-tab">
                           <ul class="row list-unstyled products-group no-gutters">
                              @foreach ($featured_products as $key => $product)
                              <li class="col-6 col-wd-3 col-md-4 product-item">
                                 <div class="product-item__outer h-100">
                                    <div class="product-item__inner px-xl-4 p-3">
                                       <div class="product-item__body pb-xl-2">

                                          <h5 class="mb-1 product-item__title">
                                             <a href="{{ route('product', $product->slug) }}"
                                                class="text-blue font-weight-bold">{{ $product->getTranslation('name')
                                                }}</a>
                                          </h5>
                                          <div class="mb-2">
                                             <a href="{{ route('product', $product->slug) }}"
                                                class="d-block text-center"><img class="img-fluid"
                                                   src="{{ uploaded_asset($product->thumbnail_img) }}"
                                                   alt="Image Description"></a>
                                          </div>
                                          <div class="flex-center-between mb-1">
                                             <div
                                                class="prodcut-price d-flex align-items-center flex-wrap position-relative">
                                                <ins class="font-size-20 text-red text-decoration-none mr-2">{{
                                                   home_discounted_base_price($product) }}</ins>
                                                @if(home_base_price($product) != home_discounted_base_price($product))
                                                <del class="font-size-12 tex-gray-6 position-absolute bottom-100">{{
                                                   home_base_price($product) }}</del>
                                                @endif
                                             </div>

                                             <!-- <div class="d-none d-xl-block prodcut-add-cart">
                                                <a href="{{ route('product', $product->slug) }}" class="btn-add-cart btn-primary transition-3d-hover"><i class="ec ec-add-to-cart"></i></a>
                                             </div> -->
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </li>
                              @endforeach
                           </ul>
                        </div>
                        @endif

                        <!-- Featured Section End  -->

                        <!-- On Sale Section Start  -->
                        @php
                        $best_selling_products = Cache::remember('best_selling_products', 86400, function () {
                        return filter_products(\App\Models\Product::where('published', 1)->orderBy('num_of_sale',
                        'desc'))->limit(20)->get();
                        });
                        @endphp
                        @if (get_setting('best_selling') == 1)
                        <div class="tab-pane fade pt-2" id="pills-two-example1" role="tabpanel"
                           aria-labelledby="pills-two-example1-tab">
                           <ul class="row list-unstyled products-group no-gutters">
                              @foreach ($best_selling_products as $key => $product)
                              <li class="col-6 col-wd-3 col-md-4 product-item">
                                 <div class="product-item__outer h-100">
                                    <div class="product-item__inner px-xl-4 p-3">
                                       <div class="product-item__body pb-xl-2">

                                          <h5 class="mb-1 product-item__title">
                                             <a href="{{ route('product', $product->slug) }}"
                                                class="text-blue font-weight-bold">{{ $product->getTranslation('name')
                                                }}</a>
                                          </h5>
                                          <div class="mb-2">
                                             <a href="{{ route('product', $product->slug) }}"
                                                class="d-block text-center"><img class="img-fluid"
                                                   src="{{ uploaded_asset($product->thumbnail_img) }}"
                                                   alt="Image Description"></a>
                                          </div>
                                          <div class="flex-center-between mb-1">
                                             <div
                                                class="prodcut-price d-flex align-items-center flex-wrap position-relative">
                                                <ins class="font-size-20 text-red text-decoration-none mr-2">{{
                                                   home_discounted_base_price($product) }}</ins>
                                                @if(home_base_price($product) != home_discounted_base_price($product))
                                                <del class="font-size-12 tex-gray-6 position-absolute bottom-100">{{
                                                   home_base_price($product) }}</del>
                                                @endif
                                             </div>

                                             <div class="d-none d-xl-block prodcut-add-cart">
                                                <a href="{{ route('product', $product->slug) }}"
                                                   class="btn-add-cart btn-primary transition-3d-hover"><i
                                                      class="ec ec-add-to-cart"></i></a>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </li>
                              @endforeach

                           </ul>
                        </div>
                        @endif
                        <!-- On Sale Section End  -->

                        <!-- Top Rated Section Start  -->
                        <div class="tab-pane fade pt-2" id="pills-three-example1" role="tabpanel"
                           aria-labelledby="pills-three-example1-tab">
                           <ul class="row list-unstyled products-group no-gutters">

                           </ul>
                        </div>
                        <!-- Top Rated Section End  -->

                     </div>
                  </div>
               </div>
            </div>
         </div>

         <!-- Second Banner Start -->
         <div class="mb-5">
            <div class="row">
               @php $banner_1_imags = json_decode(get_setting('home_banner1_images')); @endphp
               @foreach ($banner_1_imags as $key => $value)

               <div class="col-md-6 mb-4 mb-xl-0 col-xl-4">
                  <a href="{{ json_decode(get_setting('home_banner1_links'), true)[$key] }}"
                     class="d-black text-gray-90">
                     <div id="customCard" class="custom_card min-height-132 d-flex bg-gray-1 align-items-center">
                        <div class="custom_overflow col-lg-12 col-xl-12 col-wd-6 p-0">
                           <img src="{{ uploaded_asset($banner_1_imags[$key]) }}"
                              data-src="{{ uploaded_asset($banner_1_imags[$key]) }}" class="img-fluid lazyload w-100">
                        </div>
                     </div>
                  </a>
               </div>
               @endforeach
            </div>
         </div>
         <!-- Second Banner End -->
      </div>

      <!-- Bestseller Product Start -->
      @php
      $best_selling_products = Cache::remember('best_selling_products', 86400, function () {
      return filter_products(\App\Models\Product::where('published', 1)->orderBy('num_of_sale',
      'desc'))->limit(20)->get();
      });
      @endphp
      @if (get_setting('best_selling') == 1)
      <div class="products-group-4-1-4 space-1 bg-gray-7">
         <div class="container">
            <div class="mb-6">
               <div class="position-relative">
                  <div class="border-bottom border-color-1 mb-2">
                     <h3 class="section-title mb-0 pb-2 font-size-22">Bestsellers</h3>
                  </div>
                  <div
                     class="js-slick-carousel u-slick position-static overflow-hidden u-slick-overflow-visble pb-7 pt-2 px-1"
                     data-pagi-classes="text-center right-0 bottom-1 left-0 u-slick__pagination u-slick__pagination--long mb-0 z-index-n1 mt-3 mt-md-0"
                     data-slides-show="7" data-slides-scroll="1"
                     data-arrows-classes="position-absolute top-0 font-size-17 u-slick__arrow-normal top-10"
                     data-arrow-left-classes="fa fa-angle-left right-1"
                     data-arrow-right-classes="fa fa-angle-right right-0" data-responsive='[{
                     "breakpoint": 1400,
                     "settings": {
                     "slidesToShow": 6
                     }
                     }, {
                     "breakpoint": 1200,
                     "settings": {
                     "slidesToShow": 4
                     }
                     }, {
                     "breakpoint": 992,
                     "settings": {
                     "slidesToShow": 3
                     }
                     }, {
                     "breakpoint": 768,
                     "settings": {
                     "slidesToShow": 2
                     }
                     }, {
                     "breakpoint": 554,
                     "settings": {
                     "slidesToShow": 2
                     }
                     }]'>

                     @foreach ($best_selling_products as $key => $product)
                     <div class="js-slide products-group">
                        <div class="product-item">
                           <div class="product-item__outer h-100">
                              <div class="product-item__inner px-wd-4 p-2 p-md-3">
                                 <div class="product-item__body pb-xl-2">
                                    <h5 class="mb-1 product-item__title">
                                       <a href="{{ route('product', $product->slug) }}"
                                          class="text-blue font-weight-bold">{{ $product->getTranslation('name') }}</a>
                                    </h5>
                                    <div class="mb-2">
                                       <a href="{{ route('product', $product->slug) }}" class="d-block text-center"><img
                                             class="img-fluid" src="{{ uploaded_asset($product->thumbnail_img) }}"
                                             alt="{{ $product->getTranslation('name')  }}"></a>
                                    </div>
                                    <div class="flex-center-between mb-1">
                                       <div class="prodcut-price">
                                          <div class="text-gray-100">{{ home_discounted_base_price($product) }}</div>
                                       </div>
                                       <div class="d-none d-xl-block prodcut-add-cart">
                                          <a href="{{ route('product', $product->slug) }}"
                                             class="btn-add-cart btn-primary transition-3d-hover"><i
                                                class="ec ec-add-to-cart"></i></a>
                                       </div>
                                    </div>
                                 </div>

                              </div>
                           </div>
                        </div>
                     </div>
                     @endforeach

                  </div>
               </div>
            </div>
         </div>
         <!-- Features Section -->

      </div>
      @endif
      <!-- Bestseller Product End -->


      <!-- TopBrand End  -->
      {{-- Top 10 Brands --}}
      @if (get_setting('top10_brands') != null)
      <div class="mb-8">
         <div class=" border-top border-bottom">
            <div class="js-slick-carousel u-slick my-1" data-slides-show="5" data-slides-scroll="1"
               data-arrows-classes="d-none d-lg-inline-block u-slick__arrow-normal u-slick__arrow-centered--y"
               data-arrow-left-classes="fa fa-angle-left u-slick__arrow-classic-inner--left z-index-9"
               data-arrow-right-classes="fa fa-angle-right u-slick__arrow-classic-inner--right" data-responsive='[{
                     "breakpoint": 992,
                     "settings": {
                     "slidesToShow": 2
                     }
                     }, {
                     "breakpoint": 768,
                     "settings": {
                     "slidesToShow": 1
                     }
                     }, {
                     "breakpoint": 554,
                     "settings": {
                     "slidesToShow": 1
                     }
                     }]'>

               @php $top10_brands = json_decode(get_setting('top10_brands')); @endphp
               @foreach ($top10_brands as $key => $value)
               @php $brand = \App\Models\Brand::find($value); @endphp
               @if ($brand != null)
               <div class="js-slide  custom_shop-slider">
                  <a href="{{ route('products.brand', $brand->slug) }}" class="link-hover__brand">
                     <img src="{{ uploaded_asset($brand->logo) }}" alt="{{ $brand->getTranslation('name') }}"
                        class="img-fluid img lazyload h-60px">
                  </a>
               </div>
               @endif
               @endforeach

            </div>
         </div>
      </div>
      @endif
      <!-- TopBrand End  -->
   </main>


   <!-- footer Section Start  -->
   <footer>
      <!-- <div class="container d-none d-lg-block mb-3">
         <div class="row">
            <div class="col-wd-3 col-lg-4">
               <div class="widget-column">

                  <div class="border-bottom border-color-1 mb-5">
                     <h3 class="d-flex align-items-center justify-content-between section-title section-title__sm mb-0 pb-2 font-size-18">Featured Products
                        <a href="#1" class="font-size-14 btn btn-sm py-1 px-3" style="background-color:var(--orange); color:var(--light);">
                           See All
                        </a>
                     </h3>
                  </div>

                  @php
                  $featured_products = Cache::remember('featured_products', 3600, function () {
                  return filter_products(\App\Models\Product::where('published', 1)->where('featured', '1'))->limit(12)->get();
                  });
                  @endphp

                  @if (count($featured_products) > 0)
                  <ul class="list-unstyled products-group">
                     
                     @foreach ($featured_products as $key => $product)
                     <li class="product-item product-item__list row no-gutters mb-6 remove-divider">
                        <div class="col-auto">
                           <a href="{{ route('product', $product->slug) }}" class="d-block width-75 text-center"><img class="img-fluid" src="assets_home/img/75X75/img1.jpg" alt="Image Description"></a>
                        </div>
                        <div class="col pl-4 d-flex flex-column">
                           <h5 class="product-item__title mb-0"><a href="{{ route('product', $product->slug) }}" class="text-blue font-weight-bold">
                           
                        </a></h5>
                           <div class="prodcut-price mt-auto">
                              <div class="font-size-15">{{ home_discounted_base_price($product) }}</div>
                           </div>
                        </div>
                     </li>
                    @endforeach
                     
                  </ul>
                  @endif
               </div>
            </div>
            <div class="col-wd-3 col-lg-4">
               <div class="border-bottom border-color-1 mb-5">
                  <h3 class="d-flex align-items-center justify-content-between section-title section-title__sm mb-0 pb-2 font-size-18">On sale Products
                     <a href="#1" class="font-size-14 btn btn-sm py-1 px-3" style="background-color:var(--orange); color:var(--light);">
                        See All
                     </a>
                  </h3>
               </div>
               <ul class="list-unstyled products-group">
                  <li class="product-item product-item__list row no-gutters mb-6 remove-divider">
                     <div class="col-auto">
                        <a href="#1" class="d-block width-75 text-center"><img class="img-fluid" src="assets_home/img/75X75/img4.jpg" alt="Image Description"></a>
                     </div>
                     <div class="col pl-4 d-flex flex-column">
                        <h5 class="product-item__title mb-0"><a href="#1" class="text-blue font-weight-bold">Yellow
                              Earphones Waterproof with Bluetooth</a></h5>
                        <div class="prodcut-price mt-auto flex-horizontal-center">
                           <ins class="font-size-15 text-decoration-none">Rs.&nbsp;110.00</ins>
                           <del class="font-size-12 text-gray-9 ml-2">Rs.&nbsp;250.00</del>
                        </div>
                     </div>
                  </li>
                  <li class="product-item product-item__list row no-gutters mb-6 remove-divider">
                     <div class="col-auto">
                        <a href="#1" class="d-block width-75 text-center"><img class="img-fluid" src="assets_home/img/75X75/img5.jpg" alt="Image Description"></a>
                     </div>
                     <div class="col pl-4 d-flex flex-column">
                        <h5 class="product-item__title mb-0"><a href="#1" class="text-blue font-weight-bold">Camera
                              C430W 4k Waterproof</a></h5>
                        <div class="prodcut-price mt-auto flex-horizontal-center">
                           <ins class="font-size-15 text-decoration-none">Rs.&nbsp;899.00</ins>
                           <del class="font-size-12 text-gray-9 ml-2">Rs.&nbsp;1200.00</del>
                        </div>
                     </div>
                  </li>
                  <li class="product-item product-item__list row no-gutters mb-6 remove-divider">
                     <div class="col-auto">
                        <a href="#1" class="d-block width-75 text-center"><img class="img-fluid" src="assets_home/img/75X75/img6.jpg" alt="Image Description"></a>
                     </div>
                     <div class="col pl-4 d-flex flex-column">
                        <h5 class="product-item__title mb-0"><a href="#1" class="text-blue font-weight-bold">Smartphone
                              6S 32GB LTE</a></h5>
                        <div class="prodcut-price mt-auto flex-horizontal-center">
                           <ins class="font-size-15 text-decoration-none">Rs.&nbsp;2100.00</ins>
                           <del class="font-size-12 text-gray-9 ml-2">Rs.&nbsp;3299.00</del>
                        </div>
                     </div>
                  </li>
               </ul>
            </div>
            <div class="col-wd-3 col-lg-4">
               <div class="border-bottom border-color-1 mb-5">
                  <h3 class="d-flex align-items-center justify-content-between section-title section-title__sm mb-0 pb-2 font-size-18">Top Rated Products
                     <a href="#1" class="font-size-14 btn btn-sm py-1 px-3" style="background-color:var(--orange); color:var(--light);">
                        See All
                     </a>
                  </h3>
               </div>
               <ul class="list-unstyled products-group">
                  <li class="product-item product-item__list row no-gutters mb-6 remove-divider">
                     <div class="col-auto">
                        <a href="#1" class="d-block width-75 text-center"><img class="img-fluid" src="assets_home/img/75X75/img7.jpg" alt="Image Description"></a>
                     </div>
                     <div class="col pl-4 d-flex flex-column">
                        <h5 class="product-item__title mb-0"><a href="#1" class="text-blue font-weight-bold">Smartwatch
                              2.0 LTE Wifi Waterproof</a></h5>

                        <div class="prodcut-price mt-auto">
                           <div class="font-size-15">Rs.&nbsp;725.00</div>
                        </div>
                     </div>
                  </li>
                  <li class="product-item product-item__list row no-gutters mb-6 remove-divider">
                     <div class="col-auto">
                        <a href="#1" class="d-block width-75 text-center"><img class="img-fluid" src="assets_home/img/75X75/img8.jpg" alt="Image Description"></a>
                     </div>
                     <div class="col pl-4 d-flex flex-column">
                        <h5 class="product-item__title mb-0"><a href="#1" class="text-blue font-weight-bold">22Mps
                              Camera 6200U with 500GB SDcard</a></h5>

                        <div class="prodcut-price mt-auto">
                           <div class="font-size-15">Rs.&nbsp;2999.00</div>
                        </div>
                     </div>
                  </li>
                  <li class="product-item product-item__list row no-gutters mb-6 remove-divider">
                     <div class="col-auto">
                        <a href="#1" class="d-block width-75 text-center"><img class="img-fluid" src="assets_home/img/75X75/img9.jpg" alt="Image Description"></a>
                     </div>
                     <div class="col pl-4 d-flex flex-column">
                        <h5 class="product-item__title mb-0"><a href="#1" class="text-blue font-weight-bold">Full Color
                              LaserJet Pro M452dn</a></h5>

                        <div class="prodcut-price mt-auto">
                           <div class="font-size-15">Rs.&nbsp;439.00</div>
                        </div>
                     </div>
                  </li>
               </ul>
            </div>
            <div class="col-wd-3 d-none d-wd-block">
               <a href="#1" class="d-block"><img class="img-fluid" src="assets_home/img/330X360/img1.jpg" alt="Image Description"></a>
            </div>
         </div>
      </div> -->

      <div class="bg-primary py-3">
         <div class="container">
            <div class="row align-items-center">
               <div class="col-lg-7 mb-md-3 mb-lg-0">
                  <div class="row align-items-center">
                     <div class="col-auto flex-horizontal-center">
                        <i class="ec ec-newsletter font-size-40"></i>
                        <h2 class="font-size-20 mb-0 ml-3">Sign up to Newsletter</h2>
                     </div>
                     <div class="col my-4 my-md-0">
                        <h5 class="font-size-15 ml-4 mb-0">...and receive <strong>Rs.&nbsp;20 coupon for first
                              shopping.</strong></h5>
                     </div>
                  </div>
               </div>
               <div class="col-lg-5">
                  <form class="js-validate js-form-message" method="POST" action="{{ route('subscribers.store') }}">
                     @csrf
                     <label class="sr-only" for="subscribeSrEmail">Email address</label>
                     <div class="input-group input-group-pill">
                        <input type="email" class="form-control border-0 height-40" name="email" id="subscribeSrEmail"
                           placeholder="Email address" aria-label="Email address" aria-describedby="subscribeButton"
                           required="" data-msg="Please enter a valid email address.">
                        <div class="input-group-append">
                           <button type="submit" class="btn btn-dark btn-sm-wide height-40 py-2">Subscribe
                              Now</button>
                        </div>
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>
      <div class="pt-8 pb-4 bg-gray-13">
         <div class="container mt-1">
            <div class="row">
               <div class="col-lg-5">
                  <div class="mb-6">
                     <a href="{{ route('home') }}" class="d-inline-block">
                        @if(get_setting('footer_logo') != null)
                        <img src="{{ uploaded_asset(get_setting('footer_logo')) }}" alt="{{ env('APP_NAME') }}">
                        @else
                        <img src="{{ static_asset('uploads/all/A4wL7OIhc2UXESp9HCqT4nibfm9atF5LQ5qBdTNQ.png') }}"
                           alt="{{ env('APP_NAME') }}">
                        @endif
                     </a>
                  </div>

                  <div class="mb-4 ">
                     <div class="row no-gutters">
                        <div class="col-auto">
                           <i class="fas fa-phone-alt custom_ico"></i>
                        </div>
                        <div class="col pl-3">
                           <div class="font-size-13 font-weight-light">Got questions? Call us 24/7!</div>
                           <a href="tel:{{ get_setting('contact_phone') }}"
                              class="font-size-20 text-gray-90 foot-num">{{ get_setting('contact_phone') }}</a>
                        </div>
                     </div>
                  </div>
                  <div class="mb-4">
                     <h6 class="mb-1 font-weight-bold foot-clr-wt">Contact info</h6>
                     <address class="foot-clr-wt">
                        {{ get_setting('contact_address',null,App::getLocale()) }}
                     </address>
                  </div>
                  <div class="mb-4">
                     <h6 class="mb-1 font-weight-bold foot-clr-wt">Email</h6>
                     <address class="foot-clr-wt">
                        <a href="mailto:{{ get_setting('contact_email') }}" class="text-reset">{{
                           get_setting('contact_email') }}</a>
                     </address>
                  </div>

                  <div class="my-4 my-md-4">
                     <ul class="list-inline mb-0 opacity-7">
                        @if ( get_setting('facebook_link') != null )
                        <li class="list-inline-item mr-0">
                           <a class="btn font-size-20 btn-icon btn-soft-dark btn-bg-transparent rounded-circle"
                              href="{{ get_setting('facebook_link') }}">
                              <span class="fab fa-facebook-f btn-icon__inner"></span>
                           </a>
                        </li>
                        @endif

                        @if ( get_setting('twitter_link') != null )
                        <li class="list-inline-item mr-0">
                           <a class="btn font-size-20 btn-icon btn-soft-dark btn-bg-transparent rounded-circle"
                              href="{{ get_setting('twitter_link') }}">
                              <span class="fab fa-twitter btn-icon__inner"></span>
                           </a>
                        </li>
                        @endif

                        @if ( get_setting('instagram_link') != null )
                        <li class="list-inline-item mr-0">
                           <a href="{{ get_setting('instagram_link') }}" target="_blank"
                              class="btn font-size-20 btn-icon btn-soft-dark btn-bg-transparent rounded-circle social-foot">
                              <span class="fab fa-instagram btn-icon__inner"></span>
                           </a>
                        </li>
                        @endif

                        @if ( get_setting('linkedin_link') != null )
                        <li class="list-inline-item mr-0">
                           <a href="{{ get_setting('linkedin_link') }}" target="_blank"
                              class="btn font-size-20 btn-icon btn-soft-dark btn-bg-transparent rounded-circle social-foot">
                              <span class="fab fa-linkedin-in btn-icon__inner"></span>
                           </a>
                        </li>
                        @endif
                        @if ( get_setting('youtube_link') != null )
                        <li class="list-inline-item mr-0">
                           <a href="{{ get_setting('youtube_link') }}" target="_blank"
                              class="btn font-size-20 btn-icon btn-soft-dark btn-bg-transparent rounded-circle social-foot">
                              <span class="fab fa-youtube btn-icon__inner"></span>
                           </a>
                        </li>
                        @endif
                     </ul>
                  </div>

               </div>
               <div class="col-lg-7">
                  <div class="row">
                     <div class="col-12 col-md mb-4 mb-md-0">
                        <h6 class="mb-3 font-weight-bold">Find it Fast</h6>
                        <ul class="list-group list-group-flush list-group-borderless mb-0 list-group-transparent">
                           @if ( get_setting('widget_one_labels',null,App::getLocale()) != null )
                           @php $count = 0; @endphp
                           @foreach (json_decode( get_setting('widget_one_labels',null,App::getLocale()), true) as $key
                           => $value)
                           @php
                           $count++;
                           if($count < 6){ @endphp <li>
                              <a class="list-group-item list-group-item-action"
                                 href="{{ json_decode( get_setting('widget_one_links'), true)[$key] }}">
                                 {{ $value }}
                              </a>
                              </li>
                              @php } @endphp
                              @endforeach
                              @endif
                        </ul>
                     </div>
                     <div class="col-12 col-md mb-4 mb-md-0">
                        <ul
                           class="list-group list-group-flush list-group-borderless mb-0 list-group-transparent mt-md-6">
                           @if ( get_setting('widget_one_labels',null,App::getLocale()) != null )
                           @php $count = 0; @endphp
                           @foreach (json_decode( get_setting('widget_one_labels',null,App::getLocale()), true) as $key
                           => $value)
                           @php
                           $count++;
                           if($count >= 6){
                           @endphp
                           <li>
                              <a class="list-group-item list-group-item-action"
                                 href="{{ json_decode( get_setting('widget_one_links'), true)[$key] }}">
                                 {{ $value }}
                              </a>
                           </li>
                           @php } @endphp
                           @endforeach
                           @endif
                        </ul>
                     </div>
                     <div class="col-12 col-md mb-4 mb-md-0">
                        <h6 class="mb-3 font-weight-bold">Customer Care</h6>
                        <ul class="list-group list-group-flush list-group-borderless mb-0 list-group-transparent">
                           @if (Auth::check())
                           <li><a class="list-group-item list-group-item-action" href="{{ route('logout') }}">Logout</a>
                           </li>
                           @else
                           <li>
                              <a class="list-group-item list-group-item-action" href="{{ route('user.login') }}">
                                 Login
                              </a>

                           </li>
                           @endif
                           <li><a class="list-group-item list-group-item-action"
                                 href="{{ route('purchase_history.index') }}">Order History</a></li>
                           <li><a class="list-group-item list-group-item-action"
                                 href="{{ route('orders.track') }}">Order Tracking</a></li>
                           <li><a class="list-group-item list-group-item-action"
                                 href="{{ route('wishlists.index') }}">Wish List</a></li>
                           <li><a class="list-group-item list-group-item-action" href="{{ route('terms') }}">Term &
                                 Condition</a></li>
                           <li><a class="list-group-item list-group-item-action"
                                 href="{{ route('privacypolicy') }}">Privacy Policy</a></li>
                           <li><a class="list-group-item list-group-item-action"
                                 href="{{ route('supportpolicy') }}">Support Policy</a></li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="bg-gray-14 py-2">
         <div class="container">
            <div class="flex-center-between d-block d-md-flex">
               <div class="mb-3 mb-md-0"> {!! get_setting('frontend_copyright_text',null,App::getLocale()) !!}</div>
               <div class="text-md-right">
                  @if ( get_setting('payment_method_images') != null )
                  @foreach (explode(',', get_setting('payment_method_images')) as $key => $value)
                  <span class="d-inline-block bg-white border rounded p-1">
                     <img class="max-width-5" src="{{ uploaded_asset($value) }}">
                  </span>

                  @endforeach
                  @endif

               </div>
            </div>
         </div>
      </div>
   </footer>
   <!-- footer Section End  -->


   <a class="js-go-to u-go-to" href="#" data-position='{"bottom": 15, "right": 15 }' data-type="fixed"
      data-offset-top="400" data-compensation="#header" data-show-effect="slideInUp" data-hide-effect="slideOutDown">
      <span class="fas fa-arrow-up u-go-to__inner"></span>
   </a>
   <script src="{{ static_asset('assets_home/js/jquery.min.js') }}"></script>
   <script src="{{ static_asset('assets_home/js/jquery-migrate.min.js') }}"></script>
   <script src="{{ static_asset('assets_home/js/bootstrap.min.js') }}"></script>
   <script src="{{ static_asset('assets_home/js/jquery.countdown.min.js') }}"></script>
   <script src="{{ static_asset('assets_home/js/megamenu.js') }}"></script>
   <script src="{{ static_asset('assets_home/js/jquery.mCustomScrollbar.concat.min.js') }}"></script>
   <script src="{{ static_asset('assets_home/js/jquery.validate.min.js') }}"></script>
   <script src="{{ static_asset('assets_home/js/jquery.fancybox.min.js') }}"></script>
   <script src="{{ static_asset('assets_home/js/slick.js') }}"></script>
   <script src="{{ static_asset('assets_home/js/core.js') }}"></script>
   <script src="{{ static_asset('assets_home/js/countdown.js') }}"></script>
   <script src="{{ static_asset('assets_home/js/header.js') }}"></script>
   <script src="{{ static_asset('assets_home/js/unfold.js') }}"></script>
   <script src="{{ static_asset('assets_home/js/focus-state.js') }}"></script>
   <script src="{{ static_asset('assets_home/js/malihu-scrollbar.js') }}"></script>
   <script src="{{ static_asset('assets_home/js/validation.js') }}"></script>
   <script src="{{ static_asset('assets_home/js/fancybox.js') }}"></script>
   <script src="{{ static_asset('assets_home/js/onscroll-animation.js') }}"></script>
   <script src="{{ static_asset('assets_home/js/slick-carousel.js') }}"></script>
   <script src="{{ static_asset('assets_home/js/show-animation.js') }}"></script>
   <script src="{{ static_asset('assets_home/js/script.js') }}"></script>
</body>

</html>