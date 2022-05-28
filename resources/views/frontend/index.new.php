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

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="{{ static_asset('assets_home/css/font-family.css') }}">
    <link rel="stylesheet" href="{{ static_asset('assets_home/css/animate.min.css') }}">
    <link rel="stylesheet" href="{{ static_asset('assets_home/css/hs.megamenu.css') }}">
    <link rel="stylesheet" href="{{ static_asset('assets_home/css/jquery.mCustomScrollbar.css') }}">
    <link rel="stylesheet" href="{{ static_asset('assets_home/css/jquery.fancybox.css') }}">
    <link rel="stylesheet" href="{{ static_asset('assets_home/css/slick.css') }}">
    <link rel="stylesheet" href="{{ static_asset('assets_home/css/bootstrap-select.min.css') }}">
    <link rel="stylesheet" href="{{ static_asset('assets_home/css/style.css') }}">
    <style>
        .custom_card {
            align-items: center !important;
            justify-content: center;
            padding: 0 !important;
            border-radius: 5px;
            overflow: hidden !important;

        }
    </style>


</head>

<body>
    <!-- Header Section Start -->
    <header id="header" class="u-header u-header-left-aligned-nav">
        <div class="u-header__section">
            <div class="u-header-topbar py-2 d-none d-xl-block">
                <div class="container">
                    <div class="d-flex align-items-center">
                        <div class="topbar-left">
                            <a href="#" class="text-gray-110 font-size-13 hover-on-dark">Welcome to Worldwide Shopplers
                                Store</a>
                        </div>
                        <div class="topbar-right ml-auto">
                            <ul class="list-inline mb-0">
                                <li class="list-inline-item mr-0 u-header-topbar__nav-item u-header-topbar__nav-item-border">
                                    <a href="contact-v2.html" class="u-header-topbar__nav-link"><i class="ec ec-map-pointer mr-1"></i> Store Locator</a>
                                </li>
                                <li class="list-inline-item mr-0 u-header-topbar__nav-item u-header-topbar__nav-item-border">
                                    <a href="#1" class="u-header-topbar__nav-link"><i class="ec ec-transport mr-1"></i> Track
                                        Your Order</a>
                                </li>
                                <li class="list-inline-item mr-0 u-header-topbar__nav-item u-header-topbar__nav-item-border u-header-topbar__nav-item-no-border u-header-topbar__nav-item-border-single">
                                    <div class="d-flex align-items-center">
                                        <div class="position-relative">
                                            <a id="languageDropdownInvoker" class="dropdown-nav-link dropdown-toggle d-flex align-items-center u-header-topbar__nav-link font-weight-normal" href="javascript:;" role="button" aria-controls="languageDropdown" aria-haspopup="true" aria-expanded="false" data-unfold-event="hover" data-unfold-target="#languageDropdown" data-unfold-type="css-animation" data-unfold-duration="300" data-unfold-delay="300" data-unfold-hide-on-scroll="true" data-unfold-animation-in="slideInUp" data-unfold-animation-out="fadeOut">
                                                <span class="d-inline-block d-sm-none">US</span>
                                                <span class="d-none d-sm-inline-flex align-items-center"><i class="ec ec-dollar mr-1"></i> Dollar (US) &nbsp; <i class="fa fa-angle-down"></i></span>
                                            </a>
                                            <div id="languageDropdown" class="dropdown-menu dropdown-unfold" aria-labelledby="languageDropdownInvoker">
                                                <a class="dropdown-item active" href="#">English</a>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="list-inline-item mr-0 u-header-topbar__nav-item u-header-topbar__nav-item-border">
                                    <a id="sidebarNavToggler" href="javascript:;" role="button" class="u-header-topbar__nav-link" aria-controls="sidebarContent" aria-haspopup="true" aria-expanded="false" data-unfold-event="click" data-unfold-hide-on-scroll="false" data-unfold-target="#sidebarContent" data-unfold-type="css-animation" data-unfold-animation-in="fadeInRight" data-unfold-animation-out="fadeOutRight" data-unfold-duration="500">
                                        <i class="ec ec-user mr-1"></i> Register <span class="text-gray-50">or</span> Sign in
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="py-2 py-xl-5 bg-primary-down-lg">
                <div class="container my-0dot5 my-xl-0">
                    <div class="row align-items-center">
                        <div class="col-auto">
                            <nav class="navbar navbar-expand u-header__navbar py-0 justify-content-xl-between max-width-270 min-width-270">
                                <a class="order-1 order-xl-0 navbar-brand u-header__navbar-brand u-header__navbar-brand-center" href="#" aria-label="Electro">
                                    @if(get_setting('topbar_banner') != null)
                                    <!-- <img src="assets_home/img/logos.png"> -->
                                    <img src="{{ uploaded_asset(get_setting('topbar_banner')) }}" class="w-100 mw-100 h-50px h-lg-auto img-fit">
                                    @endif
                                </a>

                            </nav>

                        </div>
                        <div class="col d-none d-xl-block">
                            <form class="js-focus-state">
                                <label class="sr-only" for="searchproduct">Search</label>
                                <div class="input-group">
                                    <input type="email" class="form-control py-2 pl-5 font-size-15 border-right-0 height-40 border-width-2 rounded-left-pill border-primary" name="email" id="searchproduct-item" placeholder="Search for Products" aria-label="Search for Products" aria-describedby="searchProduct1" required>
                                    <div class="input-group-append">
                                        <select class="js-select selectpicker dropdown-select custom-search-categories-select" data-style="btn height-40 text-gray-60 font-weight-normal border-top border-bottom border-left-0 rounded-0 border-primary border-width-2 pl-0 pr-5 py-2">
                                            <option value="one" selected>All Categories</option>
                                            <option value="two">Two</option>
                                            <option value="three">Three</option>
                                            <option value="four">Four</option>
                                        </select>
                                        <button class="btn btn-primary height-40 py-2 px-3 rounded-right-pill" type="button" id="searchProduct1">
                                            <span class="ec ec-search font-size-24"></span>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="col col-xl-auto text-right text-xl-left pl-0 pl-xl-3 position-static">
                            <div class="d-inline-flex">
                                <ul class="d-flex list-unstyled mb-0 align-items-center">
                                    <li class="col d-xl-none px-2 px-sm-3 position-static">
                                        <a id="searchClassicInvoker" class="font-size-22 text-gray-90 text-lh-1 btn-text-secondary" href="javascript:;" role="button" data-toggle="tooltip" data-placement="top" title="Search" aria-controls="searchClassic" aria-haspopup="true" aria-expanded="false" data-unfold-target="#searchClassic" data-unfold-type="css-animation" data-unfold-duration="300" data-unfold-delay="300" data-unfold-hide-on-scroll="true" data-unfold-animation-in="slideInUp" data-unfold-animation-out="fadeOut">
                                            <span class="ec ec-search"></span>
                                        </a>
                                        <div id="searchClassic" class="dropdown-menu dropdown-unfold dropdown-menu-right left-0 mx-2" aria-labelledby="searchClassicInvoker">
                                            <form class="js-focus-state input-group px-3">
                                                <input class="form-control" type="search" placeholder="Search Product">
                                                <div class="input-group-append">
                                                    <button class="btn btn-primary px-3" type="button"><i class="font-size-18 ec ec-search"></i></button>
                                                </div>
                                            </form>
                                        </div>
                                    </li>
                                    <li class="col d-none d-xl-block"><a href="#1" class="text-gray-90" data-toggle="tooltip" data-placement="top" title="Compare"><i class="font-size-22 ec ec-compare"></i></a>
                                    </li>
                                    <li class="col d-none d-xl-block"><a href="#1" class="text-gray-90" data-toggle="tooltip" data-placement="top" title="Favorites"><i class="font-size-22 ec ec-favorites"></i></a>
                                    </li>
                                    <li class="col d-xl-none px-2 px-sm-3"><a href="#1" class="text-gray-90" data-toggle="tooltip" data-placement="top" title="My Account"><i class="font-size-22 ec ec-user"></i></a></li>
                                    <li class="col pr-xl-0 px-2 px-sm-3 d-xl-none">
                                        <a href="#1" class="text-gray-90 position-relative d-flex " data-toggle="tooltip" data-placement="top" title="Cart">
                                            <i class="font-size-22 ec ec-shopping-bag"></i>
                                            <span class="bg-lg-down-black width-22 height-22 bg-primary position-absolute d-flex align-items-center justify-content-center rounded-circle left-12 top-8 font-weight-bold font-size-12">2</span>
                                            <span class="d-none d-xl-block font-weight-bold font-size-16 text-gray-90 ml-3">Rs.&nbsp;1785.00</span>
                                        </a>
                                    </li>
                                    <li class="col pr-xl-0 px-2 px-sm-3 d-none d-xl-block">
                                        <div id="basicDropdownHoverInvoker" class="text-gray-90 position-relative d-flex " data-toggle="tooltip" data-placement="top" title="Cart" aria-controls="basicDropdownHover" aria-haspopup="true" aria-expanded="false" data-unfold-event="click" data-unfold-target="#basicDropdownHover" data-unfold-type="css-animation" data-unfold-duration="300" data-unfold-delay="300" data-unfold-hide-on-scroll="true" data-unfold-animation-in="slideInUp" data-unfold-animation-out="fadeOut">
                                            <i class="font-size-22 ec ec-shopping-bag"></i>
                                            <span class="bg-lg-down-black width-22 height-22 bg-primary position-absolute d-flex align-items-center justify-content-center rounded-circle left-12 top-8 font-weight-bold font-size-12">2</span>
                                            <span class="d-none d-xl-block font-weight-bold font-size-16 text-gray-90 ml-3">Rs.&nbsp;1785.00</span>
                                        </div>
                                        <div id="basicDropdownHover" class="cart-dropdown dropdown-menu dropdown-unfold border-top border-top-primary mt-3 border-width-2 border-left-0 border-right-0 border-bottom-0 left-auto right-0" aria-labelledby="basicDropdownHoverInvoker">
                                            <ul class="list-unstyled px-3 pt-3">
                                                <li class="border-bottom pb-3 mb-3">
                                                    <div class="">
                                                        <ul class="list-unstyled row mx-n2">
                                                            <li class="px-2 col-auto">
                                                                <img class="img-fluid" src="assets_home/img/75X75/img1.jpg" alt="Image Description">
                                                            </li>
                                                            <li class="px-2 col">
                                                                <h5 class="text-blue font-size-14 font-weight-bold">Ultra Wireless S50
                                                                    Headphones S50 with Bluetooth</h5>
                                                                <span class="font-size-14">1 × Rs.&nbsp;1,100.00</span>
                                                            </li>
                                                            <li class="px-2 col-auto">
                                                                <a href="#" class="text-gray-90"><i class="ec ec-close-remove"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </li>
                                                <li class="border-bottom pb-3 mb-3">
                                                    <div class="">
                                                        <ul class="list-unstyled row mx-n2">
                                                            <li class="px-2 col-auto">
                                                                <img class="img-fluid" src="assets_home/img/75X75/img2.jpg" alt="Image Description">
                                                            </li>
                                                            <li class="px-2 col">
                                                                <h5 class="text-blue font-size-14 font-weight-bold">Widescreen NX Mini
                                                                    F1 SMART NX</h5>
                                                                <span class="font-size-14">1 × Rs.&nbsp;685.00</span>
                                                            </li>
                                                            <li class="px-2 col-auto">
                                                                <a href="#" class="text-gray-90"><i class="ec ec-close-remove"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </li>
                                            </ul>
                                            <div class="flex-center-between px-4 pt-2">
                                                <a href="#1" class="btn btn-soft-secondary mb-3 mb-md-0 font-weight-normal px-5 px-md-4 px-lg-5">View
                                                    cart</a>
                                                <a href="#1shop/checkout.html" class="btn btn-primary-dark-w ml-md-2 px-5 px-md-4 px-lg-5">Checkout</a>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="d-none d-xl-block container">
                <div class="row">
                    <div class="col-md-auto d-none d-xl-block">
                        <div class="max-width-270 min-width-270">
                            <div id="basicsAccordion">
                                <div class="card border-0">
                                    <div class="card-header card-collapse border-0" id="basicsHeadingOne">
                                        <button type="button" class="btn-link btn-remove-focus btn-block d-flex card-btn py-3 text-lh-1 px-4 shadow-none btn-primary rounded-top-lg border-0 font-weight-bold text-gray-90" data-toggle="collapse" data-target="#basicsCollapseOne" aria-expanded="true" aria-controls="basicsCollapseOne">
                                            <span class="ml-0 text-gray-90 mr-2">
                                                <span class="fa fa-list-ul"></span>
                                            </span>
                                            <span class="pl-1 text-gray-90">All Departments</span>
                                        </button>
                                    </div>
                                    <div id="basicsCollapseOne" class="collapse show vertical-menu" aria-labelledby="basicsHeadingOne" data-parent="#basicsAccordion">
                                        <div class="card-body p-0">
                                            <nav class="js-mega-menu navbar navbar-expand-xl u-header__navbar u-header__navbar--no-space hs-menu-initialized">
                                                <div id="navBar" class="collapse navbar-collapse u-header__navbar-collapse">
                                                    <ul class="navbar-nav u-header__navbar-nav">
                                                        <li class="nav-item u-header__nav-item" data-event="hover" data-position="left">
                                                            <a href="#" class="nav-link u-header__nav-link font-weight-bold">Value of
                                                                the Day</a>
                                                        </li>
                                                        <li class="nav-item u-header__nav-item" data-event="hover" data-position="left">
                                                            <a href="#" class="nav-link u-header__nav-link font-weight-bold">Top 100
                                                                Offers</a>
                                                        </li>
                                                        <li class="nav-item u-header__nav-item" data-event="hover" data-position="left">
                                                            <a href="#" class="nav-link u-header__nav-link font-weight-bold">New
                                                                Arrivals</a>
                                                        </li>
                                                        <li class="nav-item hs-has-mega-menu u-header__nav-item" data-event="hover" data-animation-in="slideInUp" data-animation-out="fadeOut" data-position="left">
                                                            <a id="basicMegaMenu" class="nav-link u-header__nav-link u-header__nav-link-toggle" href="javascript:;" aria-haspopup="true" aria-expanded="false">Computers
                                                                & Accessories</a>
                                                            <div class="hs-mega-menu vmm-tfw u-header__sub-menu" aria-labelledby="basicMegaMenu">
                                                                <div class="vmm-bg">
                                                                    <img class="img-fluid" src="assets_home/img/500X400/img1.png" alt="Image Description">
                                                                </div>
                                                                <div class="row u-header__mega-menu-wrapper">
                                                                    <div class="col mb-3 mb-sm-0">
                                                                        <span class="u-header__sub-menu-title">Computers &
                                                                            Accessories</span>
                                                                        <ul class="u-header__sub-menu-nav-group mb-3">
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">All Computers & Accessories</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Laptops, Desktops & Monitors</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Printers & Ink</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Networking & Internet Devices</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Computer Accessories</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Software</a></li>
                                                                            <li>
                                                                                <a class="nav-link u-header__sub-menu-nav-link u-nav-divider border-top pt-2 flex-column align-items-start" href="#">
                                                                                    <div class="">All Shopplers</div>
                                                                                    <div class="u-nav-subtext font-size-11 text-gray-30">
                                                                                        Discover more products</div>
                                                                                </a>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                    <div class="col mb-3 mb-sm-0">
                                                                        <span class="u-header__sub-menu-title">Office & Stationery</span>
                                                                        <ul class="u-header__sub-menu-nav-group">
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">All Office & Stationery</a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="nav-item hs-has-mega-menu u-header__nav-item" data-event="hover" data-position="left">
                                                            <a id="basicMegaMenu1" class="nav-link u-header__nav-link u-header__nav-link-toggle" href="javascript:;" aria-haspopup="true" aria-expanded="false">Cameras,
                                                                Audio & Video</a>
                                                            <div class="hs-mega-menu vmm-tfw u-header__sub-menu" aria-labelledby="basicMegaMenu1">
                                                                <div class="vmm-bg">
                                                                    <img class="img-fluid" src="assets_home/img/500X400/img4.png" alt="Image Description">
                                                                </div>
                                                                <div class="row u-header__mega-menu-wrapper">
                                                                    <div class="col mb-3 mb-sm-0">
                                                                        <span class="u-header__sub-menu-title">Cameras &
                                                                            Photography</span>
                                                                        <ul class="u-header__sub-menu-nav-group mb-3">
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Lenses</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Camera Accessories</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Security & Surveillance</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Binoculars & Telescopes</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Camcorders</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Software</a></li>
                                                                            <li>
                                                                                <a class="nav-link u-header__sub-menu-nav-link u-nav-divider border-top pt-2 flex-column align-items-start" href="#">
                                                                                    <div class="">All Shopplers</div>
                                                                                    <div class="u-nav-subtext font-size-11 text-gray-30">
                                                                                        Discover more products</div>
                                                                                </a>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                    <div class="col mb-3 mb-sm-0">
                                                                        <span class="u-header__sub-menu-title">Audio & Video</span>
                                                                        <ul class="u-header__sub-menu-nav-group">
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">All Audio & Video</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Headphones & Speakers</a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="nav-item hs-has-mega-menu u-header__nav-item" data-event="hover" data-position="left">
                                                            <a id="basicMegaMenu2" class="nav-link u-header__nav-link u-header__nav-link-toggle" href="javascript:;" aria-haspopup="true" aria-expanded="false">Mobiles &
                                                                Tablets</a>
                                                            <div class="hs-mega-menu vmm-tfw u-header__sub-menu vmm-bg-extended" aria-labelledby="basicMegaMenu2">
                                                                <div class="vmm-bg">
                                                                    <img class="img-fluid" src="assets_home/img/500X400/img3.png" alt="Image Description">
                                                                </div>
                                                                <div class="row u-header__mega-menu-wrapper">
                                                                    <div class="col mb-3 mb-sm-0">
                                                                        <span class="u-header__sub-menu-title">Mobiles & Tablets</span>
                                                                        <ul class="u-header__sub-menu-nav-group mb-3">
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">All Mobile Phones</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Smartphones</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Refurbished Mobiles</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link border-top pt-2" href="#">All Mobile Accessories</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Cases & Covers</a></li>
                                                                            <li>
                                                                                <a class="nav-link u-header__sub-menu-nav-link u-nav-divider border-top pt-2 flex-column align-items-start" href="#">
                                                                                    <div class="">All Shopplers</div>
                                                                                    <div class="u-nav-subtext font-size-11 text-gray-30">
                                                                                        Discover more products</div>
                                                                                </a>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                    <div class="col mb-3 mb-sm-0">
                                                                        <ul class="u-header__sub-menu-nav-group">
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">All Tablets</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Tablet Accessories</a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="nav-item hs-has-mega-menu u-header__nav-item" data-event="hover" data-position="left">
                                                            <a id="basicMegaMenu3" class="nav-link u-header__nav-link u-header__nav-link-toggle" href="javascript:;" aria-haspopup="true" aria-expanded="false">Movies,
                                                                Music & Video Game</a>
                                                            <div class="hs-mega-menu vmm-tfw u-header__sub-menu" aria-labelledby="basicMegaMenu3">
                                                                <div class="vmm-bg">
                                                                    <img class="img-fluid" src="assets_home/img/500X400/img2.png" alt="Image Description">
                                                                </div>
                                                                <div class="row u-header__mega-menu-wrapper">
                                                                    <div class="col mb-3 mb-sm-0">
                                                                        <span class="u-header__sub-menu-title">Movies & TV Shows</span>
                                                                        <ul class="u-header__sub-menu-nav-group mb-3">
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">All Movies & TV Shows</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">All English</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link border-bottom pb-3" href="#">All Hindi</a></li>
                                                                        </ul>
                                                                        <span class="u-header__sub-menu-title">Video Games</span>
                                                                        <ul class="u-header__sub-menu-nav-group">
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">PC
                                                                                    Games</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Consoles</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Accessories</a></li>
                                                                        </ul>
                                                                    </div>
                                                                    <div class="col mb-3 mb-sm-0">
                                                                        <span class="u-header__sub-menu-title">Music</span>
                                                                        <ul class="u-header__sub-menu-nav-group">
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">All Music</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Indian Classical</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Musical Instruments</a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="nav-item hs-has-mega-menu u-header__nav-item" data-event="hover" data-position="left">
                                                            <a id="basicMegaMenu4" class="nav-link u-header__nav-link u-header__nav-link-toggle" href="javascript:;" aria-haspopup="true" aria-expanded="false">TV &
                                                                Audio</a>
                                                            <div class="hs-mega-menu vmm-tfw u-header__sub-menu" aria-labelledby="basicMegaMenu4">
                                                                <div class="vmm-bg">
                                                                    <img class="img-fluid" src="assets_home/img/500X400/img5.png" alt="Image Description">
                                                                </div>
                                                                <div class="row u-header__mega-menu-wrapper">
                                                                    <div class="col mb-3 mb-sm-0">
                                                                        <span class="u-header__sub-menu-title">Audio & Video</span>
                                                                        <ul class="u-header__sub-menu-nav-group mb-3">
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">All Audio & Video</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Televisions</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Headphones</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Speakers</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Audio & Video Accessories</a></li>
                                                                            <li>
                                                                                <a class="nav-link u-header__sub-menu-nav-link u-nav-divider border-top pt-2 flex-column align-items-start" href="#">
                                                                                    <div class="">Electro Home Appliances</div>
                                                                                    <div class="u-nav-subtext font-size-11 text-gray-30">
                                                                                        Available in select cities</div>
                                                                                </a>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                    <div class="col mb-3 mb-sm-0">
                                                                        <span class="u-header__sub-menu-title">Music</span>
                                                                        <ul class="u-header__sub-menu-nav-group">
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Televisions</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Headphones</a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="nav-item hs-has-mega-menu u-header__nav-item" data-event="hover" data-position="left">
                                                            <a id="basicMegaMenu5" class="nav-link u-header__nav-link u-header__nav-link-toggle" href="javascript:;" aria-haspopup="true" aria-expanded="false">Watches &
                                                                Eyewear</a>
                                                            <div class="hs-mega-menu vmm-tfw u-header__sub-menu" aria-labelledby="basicMegaMenu5">
                                                                <div class="vmm-bg">
                                                                    <img class="img-fluid" src="assets_home/img/500X400/img6.png" alt="Image Description">
                                                                </div>
                                                                <div class="row u-header__mega-menu-wrapper">
                                                                    <div class="col mb-3 mb-sm-0">
                                                                        <span class="u-header__sub-menu-title">Watches</span>
                                                                        <ul class="u-header__sub-menu-nav-group mb-3">
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">All Watches</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Men's Watches</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Women's Watches</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Premium Watches</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Deals on Watches</a></li>
                                                                        </ul>
                                                                    </div>
                                                                    <div class="col mb-3 mb-sm-0">
                                                                        <span class="u-header__sub-menu-title">Eyewear</span>
                                                                        <ul class="u-header__sub-menu-nav-group">
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Men's Sunglasses</a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="nav-item hs-has-mega-menu u-header__nav-item" data-event="hover" data-position="left">
                                                            <a id="basicMegaMenu3" class="nav-link u-header__nav-link u-header__nav-link-toggle" href="javascript:;" aria-haspopup="true" aria-expanded="false">Car,
                                                                Motorbike & Industrial</a>
                                                            <div class="hs-mega-menu vmm-tfw u-header__sub-menu" aria-labelledby="basicMegaMenu3">
                                                                <div class="vmm-bg">
                                                                    <img class="img-fluid" src="assets_home/img/500X400/img7.png" alt="Image Description">
                                                                </div>
                                                                <div class="row u-header__mega-menu-wrapper">
                                                                    <div class="col mb-3 mb-sm-0">
                                                                        <span class="u-header__sub-menu-title">Car & Motorbike</span>
                                                                        <ul class="u-header__sub-menu-nav-group mb-3">
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">All Cars & Bikes</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Car & Bike Care</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link border-bottom pb-3" href="#">Lubricants</a></li>
                                                                        </ul>
                                                                        <span class="u-header__sub-menu-title">Shop for Bike</span>
                                                                        <ul class="u-header__sub-menu-nav-group">
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Helmets & Gloves</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Bike Parts</a></li>
                                                                        </ul>
                                                                    </div>
                                                                    <div class="col mb-3 mb-sm-0">
                                                                        <span class="u-header__sub-menu-title">Industrial Supplies</span>
                                                                        <ul class="u-header__sub-menu-nav-group">
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">All Industrial Supplies</a></li>
                                                                            <li><a class="nav-link u-header__sub-menu-nav-link" href="#">Lab & Scientific</a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="nav-item hs-has-sub-menu u-header__nav-item" data-event="click" data-animation-in="slideInUp" data-animation-out="fadeOut" data-position="left">
                                                            <a id="homeMegaMenu" class="nav-link u-header__nav-link u-header__nav-link-toggle u-header__nav-link-toggle" href="javascript:;" aria-haspopup="true" aria-expanded="false" aria-labelledby="homeSubMenu">Accessories</a>
                                                            <ul id="homeSubMenu" class="hs-sub-menu u-header__sub-menu animated hs-position-left fadeOut" aria-labelledby="homeMegaMenu" style="min-width: 230px; display: none;">
                                                                <li class="hs-has-sub-menu">
                                                                    <a class="nav-link u-header__sub-menu-nav-link " href="index.html">Home-v1</a>
                                                                </li>
                                                                <li class="hs-has-sub-menu">
                                                                    <a class="nav-link u-header__sub-menu-nav-link " href="home-v2.html">Home-v2</a>
                                                                </li>
                                                                <li class="hs-has-sub-menu">
                                                                    <a class="nav-link u-header__sub-menu-nav-link " href="home-v3.html">Home-v3</a>
                                                                </li>
                                                                <li class="hs-has-sub-menu">
                                                                    <a class="nav-link u-header__sub-menu-nav-link " href="home-v4.html">Home-v4</a>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </nav>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>



                    <div class="col">
                        <nav class="js-mega-menu navbar navbar-expand-md u-header__navbar u-header__navbar--no-space">
                            <div id="navBar" class="collapse navbar-collapse u-header__navbar-collapse">
                                <ul class="navbar-nav u-header__navbar-nav">
                                    <li class="nav-item u-header__nav-item">
                                        <a class="nav-link u-header__nav-link" href="#" aria-haspopup="true" aria-expanded="false" aria-labelledby="pagesSubMenu">Home</a>
                                    </li>
                                    <li class="nav-item u-header__nav-item">
                                        <a class="nav-link u-header__nav-link" href="#" aria-haspopup="true" aria-expanded="false" aria-labelledby="pagesSubMenu">About</a>
                                    </li>
                                    <li class="nav-item hs-has-mega-menu u-header__nav-item" data-event="click" data-animation-in="slideInUp" data-animation-out="fadeOut" data-position="left">
                                        <a id="homeMegaMenu" class="nav-link u-header__nav-link u-header__nav-link-toggle text-sale" href="javascript:;" aria-haspopup="true" aria-expanded="false">Products &nbsp; <i class="fa fa-angle-down"></i></a>
                                        <div class="hs-mega-menu w-100 u-header__sub-menu" aria-labelledby="homeMegaMenu">
                                            <div class="row u-header__mega-menu-wrapper">
                                                <div class="col-md-3">
                                                    <span class="u-header__sub-menu-title">Products</span>
                                                    <ul class="u-header__sub-menu-nav-group">
                                                        <li><a href="#1" class="nav-link u-header__sub-menu-nav-link">Product1</a>
                                                        </li>
                                                        <li><a href="#1" class="nav-link u-header__sub-menu-nav-link">Product2</a>
                                                        </li>
                                                        <li><a href="#1.html" class="nav-link u-header__sub-menu-nav-link">Product3</a></li>
                                                        <li><a href="#1html" class="nav-link u-header__sub-menu-nav-link">Product4</a>
                                                        </li>
                                                    </ul>
                                                    <span class="u-header__sub-menu-title">Products</span>
                                                    <ul class="u-header__sub-menu-nav-group">
                                                        <li><a href="#1" class="nav-link u-header__sub-menu-nav-link">Product1</a>
                                                        </li>
                                                        <li><a href="#1" class="nav-link u-header__sub-menu-nav-link">Product2</a>
                                                        </li>
                                                        <li><a href="#1.html" class="nav-link u-header__sub-menu-nav-link">Product3</a></li>
                                                        <li><a href="#1html" class="nav-link u-header__sub-menu-nav-link">Product4</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="col-md-3">
                                                    <span class="u-header__sub-menu-title">Products</span>
                                                    <ul class="u-header__sub-menu-nav-group mb-3">
                                                        <li><a href="#1" class="nav-link u-header__sub-menu-nav-link">Product1</a>
                                                        </li>
                                                        <li><a href="#1" class="nav-link u-header__sub-menu-nav-link">Product2</a>
                                                        </li>
                                                        <li><a href="#1.html" class="nav-link u-header__sub-menu-nav-link">Product3</a></li>
                                                        <li><a href="#1html" class="nav-link u-header__sub-menu-nav-link">Product4</a>
                                                        </li>
                                                    </ul>
                                                    <span class="u-header__sub-menu-title">Products</span>
                                                    <ul class="u-header__sub-menu-nav-group">
                                                        <li><a href="#1" class="nav-link u-header__sub-menu-nav-link">Product1</a>
                                                        </li>
                                                        <li><a href="#1" class="nav-link u-header__sub-menu-nav-link">Product2</a>
                                                        </li>
                                                        <li><a href="#1.html" class="nav-link u-header__sub-menu-nav-link">Product3</a></li>
                                                        <li><a href="#1html" class="nav-link u-header__sub-menu-nav-link">Product4</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="col-md-3">
                                                    <span class="u-header__sub-menu-title">Products</span>
                                                    <ul class="u-header__sub-menu-nav-group mb-3">
                                                        <li><a href="#1" class="nav-link u-header__sub-menu-nav-link">Product1</a>
                                                        </li>
                                                        <li><a href="#1" class="nav-link u-header__sub-menu-nav-link">Product2</a>
                                                        </li>
                                                        <li><a href="#1.html" class="nav-link u-header__sub-menu-nav-link">Product3</a></li>
                                                        <li><a href="#1html" class="nav-link u-header__sub-menu-nav-link">Product4</a>
                                                        </li>
                                                    </ul>
                                                    <span class="u-header__sub-menu-title">Products</span>
                                                    <ul class="u-header__sub-menu-nav-group">
                                                        <li><a href="#1" class="nav-link u-header__sub-menu-nav-link">Product1</a>
                                                        </li>
                                                        <li><a href="#1" class="nav-link u-header__sub-menu-nav-link">Product2</a>
                                                        </li>
                                                        <li><a href="#1.html" class="nav-link u-header__sub-menu-nav-link">Product3</a></li>
                                                        <li><a href="#1html" class="nav-link u-header__sub-menu-nav-link">Product4</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="col-md-3">
                                                    <span class="u-header__sub-menu-title">Products</span>
                                                    <ul class="u-header__sub-menu-nav-group mb-3">
                                                        <li><a href="#1" class="nav-link u-header__sub-menu-nav-link">Product1</a>
                                                        </li>
                                                        <li><a href="#1" class="nav-link u-header__sub-menu-nav-link">Product2</a>
                                                        </li>
                                                        <li><a href="#1.html" class="nav-link u-header__sub-menu-nav-link">Product3</a></li>
                                                        <li><a href="#1html" class="nav-link u-header__sub-menu-nav-link">Product4</a>
                                                        </li>
                                                    </ul>
                                                    <span class="u-header__sub-menu-title">Products</span>
                                                    <ul class="u-header__sub-menu-nav-group">
                                                        <li><a href="#1" class="nav-link u-header__sub-menu-nav-link">Product1</a>
                                                        </li>
                                                        <li><a href="#1" class="nav-link u-header__sub-menu-nav-link">Product2</a>
                                                        </li>
                                                        <li><a href="#1.html" class="nav-link u-header__sub-menu-nav-link">Product3</a></li>
                                                        <li><a href="#1html" class="nav-link u-header__sub-menu-nav-link">Product4</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="nav-item u-header__nav-item">
                                        <a class="nav-link u-header__nav-link" href="#" aria-haspopup="true" aria-expanded="false" aria-labelledby="blogSubMenu">Services</a>
                                    </li>
                                    <li class="nav-item u-header__nav-item">
                                        <a class="nav-link u-header__nav-link" href="#" aria-haspopup="true" aria-expanded="false" aria-labelledby="blogSubMenu">Blog</a>
                                    </li>
                                    <li class="nav-item u-header__nav-item">
                                        <a class="nav-link u-header__nav-link" href="#" aria-haspopup="true" aria-expanded="false">Contact</a>
                                    </li>
                                    <li class="nav-item u-header__nav-last-item">
                                        <a class="text-gray-90" href="#" target="_blank">
                                            Free Shipping on Orders Rs.&nbsp;50+
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>


                </div>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

    <main id="content" role="main">

        <div class="mb-5">
            <div class="bg-img-hero" style="background-image: url(assets_home/img/banner1.jpg);">
                <div class="container min-height-420 overflow-hidden">
                    <div class="js-slick-carousel u-slick" data-pagi-classes="text-center position-absolute right-0 bottom-0 left-0 u-slick__pagination u-slick__pagination--long justify-content-start mb-3 mb-md-4 offset-xl-3 pl-2 pb-1">

                        @if (get_setting('home_slider_images') != null)
                        <!-- <div class="aiz-carousel dots-inside-bottom mobile-img-auto-height" data-arrows="true" data-dots="true" data-autoplay="true"> -->
                        @php $slider_images = json_decode(get_setting('home_slider_images'), true); @endphp
                        @foreach ($slider_images as $key => $value)
                        <div class="js-slide bg-img-hero-center">
                            <div class="row min-height-420 py-7 py-md-0">

                                <div class="col-xl-5 col-6  d-flex align-items-center" data-scs-animation-in="zoomIn" data-scs-animation-delay="500">
                                    <img class="img-fluid" src="{{ uploaded_asset($slider_images[$key]) }}" alt="Image Description">
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                    @endif

                </div>
            </div>
        </div>
        </div>


        <div class="container">

            <!-- First Banner Start -->
            <div class="mb-5">
                <div class="row">
                    @php $banner_1_imags = json_decode(get_setting('home_banner1_images')); @endphp
                    @foreach ($banner_1_imags as $key => $value)

                    <div class="col-md-6 mb-4 mb-xl-0 col-xl-4">
                        <a href="{{ json_decode(get_setting('home_banner1_links'), true)[$key] }}" class="d-black text-gray-90">
                            <div id="customCard" class="custom_card min-height-132 d-flex bg-gray-1 align-items-center">
                                <div class="custom_overflow col-lg-12 col-xl-12 col-wd-6 p-0">
                                    <img src="{{ uploaded_asset($banner_1_imags[$key]) }}" data-src="{{ uploaded_asset($banner_1_imags[$key]) }}" class="img-fluid lazyload w-100">
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
                                        <a class="nav-link active " id="pills-one-example1-tab" data-toggle="pill" href="#pills-one-example1" role="tab" aria-controls="pills-one-example1" aria-selected="true">
                                            <div class="d-md-flex justify-content-md-center align-items-md-center">
                                                Featured
                                            </div>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link " id="pills-two-example1-tab" data-toggle="pill" href="#pills-two-example1" role="tab" aria-controls="pills-two-example1" aria-selected="false">
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
                                return filter_products(\App\Models\Product::where('published', 1)->where('featured', '1'))->limit(12)->get();
                                });
                                @endphp

                                @if (count($featured_products) > 0)
                                <div class="tab-pane fade pt-2 show active" id="pills-one-example1" role="tabpanel" aria-labelledby="pills-one-example1-tab">
                                    <ul class="row list-unstyled products-group no-gutters">
                                        @foreach ($featured_products as $key => $product)
                                        <li class="col-6 col-wd-3 col-md-4 product-item">
                                            <div class="product-item__outer h-100">
                                                <div class="product-item__inner px-xl-4 p-3">
                                                    <div class="product-item__body pb-xl-2">

                                                        <h5 class="mb-1 product-item__title">
                                                            <a href="{{ route('product', $product->slug) }}" class="text-blue font-weight-bold">{{ $product->getTranslation('name')  }}</a>
                                                        </h5>
                                                        <div class="mb-2">
                                                            <a href="{{ route('product', $product->slug) }}" class="d-block text-center"><img class="img-fluid" src="{{ uploaded_asset($product->thumbnail_img) }}" alt="Image Description"></a>
                                                        </div>
                                                        <div class="flex-center-between mb-1">
                                                            <div class="prodcut-price d-flex align-items-center flex-wrap position-relative">
                                                                <ins class="font-size-20 text-red text-decoration-none mr-2">{{ home_discounted_base_price($product) }}</ins>
                                                                @if(home_base_price($product) != home_discounted_base_price($product))
                                                                <del class="font-size-12 tex-gray-6 position-absolute bottom-100">{{ home_base_price($product) }}</del>
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
                                return filter_products(\App\Models\Product::where('published', 1)->orderBy('num_of_sale', 'desc'))->limit(20)->get();
                                });
                                @endphp
                                @if (get_setting('best_selling') == 1)
                                <div class="tab-pane fade pt-2" id="pills-two-example1" role="tabpanel" aria-labelledby="pills-two-example1-tab">
                                    <ul class="row list-unstyled products-group no-gutters">
                                        @foreach ($best_selling_products as $key => $product)
                                        <li class="col-6 col-wd-3 col-md-4 product-item">
                                            <div class="product-item__outer h-100">
                                                <div class="product-item__inner px-xl-4 p-3">
                                                    <div class="product-item__body pb-xl-2">

                                                        <h5 class="mb-1 product-item__title">
                                                            <a href="{{ route('product', $product->slug) }}" class="text-blue font-weight-bold">{{ $product->getTranslation('name')  }}</a>
                                                        </h5>
                                                        <div class="mb-2">
                                                            <a href="{{ route('product', $product->slug) }}" class="d-block text-center"><img class="img-fluid" src="{{ uploaded_asset($product->thumbnail_img) }}" alt="Image Description"></a>
                                                        </div>
                                                        <div class="flex-center-between mb-1">
                                                            <div class="prodcut-price d-flex align-items-center flex-wrap position-relative">
                                                                <ins class="font-size-20 text-red text-decoration-none mr-2">{{ home_discounted_base_price($product) }}</ins>
                                                                @if(home_base_price($product) != home_discounted_base_price($product))
                                                                <del class="font-size-12 tex-gray-6 position-absolute bottom-100">{{ home_base_price($product) }}</del>
                                                                @endif
                                                            </div>

                                                            <div class="d-none d-xl-block prodcut-add-cart">
                                                                <a href="{{ route('product', $product->slug) }}" class="btn-add-cart btn-primary transition-3d-hover"><i class="ec ec-add-to-cart"></i></a>
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
                                <div class="tab-pane fade pt-2" id="pills-three-example1" role="tabpanel" aria-labelledby="pills-three-example1-tab">
                                    <ul class="row list-unstyled products-group no-gutters">
                                        <li class="col-6 col-wd-3 col-md-4 product-item">
                                            <div class="product-item__outer h-100">
                                                <div class="product-item__inner px-xl-4 p-3">
                                                    <div class="product-item__body pb-xl-2">
                                                        <div class="mb-2"><a href="#1" class="font-size-12 text-gray-5">Speakers</a>
                                                        </div>
                                                        <h5 class="mb-1 product-item__title"><a href="#1" class="text-blue font-weight-bold">Wireless Audio System Multiroom 360
                                                                degree Full base audio</a></h5>
                                                        <div class="mb-2">
                                                            <a href="#1" class="d-block text-center"><img class="img-fluid" src="assets_home/img/212X200/img1.jpg" alt="Image Description"></a>
                                                        </div>
                                                        <div class="flex-center-between mb-1">
                                                            <div class="prodcut-price">
                                                                <div class="text-gray-100">Rs.&nbsp;685,00</div>
                                                            </div>
                                                            <div class="d-none d-xl-block prodcut-add-cart">
                                                                <a href="#1" class="btn-add-cart btn-primary transition-3d-hover"><i class="ec ec-add-to-cart"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-item__footer">
                                                        <div class="border-top pt-2 flex-center-between flex-wrap">
                                                            <a href="#1" class="text-gray-6 font-size-13"><i class="ec ec-compare mr-1 font-size-15"></i> Compare</a>
                                                            <a href="#1" class="text-gray-6 font-size-13"><i class="ec ec-favorites mr-1 font-size-15"></i> Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="col-6 col-wd-3 col-md-4 product-item">
                                            <div class="product-item__outer h-100">
                                                <div class="product-item__inner px-xl-4 p-3">
                                                    <div class="product-item__body pb-xl-2">
                                                        <div class="mb-2"><a href="#1" class="font-size-12 text-gray-5">Speakers</a>
                                                        </div>
                                                        <h5 class="mb-1 product-item__title"><a href="#1" class="text-blue font-weight-bold">Tablet White EliteBook Revolve 810
                                                                G2</a></h5>
                                                        <div class="mb-2">
                                                            <a href="#1" class="d-block text-center"><img class="img-fluid" src="assets_home/img/212X200/img2.jpg" alt="Image Description"></a>
                                                        </div>
                                                        <div class="flex-center-between mb-1">
                                                            <div class="prodcut-price">
                                                                <div class="text-gray-100">Rs.&nbsp;685,00</div>
                                                            </div>
                                                            <div class="d-none d-xl-block prodcut-add-cart">
                                                                <a href="#1" class="btn-add-cart btn-primary transition-3d-hover"><i class="ec ec-add-to-cart"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-item__footer">
                                                        <div class="border-top pt-2 flex-center-between flex-wrap">
                                                            <a href="#1" class="text-gray-6 font-size-13"><i class="ec ec-compare mr-1 font-size-15"></i> Compare</a>
                                                            <a href="#1" class="text-gray-6 font-size-13"><i class="ec ec-favorites mr-1 font-size-15"></i> Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="col-6 col-wd-3 col-md-4 product-item remove-divider-xl">
                                            <div class="product-item__outer h-100">
                                                <div class="product-item__inner px-xl-4 p-3">
                                                    <div class="product-item__body pb-xl-2">
                                                        <div class="mb-2"><a href="#1" class="font-size-12 text-gray-5">Speakers</a>
                                                        </div>
                                                        <h5 class="mb-1 product-item__title"><a href="#1" class="text-blue font-weight-bold">Purple Solo 2 Wireless</a></h5>
                                                        <div class="mb-2">
                                                            <a href="#1" class="d-block text-center"><img class="img-fluid" src="assets_home/img/212X200/img3.jpg" alt="Image Description"></a>
                                                        </div>
                                                        <div class="flex-center-between mb-1">
                                                            <div class="prodcut-price">
                                                                <div class="text-gray-100">Rs.&nbsp;685,00</div>
                                                            </div>
                                                            <div class="d-none d-xl-block prodcut-add-cart">
                                                                <a href="#1" class="btn-add-cart btn-primary transition-3d-hover"><i class="ec ec-add-to-cart"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-item__footer">
                                                        <div class="border-top pt-2 flex-center-between flex-wrap">
                                                            <a href="#1" class="text-gray-6 font-size-13"><i class="ec ec-compare mr-1 font-size-15"></i> Compare</a>
                                                            <a href="#1" class="text-gray-6 font-size-13"><i class="ec ec-favorites mr-1 font-size-15"></i> Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="col-6 col-wd-3 col-md-4 product-item remove-divider-wd">
                                            <div class="product-item__outer h-100">
                                                <div class="product-item__inner px-xl-4 p-3">
                                                    <div class="product-item__body pb-xl-2">
                                                        <div class="mb-2"><a href="#1" class="font-size-12 text-gray-5">Speakers</a>
                                                        </div>
                                                        <h5 class="mb-1 product-item__title"><a href="#1" class="text-blue font-weight-bold">Smartphone 6S 32GB LTE</a></h5>
                                                        <div class="mb-2">
                                                            <a href="#1" class="d-block text-center"><img class="img-fluid" src="assets_home/img/212X200/img4.jpg" alt="Image Description"></a>
                                                        </div>
                                                        <div class="flex-center-between mb-1">
                                                            <div class="prodcut-price">
                                                                <div class="text-gray-100">Rs.&nbsp;685,00</div>
                                                            </div>
                                                            <div class="d-none d-xl-block prodcut-add-cart">
                                                                <a href="#1" class="btn-add-cart btn-primary transition-3d-hover"><i class="ec ec-add-to-cart"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-item__footer">
                                                        <div class="border-top pt-2 flex-center-between flex-wrap">
                                                            <a href="#1" class="text-gray-6 font-size-13"><i class="ec ec-compare mr-1 font-size-15"></i> Compare</a>
                                                            <a href="#1" class="text-gray-6 font-size-13"><i class="ec ec-favorites mr-1 font-size-15"></i> Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="col-6 col-wd-3 col-md-4 product-item">
                                            <div class="product-item__outer h-100">
                                                <div class="product-item__inner px-xl-4 p-3">
                                                    <div class="product-item__body pb-xl-2">
                                                        <div class="mb-2"><a href="#1" class="font-size-12 text-gray-5">Speakers</a>
                                                        </div>
                                                        <h5 class="mb-1 product-item__title"><a href="#1" class="text-blue font-weight-bold">Widescreen NX Mini F1 SMART NX</a>
                                                        </h5>
                                                        <div class="mb-2">
                                                            <a href="#1" class="d-block text-center"><img class="img-fluid" src="assets_home/img/212X200/img5.jpg" alt="Image Description"></a>
                                                        </div>
                                                        <div class="flex-center-between mb-1">
                                                            <div class="prodcut-price">
                                                                <div class="text-gray-100">Rs.&nbsp;685,00</div>
                                                            </div>
                                                            <div class="d-none d-xl-block prodcut-add-cart">
                                                                <a href="#1" class="btn-add-cart btn-primary transition-3d-hover"><i class="ec ec-add-to-cart"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-item__footer">
                                                        <div class="border-top pt-2 flex-center-between flex-wrap">
                                                            <a href="#1" class="text-gray-6 font-size-13"><i class="ec ec-compare mr-1 font-size-15"></i> Compare</a>
                                                            <a href="#1" class="text-gray-6 font-size-13"><i class="ec ec-favorites mr-1 font-size-15"></i> Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="col-6 col-wd-3 col-md-4 product-item remove-divider-xl">
                                            <div class="product-item__outer h-100">
                                                <div class="product-item__inner px-xl-4 p-3">
                                                    <div class="product-item__body pb-xl-2">
                                                        <div class="mb-2"><a href="#1" class="font-size-12 text-gray-5">Speakers</a>
                                                        </div>
                                                        <h5 class="mb-1 product-item__title"><a href="#1" class="text-blue font-weight-bold">Full Color LaserJet Pro M452dn</a>
                                                        </h5>
                                                        <div class="mb-2">
                                                            <a href="#1" class="d-block text-center"><img class="img-fluid" src="assets_home/img/212X200/img6.jpg" alt="Image Description"></a>
                                                        </div>
                                                        <div class="flex-center-between mb-1">
                                                            <div class="prodcut-price">
                                                                <div class="text-gray-100">Rs.&nbsp;685,00</div>
                                                            </div>
                                                            <div class="d-none d-xl-block prodcut-add-cart">
                                                                <a href="#1" class="btn-add-cart btn-primary transition-3d-hover"><i class="ec ec-add-to-cart"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-item__footer">
                                                        <div class="border-top pt-2 flex-center-between flex-wrap">
                                                            <a href="#1" class="text-gray-6 font-size-13"><i class="ec ec-compare mr-1 font-size-15"></i> Compare</a>
                                                            <a href="#1" class="text-gray-6 font-size-13"><i class="ec ec-favorites mr-1 font-size-15"></i> Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="col-6 col-wd-3 col-md-4 product-item d-xl-none d-wd-block remove-divider-xl">
                                            <div class="product-item__outer h-100">
                                                <div class="product-item__inner px-xl-4 p-3">
                                                    <div class="product-item__body pb-xl-2">
                                                        <div class="mb-2"><a href="#1" class="font-size-12 text-gray-5">Speakers</a>
                                                        </div>
                                                        <h5 class="mb-1 product-item__title"><a href="#1" class="text-blue font-weight-bold">GameConsole Destiny Special
                                                                Edition</a></h5>
                                                        <div class="mb-2">
                                                            <a href="#1" class="d-block text-center"><img class="img-fluid" src="assets_home/img/212X200/img7.jpg" alt="Image Description"></a>
                                                        </div>
                                                        <div class="flex-center-between mb-1">
                                                            <div class="prodcut-price">
                                                                <div class="text-gray-100">Rs.&nbsp;685,00</div>
                                                            </div>
                                                            <div class="d-none d-xl-block prodcut-add-cart">
                                                                <a href="#1" class="btn-add-cart btn-primary transition-3d-hover"><i class="ec ec-add-to-cart"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-item__footer">
                                                        <div class="border-top pt-2 flex-center-between flex-wrap">
                                                            <a href="#1" class="text-gray-6 font-size-13"><i class="ec ec-compare mr-1 font-size-15"></i> Compare</a>
                                                            <a href="#1" class="text-gray-6 font-size-13"><i class="ec ec-favorites mr-1 font-size-15"></i> Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="col-6 col-wd-3 col-md-4 product-item d-xl-none d-wd-block remove-divider-wd">
                                            <div class="product-item__outer h-100">
                                                <div class="product-item__inner px-xl-4 p-3">
                                                    <div class="product-item__body pb-xl-2">
                                                        <div class="mb-2"><a href="#1" class="font-size-12 text-gray-5">Speakers</a>
                                                        </div>
                                                        <h5 class="mb-1 product-item__title"><a href="#1" class="text-blue font-weight-bold">Camera C430W 4k Waterproof</a></h5>
                                                        <div class="mb-2">
                                                            <a href="#1" class="d-block text-center"><img class="img-fluid" src="assets_home/img/212X200/img8.jpg" alt="Image Description"></a>
                                                        </div>
                                                        <div class="flex-center-between mb-1">
                                                            <div class="prodcut-price">
                                                                <div class="text-gray-100">Rs.&nbsp;685,00</div>
                                                            </div>
                                                            <div class="d-none d-xl-block prodcut-add-cart">
                                                                <a href="#1" class="btn-add-cart btn-primary transition-3d-hover"><i class="ec ec-add-to-cart"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-item__footer">
                                                        <div class="border-top pt-2 flex-center-between flex-wrap">
                                                            <a href="#1" class="text-gray-6 font-size-13"><i class="ec ec-compare mr-1 font-size-15"></i> Compare</a>
                                                            <a href="#1" class="text-gray-6 font-size-13"><i class="ec ec-favorites mr-1 font-size-15"></i> Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
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
                        <a href="{{ json_decode(get_setting('home_banner1_links'), true)[$key] }}" class="d-black text-gray-90">
                            <div id="customCard" class="custom_card min-height-132 d-flex bg-gray-1 align-items-center">
                                <div class="custom_overflow col-lg-12 col-xl-12 col-wd-6 p-0">
                                    <img src="{{ uploaded_asset($banner_1_imags[$key]) }}" data-src="{{ uploaded_asset($banner_1_imags[$key]) }}" class="img-fluid lazyload w-100">
                                </div>
                            </div>
                        </a>
                    </div>
                    @endforeach
                </div>
            </div>
            <!-- Second Banner End -->
        </div>


        @php
        $best_selling_products = Cache::remember('best_selling_products', 86400, function () {
        return filter_products(\App\Models\Product::where('published', 1)->orderBy('num_of_sale', 'desc'))->limit(20)->get();
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
                        <div class="js-slick-carousel u-slick position-static overflow-hidden u-slick-overflow-visble pb-7 pt-2 px-1" data-pagi-classes="text-center right-0 bottom-1 left-0 u-slick__pagination u-slick__pagination--long mb-0 z-index-n1 mt-3 mt-md-0" data-slides-show="7" data-slides-scroll="1" data-arrows-classes="position-absolute top-0 font-size-17 u-slick__arrow-normal top-10" data-arrow-left-classes="fa fa-angle-left right-1" data-arrow-right-classes="fa fa-angle-right right-0" data-responsive='[{
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
                                                    <a href="{{ route('product', $product->slug) }}" class="text-blue font-weight-bold">{{ $product->getTranslation('name')  }}</a>
                                                </h5>
                                                <div class="mb-2">
                                                    <a href="{{ route('product', $product->slug) }}" class="d-block text-center"><img class="img-fluid" src="{{ uploaded_asset($product->thumbnail_img) }}" alt="{{ $product->getTranslation('name')  }}"></a>
                                                </div>
                                                <div class="flex-center-between mb-1">
                                                    <div class="prodcut-price">
                                                        <div class="text-gray-100">{{ home_discounted_base_price($product) }}</div>
                                                    </div>
                                                    <div class="d-none d-xl-block prodcut-add-cart">
                                                        <a href="{{ route('product', $product->slug) }}" class="btn-add-cart btn-primary transition-3d-hover"><i class="ec ec-add-to-cart"></i></a>
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


    </main>


    <!-- footer Section Start  -->
    <footer>
        <div class="container d-none d-lg-block mb-3">
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
                        <ul class="list-unstyled products-group">
                            <li class="product-item product-item__list row no-gutters mb-6 remove-divider">
                                <div class="col-auto">
                                    <a href="#1" class="d-block width-75 text-center"><img class="img-fluid" src="assets_home/img/75X75/img1.jpg" alt="Image Description"></a>
                                </div>
                                <div class="col pl-4 d-flex flex-column">
                                    <h5 class="product-item__title mb-0"><a href="#1" class="text-blue font-weight-bold">Purple
                                            Wireless Headphones Solo 2 HD</a></h5>
                                    <div class="prodcut-price mt-auto">
                                        <div class="font-size-15">Rs.&nbsp;1149.00</div>
                                    </div>
                                </div>
                            </li>
                            <li class="product-item product-item__list row no-gutters mb-6 remove-divider">
                                <div class="col-auto">
                                    <a href="#1" class="d-block width-75 text-center"><img class="img-fluid" src="assets_home/img/75X75/img2.jpg" alt="Image Description"></a>
                                </div>
                                <div class="col pl-4 d-flex flex-column">
                                    <h5 class="product-item__title mb-0"><a href="#1" class="text-blue font-weight-bold">Powerbank 1130 mAh Blue</a></h5>
                                    <div class="prodcut-price mt-auto">
                                        <div class="font-size-15">Rs.&nbsp;210.00</div>
                                    </div>
                                </div>
                            </li>
                            <li class="product-item product-item__list row no-gutters mb-6 remove-divider">
                                <div class="col-auto">
                                    <a href="#1" class="d-block width-75 text-center"><img class="img-fluid" src="assets_home/img/75X75/img3.jpg" alt="Image Description"></a>
                                </div>
                                <div class="col pl-4 d-flex flex-column">
                                    <h5 class="product-item__title mb-0"><a href="#1" class="text-blue font-weight-bold">Nerocool
                                            EN52377 Dead Silence Gaming Cube Case</a></h5>
                                    <div class="prodcut-price mt-auto">
                                        <div class="font-size-15">Rs.&nbsp;180.00</div>
                                    </div>
                                </div>
                            </li>
                        </ul>
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
        </div>
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
                        <form class="js-validate js-form-message">
                            <label class="sr-only" for="subscribeSrEmail">Email address</label>
                            <div class="input-group input-group-pill">
                                <input type="email" class="form-control border-0 height-40" name="email" id="subscribeSrEmail" placeholder="Email address" aria-label="Email address" aria-describedby="subscribeButton" required data-msg="Please enter a valid email address.">
                                <div class="input-group-append">
                                    <button type="submit" class="btn btn-dark btn-sm-wide height-40 py-2" id="subscribeButton">Sign Up</button>
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
                            <a href="#" class="d-inline-block">
                                <img src="assets_home/img/logo-foot.png">
                            </a>
                        </div>
                        <div class="mb-4">
                            <div class="row no-gutters">
                                <div class="col-auto">
                                    <i class="ec ec-support text-primary font-size-56"></i>
                                </div>
                                <div class="col pl-3">
                                    <div class="font-size-13 font-weight-light">Got questions? Call us 24/7!</div>
                                    <a href="tel:+91-999999999" class="font-size-20 text-gray-90">+91-9999999999, </a><a href="tel:+999999999" class="font-size-20 text-gray-90">+91-99999999,</a>
                                </div>
                            </div>
                        </div>
                        <div class="mb-4">
                            <h6 class="mb-1 font-weight-bold">Contact info</h6>
                            <address class="">GH-6/160, Meera Bagh, Paschim Vihar, New Delhi 110086
                            </address>
                        </div>
                        <div class="my-4 my-md-4">
                            <ul class="list-inline mb-0 opacity-7">
                                <li class="list-inline-item mr-0">
                                    <a class="btn font-size-20 btn-icon btn-soft-dark btn-bg-transparent rounded-circle" href="#">
                                        <span class="fab fa-facebook-f btn-icon__inner"></span>
                                    </a>
                                </li>
                                <li class="list-inline-item mr-0">
                                    <a class="btn font-size-20 btn-icon btn-soft-dark btn-bg-transparent rounded-circle" href="#">
                                        <span class="fab fa-google btn-icon__inner"></span>
                                    </a>
                                </li>
                                <li class="list-inline-item mr-0">
                                    <a class="btn font-size-20 btn-icon btn-soft-dark btn-bg-transparent rounded-circle" href="#">
                                        <span class="fab fa-twitter btn-icon__inner"></span>
                                    </a>
                                </li>
                                <li class="list-inline-item mr-0">
                                    <a class="btn font-size-20 btn-icon btn-soft-dark btn-bg-transparent rounded-circle" href="#">
                                        <span class="fab fa-github btn-icon__inner"></span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-7">
                        <div class="row">
                            <div class="col-12 col-md mb-4 mb-md-0">
                                <h6 class="mb-3 font-weight-bold">Find it Fast</h6>
                                <ul class="list-group list-group-flush list-group-borderless mb-0 list-group-transparent">
                                    <li><a class="list-group-item list-group-item-action" href="#1">Laptops & Computers</a></li>
                                    <li><a class="list-group-item list-group-item-action" href="#1">Cameras & Photography</a>
                                    </li>
                                    <li><a class="list-group-item list-group-item-action" href="#1">Smart Phones & Tablets</a>
                                    </li>
                                    <li><a class="list-group-item list-group-item-action" href="#1">Video Games & Consoles</a>
                                    </li>
                                    <li><a class="list-group-item list-group-item-action" href="#1">TV & Audio</a></li>
                                    <li><a class="list-group-item list-group-item-action" href="#1">Gadgets</a></li>
                                    <li><a class="list-group-item list-group-item-action" href="#1">Car Electronic & GPS</a></li>
                                </ul>
                            </div>
                            <div class="col-12 col-md mb-4 mb-md-0">
                                <ul class="list-group list-group-flush list-group-borderless mb-0 list-group-transparent mt-md-6">
                                    <li><a class="list-group-item list-group-item-action" href="#1">Printers & Ink</a></li>
                                    <li><a class="list-group-item list-group-item-action" href="#1">Software</a></li>
                                    <li><a class="list-group-item list-group-item-action" href="#1">Office Supplies</a></li>
                                    <li><a class="list-group-item list-group-item-action" href="#1">Computer Components</a></li>
                                    <li><a class="list-group-item list-group-item-action" href="#1">Accesories</a></li>
                                </ul>
                            </div>
                            <div class="col-12 col-md mb-4 mb-md-0">
                                <h6 class="mb-3 font-weight-bold">Customer Care</h6>
                                <ul class="list-group list-group-flush list-group-borderless mb-0 list-group-transparent">
                                    <li><a class="list-group-item list-group-item-action" href="#1">My Account</a></li>
                                    <li><a class="list-group-item list-group-item-action" href="#1">Order Tracking</a></li>
                                    <li><a class="list-group-item list-group-item-action" href="#1">Wish List</a></li>
                                    <li><a class="list-group-item list-group-item-action" href="#1">Customer Service</a></li>
                                    <li><a class="list-group-item list-group-item-action" href="#1">Returns / Exchange</a></li>
                                    <li><a class="list-group-item list-group-item-action" href="#1">FAQs</a></li>
                                    <li><a class="list-group-item list-group-item-action" href="#1">Product Support</a></li>
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
                    <div class="mb-3 mb-md-0">&copy; Shopplers - All rights Reserved</div>
                    <div class="text-md-right">
                        <span class="d-inline-block bg-white border rounded p-1">
                            <img class="max-width-5" src="assets_home/img/100X60/img1.jpg" alt="Image Description">
                        </span>
                        <span class="d-inline-block bg-white border rounded p-1">
                            <img class="max-width-5" src="assets_home/img/100X60/img2.jpg" alt="Image Description">
                        </span>
                        <span class="d-inline-block bg-white border rounded p-1">
                            <img class="max-width-5" src="assets_home/img/100X60/img3.jpg" alt="Image Description">
                        </span>
                        <span class="d-inline-block bg-white border rounded p-1">
                            <img class="max-width-5" src="assets_home/img/100X60/img4.jpg" alt="Image Description">
                        </span>
                        <span class="d-inline-block bg-white border rounded p-1">
                            <img class="max-width-5" src="assets_home/img/100X60/img5.jpg" alt="Image Description">
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer Section End  -->

    <aside id="sidebarContent" class="u-sidebar u-sidebar__lg" aria-labelledby="sidebarNavToggler">
        <div class="u-sidebar__scroller">
            <div class="u-sidebar__container">
                <div class="js-scrollbar u-header-sidebar__footer-offset pb-3">
                    <div class="d-flex align-items-center pt-4 px-7">
                        <button type="button" class="close ml-auto" aria-controls="sidebarContent" aria-haspopup="true" aria-expanded="false" data-unfold-event="click" data-unfold-hide-on-scroll="false" data-unfold-target="#sidebarContent" data-unfold-type="css-animation" data-unfold-animation-in="fadeInRight" data-unfold-animation-out="fadeOutRight" data-unfold-duration="500">
                            <i class="ec ec-close-remove"></i>
                        </button>
                    </div>
                    <div class="js-scrollbar u-sidebar__body">
                        <div class="u-sidebar__content u-header-sidebar__content">
                            <form class="js-validate">
                                <div id="login" data-target-group="idForm">
                                    <header class="text-center mb-7">
                                        <h2 class="h4 mb-0">Welcome Back!</h2>
                                        <p>Login to manage your account.</p>
                                    </header>
                                    <div class="form-group">
                                        <div class="js-form-message js-focus-state">
                                            <label class="sr-only" for="signinEmail">Email</label>
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text" id="signinEmailLabel">
                                                        <span class="fas fa-user"></span>
                                                    </span>
                                                </div>
                                                <input type="email" class="form-control" name="email" id="signinEmail" placeholder="Email" aria-label="Email" aria-describedby="signinEmailLabel" required data-msg="Please enter a valid email address." data-error-class="u-has-error" data-success-class="u-has-success">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="js-form-message js-focus-state">
                                            <label class="sr-only" for="signinPassword">Password</label>
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text" id="signinPasswordLabel">
                                                        <span class="fas fa-lock"></span>
                                                    </span>
                                                </div>
                                                <input type="password" class="form-control" name="password" id="signinPassword" placeholder="Password" aria-label="Password" aria-describedby="signinPasswordLabel" required data-msg="Your password is invalid. Please try again." data-error-class="u-has-error" data-success-class="u-has-success">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-end mb-4">
                                        <a class="js-animation-link small link-muted" href="javascript:;" data-target="#forgotPassword" data-link-group="idForm" data-animation-in="slideInUp">Forgot Password?</a>
                                    </div>
                                    <div class="mb-2">
                                        <button type="submit" class="btn btn-block btn-sm btn-primary transition-3d-hover">Login</button>
                                    </div>
                                    <div class="text-center mb-4">
                                        <span class="small text-muted">Do not have an account?</span>
                                        <a class="js-animation-link small text-dark" href="javascript:;" data-target="#signup" data-link-group="idForm" data-animation-in="slideInUp">Signup
                                        </a>
                                    </div>
                                    <div class="text-center">
                                        <span class="u-divider u-divider--xs u-divider--text mb-4">OR</span>
                                    </div>
                                    <div class="d-flex">
                                        <a class="btn btn-block btn-sm btn-soft-facebook transition-3d-hover mr-1" href="#">
                                            <span class="fab fa-facebook-square mr-1"></span>
                                            Facebook
                                        </a>
                                        <a class="btn btn-block btn-sm btn-soft-google transition-3d-hover ml-1 mt-0" href="#">
                                            <span class="fab fa-google mr-1"></span>
                                            Google
                                        </a>
                                    </div>
                                </div>
                                <div id="signup" style="display: none; opacity: 0;" data-target-group="idForm">
                                    <header class="text-center mb-7">
                                        <h2 class="h4 mb-0">Welcome to Electro.</h2>
                                        <p>Fill out the form to get started.</p>
                                    </header>
                                    <div class="form-group">
                                        <div class="js-form-message js-focus-state">
                                            <label class="sr-only" for="signupEmail">Email</label>
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text" id="signupEmailLabel">
                                                        <span class="fas fa-user"></span>
                                                    </span>
                                                </div>
                                                <input type="email" class="form-control" name="email" id="signupEmail" placeholder="Email" aria-label="Email" aria-describedby="signupEmailLabel" required data-msg="Please enter a valid email address." data-error-class="u-has-error" data-success-class="u-has-success">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="js-form-message js-focus-state">
                                            <label class="sr-only" for="signupPassword">Password</label>
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text" id="signupPasswordLabel">
                                                        <span class="fas fa-lock"></span>
                                                    </span>
                                                </div>
                                                <input type="password" class="form-control" name="password" id="signupPassword" placeholder="Password" aria-label="Password" aria-describedby="signupPasswordLabel" required data-msg="Your password is invalid. Please try again." data-error-class="u-has-error" data-success-class="u-has-success">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="js-form-message js-focus-state">
                                            <label class="sr-only" for="signupConfirmPassword">Confirm Password</label>
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text" id="signupConfirmPasswordLabel">
                                                        <span class="fas fa-key"></span>
                                                    </span>
                                                </div>
                                                <input type="password" class="form-control" name="confirmPassword" id="signupConfirmPassword" placeholder="Confirm Password" aria-label="Confirm Password" aria-describedby="signupConfirmPasswordLabel" required data-msg="Password does not match the confirm password." data-error-class="u-has-error" data-success-class="u-has-success">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mb-2">
                                        <button type="submit" class="btn btn-block btn-sm btn-primary transition-3d-hover">Get
                                            Started</button>
                                    </div>
                                    <div class="text-center mb-4">
                                        <span class="small text-muted">Already have an account?</span>
                                        <a class="js-animation-link small text-dark" href="javascript:;" data-target="#login" data-link-group="idForm" data-animation-in="slideInUp">Login
                                        </a>
                                    </div>
                                    <div class="text-center">
                                        <span class="u-divider u-divider--xs u-divider--text mb-4">OR</span>
                                    </div>
                                    <div class="d-flex">
                                        <a class="btn btn-block btn-sm btn-soft-facebook transition-3d-hover mr-1" href="#">
                                            <span class="fab fa-facebook-square mr-1"></span>
                                            Facebook
                                        </a>
                                        <a class="btn btn-block btn-sm btn-soft-google transition-3d-hover ml-1 mt-0" href="#">
                                            <span class="fab fa-google mr-1"></span>
                                            Google
                                        </a>
                                    </div>
                                </div>
                                <div id="forgotPassword" style="display: none; opacity: 0;" data-target-group="idForm">
                                    <header class="text-center mb-7">
                                        <h2 class="h4 mb-0">Recover Password.</h2>
                                        <p>Enter your email address and an email with instructions will be sent to you.</p>
                                    </header>
                                    <div class="form-group">
                                        <div class="js-form-message js-focus-state">
                                            <label class="sr-only" for="recoverEmail">Your email</label>
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text" id="recoverEmailLabel">
                                                        <span class="fas fa-user"></span>
                                                    </span>
                                                </div>
                                                <input type="email" class="form-control" name="email" id="recoverEmail" placeholder="Your email" aria-label="Your email" aria-describedby="recoverEmailLabel" required data-msg="Please enter a valid email address." data-error-class="u-has-error" data-success-class="u-has-success">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mb-2">
                                        <button type="submit" class="btn btn-block btn-sm btn-primary transition-3d-hover">Recover
                                            Password</button>
                                    </div>
                                    <div class="text-center mb-4">
                                        <span class="small text-muted">Remember your password?</span>
                                        <a class="js-animation-link small" href="javascript:;" data-target="#login" data-link-group="idForm" data-animation-in="slideInUp">Login
                                        </a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </aside>

    <a class="js-go-to u-go-to" href="#" data-position='{"bottom": 15, "right": 15 }' data-type="fixed" data-offset-top="400" data-compensation="#header" data-show-effect="slideInUp" data-hide-effect="slideOutDown">
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