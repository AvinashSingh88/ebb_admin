<section>
    <div class=" py-4 subs-foot foot-up ">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-8 mb-md-3 mb-lg-0">
                    <div class="row align-items-center">
                        <div class=" col-auto flex-horizontal-center ">
                            <span class=""> <i class="fa-brands fa-telegram telegram"> </i></span>

                        </div>
                        <div class=" col-auto flex-horizontal-center ">
                            <h2 class="font-size-20 mb-0 ml-3">Sign up to Newsletter</h2>

                        </div>
                        <div class="col my-4 my-md-0">
                            <h5 class="font-size-15 ml-4 mb-0">...and receive <strong>Rs.&nbsp;20 coupon for first
                                    shopping.</strong></h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
 
                    <form class="js-validate js-form-message" method="POST" action="{{ route('subscribers.store') }}">
                    @csrf    
                        <label class="sr-only" for="subscribeSrEmail">Email address</label>
                        <div class="input-group input-group-pill">
                            <input type="email" class="form-control border-0 height-40" name="email" id="subscribeSrEmail" placeholder="Email address" aria-label="Email address" aria-describedby="subscribeButton" required="" data-msg="Please enter a valid email address.">
                            <div class="input-group-append">
                                <button type="submit" class="btn btn-dark btn-sm-wide height-40 py-2">Subscribe
                                    Now</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="input-group input-group-pill">

                </div>
            </div>
        </div>
    </div>
</section>


<section class="footer">
    <div class="pt-8 pb-4 bg-gray-13">
        <div class="container mt-1">
            <div class="row">
                <div class="col-lg-5">
                    <div class="mb-6">
                        <a href="{{ route('home') }}" class="d-inline-block">
                        @if(get_setting('footer_logo') != null)
                            <img src="{{ uploaded_asset(get_setting('footer_logo')) }}" alt="{{ env('APP_NAME') }}">
                        @else
                            <img src="{{ static_asset('uploads/all/A4wL7OIhc2UXESp9HCqT4nibfm9atF5LQ5qBdTNQ.png') }}" alt="{{ env('APP_NAME') }}">
                        @endif
                        </a>
                    </div>

                    <div class="mb-4 ">
                        <div class="row no-gutters">
                            <div class="col-auto">
                                <i class="fa-solid fa-phone"></i>
                            </div>
                            <div class="col pl-3">
                                <div class="font-size-13 font-weight-light">Got questions? Call us 24/7!</div>
                                    <a href="tel:{{ get_setting('contact_phone') }}" class="font-size-20 text-gray-90 foot-num">{{ get_setting('contact_phone') }}</a>
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
                            <a href="mailto:{{ get_setting('contact_email') }}" class="text-reset">{{ get_setting('contact_email') }}</a>
                        </address>
                    </div>

                    <div class="my-4 my-md-4">
                        <ul class="list-inline mb-0 opacity-7">
                        @if ( get_setting('facebook_link') !=  null )
						    <li class="list-inline-item mr-0">
                                <a href="{{ get_setting('facebook_link') }}" target="_blank" class="btn font-size-20 btn-icon btn-soft-dark btn-bg-transparent rounded-circle social-foot">
                                    <span class="fab fa-facebook-f btn-icon__inner"></span>
                                </a>
                            </li>
                        @endif 
                        
                        @if ( get_setting('instagram_link') !=  null )
                            <li class="list-inline-item mr-0">
                                <a href="{{ get_setting('instagram_link') }}" target="_blank" class="btn font-size-20 btn-icon btn-soft-dark btn-bg-transparent rounded-circle social-foot">
                                    <span class="fab fa-instagram btn-icon__inner"></span>
                                </a>
                            </li>
                        @endif
                        
                        @if ( get_setting('twitter_link') !=  null )
                            <li class="list-inline-item mr-0">
                                <a href="{{ get_setting('twitter_link') }}" target="_blank"  class="btn font-size-20 btn-icon btn-soft-dark btn-bg-transparent rounded-circle social-foot">
                                    <span class="fab fa-twitter btn-icon__inner"></span>
                                </a>
                            </li>
                        @endif

                        @if ( get_setting('linkedin_link') !=  null )
                            <li class="list-inline-item mr-0">
                                <a href="{{ get_setting('linkedin_link') }}" target="_blank" class="btn font-size-20 btn-icon btn-soft-dark btn-bg-transparent rounded-circle social-foot">
                                    <span class="fab fa-linkedin-in btn-icon__inner"></span>
                                </a>
                            </li>
                        @endif
                        @if ( get_setting('youtube_link') !=  null )
                            <li class="list-inline-item mr-0">
                                <a href="{{ get_setting('youtube_link') }}" target="_blank" class="btn font-size-20 btn-icon btn-soft-dark btn-bg-transparent rounded-circle social-foot">
                                    <span class="fab fa-youtube btn-icon__inner"></span>
                                </a>
                            </li>
                        @endif
                        </ul>
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="row">
                        <div class="col-12 col-md mb-4 mb-md-0 foot-list">
                            <h6 class="mb-3 font-weight-bold">Find it Fast</h6>
                            <ul class="list-group list-group-flush list-group-borderless mb-0 list-group-transparent">
                                
                                @if ( get_setting('widget_one_labels',null,App::getLocale()) !=  null )
                                @php $count = 0; @endphp
                                @foreach (json_decode( get_setting('widget_one_labels',null,App::getLocale()), true) as $key => $value)
                                @php 
                                $count++; 
                                if($count < 6){
                                @endphp
                                    <li>
                                        <a class="list-group-item list-group-item-action" href="{{ json_decode( get_setting('widget_one_links'), true)[$key] }}">
                                            {{ $value }}
                                        </a>
                                    </li>
                                @php } @endphp
                                @endforeach
                                @endif
                    
                            </ul>
                        </div>
                        <div class="col-12 col-md mb-4 mb-md-0 foot-list ">
                            <ul class="list-group list-group-flush list-group-borderless mb-0 list-group-transparent mt-md-6 foot-list-unorder">
                                @if ( get_setting('widget_one_labels',null,App::getLocale()) !=  null )
                                @php $count = 0; @endphp
                                @foreach (json_decode( get_setting('widget_one_labels',null,App::getLocale()), true) as $key => $value)
                                @php 
                                $count++; 
                                if($count >= 6){
                                @endphp
                                    <li>
                                        <a class="list-group-item list-group-item-action" href="{{ json_decode( get_setting('widget_one_links'), true)[$key] }}">
                                            {{ $value }}
                                        </a>
                                    </li>
                                @php } @endphp
                                @endforeach
                                @endif    
                            </ul>
                        </div>

                        <div class="col-12 col-md mb-4 mb-md-0 foot-list">
                            <h6 class="mb-3 font-weight-bold">Customer Care</h6>
                            <ul class="list-group list-group-flush list-group-borderless mb-0 list-group-transparent">
                                @if (Auth::check())
                                <li><a class="list-group-item list-group-item-action" href="{{ route('logout') }}">Logout</a></li>
                                @else
                                <li><a class="list-group-item list-group-item-action" href="{{ route('user.login') }}">Login</a></li>
                                @endif
                                <li><a class="list-group-item list-group-item-action" href="{{ route('purchase_history.index') }}">Order History</a></li>
                                <li><a class="list-group-item list-group-item-action" href="{{ route('orders.track') }}">Order Tracking</a></li>
                                <li><a class="list-group-item list-group-item-action" href="{{ route('wishlists.index') }}">Wish List</a></li>
                                <li><a class="list-group-item list-group-item-action" href="{{ route('terms') }}">Term & Condition</a></li>
                                <li><a class="list-group-item list-group-item-action" href="{{ route('privacypolicy') }}">Privacy Policy</a></li>
                                <li><a class="list-group-item list-group-item-action" href="{{ route('supportpolicy') }}">Support Policy</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- FOOTER -->

<footer class="pt-3 pb-7 pb-xl-3 bg-black text-light custom_footer">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-4">
                <div class="text-center text-md-left foot-clr-wt" current-verison="{{get_setting(" current_version")}}">
                    {!! get_setting('frontend_copyright_text',null,App::getLocale()) !!}
                </div>
            </div>
            <div class="col-lg-4">
                
            </div>
            <div class="col-lg-4">
                <div class="text-center text-md-right">
                    <ul class="list-inline mb-0">
                        @if ( get_setting('payment_method_images') != null )
                        @foreach (explode(',', get_setting('payment_method_images')) as $key => $value)
                        <li class="list-inline-item">
                            <img src="{{ uploaded_asset($value) }}" height="30" class="mw-100 h-auto" style="max-height: 30px">
                        </li>
                        @endforeach
                        @endif
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>


<div class="aiz-mobile-bottom-nav d-xl-none fixed-bottom bg-white shadow-lg border-top rounded-top" style="box-shadow: 0px -1px 10px rgb(0 0 0 / 15%)!important; ">
    <div class="row align-items-center gutters-5">
        <div class="col">
            <a href="{{ route('home') }}" class="text-reset d-block text-center pb-2 pt-3">
                <i class="las la-home fs-20 opacity-60 {{ areActiveRoutes(['home'],'opacity-100 text-primary')}}"></i>
                <span class="d-block fs-10 fw-600 opacity-60 {{ areActiveRoutes(['home'],'opacity-100 fw-600')}}">{{
                    translate('Home') }}</span>
            </a>
        </div>
        <div class="col">
            <a href="{{ route('categories.all') }}" class="text-reset d-block text-center pb-2 pt-3">
                <i class="las la-list-ul fs-20 opacity-60 {{ areActiveRoutes(['categories.all'],'opacity-100 text-primary')}}"></i>
                <span class="d-block fs-10 fw-600 opacity-60 {{ areActiveRoutes(['categories.all'],'opacity-100 fw-600')}}">{{
                    translate('Categories') }}</span>
            </a>
        </div>
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
        <div class="col-auto">
            <a href="{{ route('cart') }}" class="text-reset d-block text-center pb-2 pt-3">
                <span class="align-items-center bg-primary border border-white border-width-4 d-flex justify-content-center position-relative rounded-circle size-50px" style="margin-top: -33px;box-shadow: 0px -5px 10px rgb(0 0 0 / 15%);border-color: #fff !important;">
                    <i class="las la-shopping-bag la-2x text-white"></i>
                </span>
                <span class="d-block mt-1 fs-10 fw-600 opacity-60 {{ areActiveRoutes(['cart'],'opacity-100 fw-600')}}">
                    {{ translate('Cart') }}
                    @php
                    $count = (isset($cart) && count($cart)) ? count($cart) : 0;
                    @endphp
                    (<span class="cart-count">{{$count}}</span>)
                </span>
            </a>
        </div>
        <div class="col">
            <a href="{{ route('all-notifications') }}" class="text-reset d-block text-center pb-2 pt-3">
                <span class="d-inline-block position-relative px-2">
                    <i class="las la-bell fs-20 opacity-60 {{ areActiveRoutes(['all-notifications'],'opacity-100 text-primary')}}"></i>
                    @if(Auth::check() && count(Auth::user()->unreadNotifications) > 0)
                    <span class="badge badge-sm badge-dot badge-circle badge-primary position-absolute absolute-top-right" style="right: 7px;top: -2px;"></span>
                    @endif
                </span>
                <span class="d-block fs-10 fw-600 opacity-60 {{ areActiveRoutes(['all-notifications'],'opacity-100 fw-600')}}">{{
                    translate('Notifications') }}</span>
            </a>
        </div>
        <div class="col">
            @if (Auth::check())
            @if(isAdmin())
            <a href="{{ route('admin.dashboard') }}" class="text-reset d-block text-center pb-2 pt-3">
                <span class="d-block mx-auto">
                    @if(Auth::user()->photo != null)
                    <img src="{{ custom_asset(Auth::user()->avatar_original)}}" class="rounded-circle size-20px">
                    @else
                    <img src="{{ static_asset('assets/img/avatar-place.png') }}" class="rounded-circle size-20px">
                    @endif
                </span>
                <span class="d-block fs-10 fw-600 opacity-60">{{ translate('Account') }}</span>
            </a>
            @else
            <a href="javascript:void(0)" class="text-reset d-block text-center pb-2 pt-3 mobile-side-nav-thumb" data-toggle="class-toggle" data-backdrop="static" data-target=".aiz-mobile-side-nav">
                <span class="d-block mx-auto">
                    @if(Auth::user()->photo != null)
                    <img src="{{ custom_asset(Auth::user()->avatar_original)}}" class="rounded-circle size-20px">
                    @else
                    <img src="{{ static_asset('assets/img/avatar-place.png') }}" class="rounded-circle size-20px">
                    @endif
                </span>
                <span class="d-block fs-10 fw-600 opacity-60">{{ translate('Account') }}</span>
            </a>
            @endif
            @else
            <a href="{{ route('user.login') }}" class="text-reset d-block text-center pb-2 pt-3">
                <span class="d-block mx-auto">
                    <img src="{{ static_asset('assets/img/avatar-place.png') }}" class="rounded-circle size-20px">
                </span>
                <span class="d-block fs-10 fw-600 opacity-60">{{ translate('Account') }}</span>
            </a>
            @endif
        </div>
    </div>
</div>
@if (Auth::check() && !isAdmin())
<div class="aiz-mobile-side-nav collapse-sidebar-wrap sidebar-xl d-xl-none z-1035">
    <div class="overlay dark c-pointer overlay-fixed" data-toggle="class-toggle" data-backdrop="static" data-target=".aiz-mobile-side-nav" data-same=".mobile-side-nav-thumb"></div>
    <div class="collapse-sidebar bg-white">
        @include('frontend.inc.user_side_nav')
    </div>
</div>
@endif