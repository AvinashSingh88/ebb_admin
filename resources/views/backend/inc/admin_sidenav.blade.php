<div class="aiz-sidebar-wrap">
    <div class="aiz-sidebar left c-scrollbar">
        <div class="aiz-side-nav-logo-wrap">
            <a href="{{ route('admin.dashboard') }}" class="d-blockdsa text-left">
                @if(get_setting('system_logo_white') != null)
                <img class="mw-100 float-left" src="{{ uploaded_asset(get_setting('system_logo_white')) }}" class="brand-icon" alt="{{ get_setting('site_name') }}">
                @else
                <img class="mw-100" src="{{ static_asset('assets/img/logo.png') }}" class="brand-icon" alt="{{ get_setting('site_name') }}">
                @endif

                <span class="admin_custom_logo float-right"> admin</span>
            </a>
        </div>
        <div class="aiz-side-nav-wrap">
           
            <ul class="aiz-side-nav-list" id="search-menu">
            </ul>
            <ul class="aiz-side-nav-list" id="main-menu" data-toggle="aiz-side-menu">
                <li class="aiz-side-nav-item dashboard_active">
                    <a href="{{route('admin.dashboard')}}" class="aiz-side-nav-link ">
                        <i class="las la-home aiz-side-nav-icon"></i>
                        <span class="aiz-side-nav-text">{{translate('Dashboard')}}</span>
                    </a>
                </li>

                <!-- POS Addon-->
                @if (addon_is_activated('pos_system'))
                    @if(Auth::user()->user_type == 'admin' || in_array('1', json_decode(Auth::user()->staff->role->permissions)))
                    <li class="aiz-side-nav-item">
                        <a href="#" class="aiz-side-nav-link">
                            <i class="las la-tasks aiz-side-nav-icon"></i>
                            <span class="aiz-side-nav-text">{{translate('POS System')}}</span>
                            @if (env("DEMO_MODE") == "On")
                            <span class="badge badge-inline badge-danger">Addon</span>
                            @endif
                            <span class="aiz-side-nav-arrow"></span>
                        </a>
                        <ul class="aiz-side-nav-list level-2">
                            <li class="aiz-side-nav-item">
                                <a href="{{route('poin-of-sales.index')}}" class="aiz-side-nav-link {{ areActiveRoutes(['poin-of-sales.index', 'poin-of-sales.create'])}}">
                                    <span class="aiz-side-nav-text">{{translate('POS Manager')}}</span>
                                </a>
                            </li>
                            <li class="aiz-side-nav-item">
                                <a href="{{route('poin-of-sales.activation')}}" class="aiz-side-nav-link">
                                    <span class="aiz-side-nav-text">{{translate('POS Configuration')}}</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    @endif
                @endif
 
                <!-- Product -->
                @if(Auth::user()->user_type == 'admin' || in_array('2', json_decode(Auth::user()->staff->role->permissions)))
                    <li class="aiz-side-nav-item">
                        <a href="{{route('categories.index')}}" class="aiz-side-nav-link {{ areActiveRoutes(['categories.index', 'categories.create', 'categories.edit'])}}">
                            <i class="las la-home aiz-side-nav-icon"></i>    
                            <span class="aiz-side-nav-text">{{translate('Category')}}</span>
                        </a>
                    </li>

                    <li class="aiz-side-nav-item">
                        <a href="{{route('brands.index')}}" class="aiz-side-nav-link {{ areActiveRoutes(['brands.index', 'brands.create', 'brands.edit'])}}">
                            <i class="las la-folder-open aiz-side-nav-icon"></i> 
                            <span class="aiz-side-nav-text">{{translate('Brand')}}</span>
                        </a>
                    </li>

                    <li class="aiz-side-nav-item">
                        <a href="{{route('attributes.index')}}" class="aiz-side-nav-link {{ areActiveRoutes(['attributes.index','attributes.create','attributes.edit'])}}">
                            <i class="las la-folder-open aiz-side-nav-icon"></i> 
                            <span class="aiz-side-nav-text">{{translate('Attribute')}}</span>
                        </a>
                    </li>

                    <li class="aiz-side-nav-item">
                        <a href="{{route('colors')}}" class="aiz-side-nav-link {{ areActiveRoutes(['attributes.index','attributes.create','attributes.edit'])}}">
                            <i class="las la-shopping-cart aiz-side-nav-icon"></i> 
                            <span class="aiz-side-nav-text">{{translate('Colors')}}</span>
                        </a>
                    </li>

                    <li class="aiz-side-nav-item">
                        <a href="#" class="aiz-side-nav-link">
                            <i class="las la-shopping-cart aiz-side-nav-icon"></i>
                            <span class="aiz-side-nav-text">{{translate('Products')}}</span>
                            <span class="aiz-side-nav-arrow"></span>
                        </a>
                        <!--Submenu-->
                        <ul class="aiz-side-nav-list level-2">
                            <li class="aiz-side-nav-item">
                                <a class="aiz-side-nav-link" href="{{route('products.create')}}">
                                    <span class="aiz-side-nav-text">{{translate('Add New product')}}</span>
                                </a>
                            </li>
                            <li class="aiz-side-nav-item">
                                <a href="{{route('products.all')}}" class="aiz-side-nav-link">
                                    <span class="aiz-side-nav-text">{{ translate('All Products') }}</span>
                                </a>
                            </li>
                            <li class="aiz-side-nav-item">
                                <a href="{{route('products.admin')}}" class="aiz-side-nav-link {{ areActiveRoutes(['products.admin', 'products.create', 'products.admin.edit']) }}">
                                    <span class="aiz-side-nav-text">{{ translate('In House Products') }}</span>
                                </a>
                            </li>
                            @if(get_setting('vendor_system_activation') == 1)
                            <li class="aiz-side-nav-item">
                                <a href="{{route('products.seller')}}" class="aiz-side-nav-link {{ areActiveRoutes(['products.seller', 'products.seller.edit']) }}">
                                    <span class="aiz-side-nav-text">{{ translate('Seller Products') }}</span>
                                </a>
                            </li>
                            @endif
                            
                            <li class="aiz-side-nav-item">
                                <a href="{{ route('product_bulk_upload.index') }}" class="aiz-side-nav-link">
                                    <span class="aiz-side-nav-text">{{ translate('Bulk Import') }}</span>
                                </a>
                            </li>
                            <li class="aiz-side-nav-item">
                                <a href="{{route('product_bulk_export.index')}}" class="aiz-side-nav-link">
                                    <span class="aiz-side-nav-text">{{translate('Bulk Export')}}</span>
                                </a>
                            </li>
                            
                            
                            <li class="aiz-side-nav-item">
                                <a href="{{route('reviews.index')}}" class="aiz-side-nav-link">
                                    <span class="aiz-side-nav-text">{{translate('Product Reviews')}}</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                @endif

                <!-- Service -->
                @if(Auth::user()->user_type == 'admin' || in_array('2', json_decode(Auth::user()->staff->role->permissions)))
                    <li class="aiz-side-nav-item">
                        <a href="#" class="aiz-side-nav-link">
                            <i class="las la-shopping-cart aiz-side-nav-icon"></i>
                            <span class="aiz-side-nav-text">{{translate('Services')}}</span>
                            <span class="aiz-side-nav-arrow"></span>
                        </a>
                        <!--Submenu-->
                        <ul class="aiz-side-nav-list level-2">
                            <li class="aiz-side-nav-item">
                                <a class="aiz-side-nav-link" href="{{route('services.create')}}">
                                    <span class="aiz-side-nav-text">{{translate('Add New Service')}}</span>
                                </a>
                            </li>
                            <li class="aiz-side-nav-item">
                                <a href="{{route('services.all')}}" class="aiz-side-nav-link">
                                    <span class="aiz-side-nav-text">{{ translate('All Services') }}</span>
                                </a>
                            </li>

                            @if(get_setting('vendor_system_activation') == 1)
                            <li class="aiz-side-nav-item">
                                <a href="{{route('products.seller')}}" class="aiz-side-nav-link {{ areActiveRoutes(['products.seller', 'products.seller.edit']) }}">
                                    <span class="aiz-side-nav-text">{{ translate('Seller Services') }}</span>
                                </a>
                            </li>
                            @endif
                            
                            <li class="aiz-side-nav-item">
                                <a href="{{route('reviews.index')}}" class="aiz-side-nav-link">
                                    <span class="aiz-side-nav-text">{{translate('Service Reviews')}}</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                @endif

                <!-- Sale -->
                <li class="aiz-side-nav-item">
                    <a href="#" class="aiz-side-nav-link">
                        <i class="las la-money-bill aiz-side-nav-icon"></i>
                        <span class="aiz-side-nav-text">{{translate('Sales')}}</span>
                        <span class="aiz-side-nav-arrow"></span>
                    </a>
                    <!--Submenu-->
                    <ul class="aiz-side-nav-list level-2">
                        @if(Auth::user()->user_type == 'admin' || in_array('3', json_decode(Auth::user()->staff->role->permissions)))
                            <li class="aiz-side-nav-item">
                                <a href="{{ route('all_orders.index') }}" class="aiz-side-nav-link {{ areActiveRoutes(['all_orders.index', 'all_orders.show'])}}">
                                    <span class="aiz-side-nav-text">{{translate('All Orders')}}</span>
                                </a>
                            </li>
                        @endif

                        @if(Auth::user()->user_type == 'admin' || in_array('4', json_decode(Auth::user()->staff->role->permissions)))
                            <li class="aiz-side-nav-item">
                                <a href="{{ route('inhouse_orders.index') }}" class="aiz-side-nav-link {{ areActiveRoutes(['inhouse_orders.index', 'inhouse_orders.show'])}}" >
                                    <span class="aiz-side-nav-text">{{translate('Inhouse orders')}}</span>
                                </a>
                            </li>
                        @endif
                        @if(Auth::user()->user_type == 'admin' || in_array('5', json_decode(Auth::user()->staff->role->permissions)))
                            <li class="aiz-side-nav-item">
                                <a href="{{ route('seller_orders.index') }}" class="aiz-side-nav-link {{ areActiveRoutes(['seller_orders.index', 'seller_orders.show'])}}">
                                    <span class="aiz-side-nav-text">{{translate('Seller Orders')}}</span>
                                </a>
                            </li>
                        @endif
                        @if(Auth::user()->user_type == 'admin' || in_array('6', json_decode(Auth::user()->staff->role->permissions)))
                            <li class="aiz-side-nav-item">
                                <a href="{{ route('pick_up_point.order_index') }}" class="aiz-side-nav-link {{ areActiveRoutes(['pick_up_point.order_index','pick_up_point.order_show'])}}">
                                    <span class="aiz-side-nav-text">{{translate('Pick-up Point Order')}}</span>
                                </a>
                            </li>
                        @endif
                    </ul>
                </li>

                  <!-- Customers -->
                @if(Auth::user()->user_type == 'admin' || in_array('8', json_decode(Auth::user()->staff->role->permissions)))
                    <li class="aiz-side-nav-item">
                        <a href="#" class="aiz-side-nav-link">
                            <i class="las la-user-friends aiz-side-nav-icon"></i>
                            <span class="aiz-side-nav-text">{{ translate('Customers') }}</span>
                            <span class="aiz-side-nav-arrow"></span>
                        </a>
                        <ul class="aiz-side-nav-list level-2">
                            <li class="aiz-side-nav-item">
                                <a href="{{ route('customers.index') }}" class="aiz-side-nav-link">
                                    <span class="aiz-side-nav-text">{{ translate('Customer list') }}</span>
                                </a>
                            </li>
                            
                        </ul>
                    </li>
                @endif

                <!-- Sellers -->
                @if((Auth::user()->user_type == 'admin' || in_array('9', json_decode(Auth::user()->staff->role->permissions))) && get_setting('vendor_system_activation') == 1)
                    <li class="aiz-side-nav-item">
                        <a href="#" class="aiz-side-nav-link">
                            <i class="las la-user aiz-side-nav-icon"></i>
                            <span class="aiz-side-nav-text">{{ translate('Sellers') }}</span>
                            <span class="aiz-side-nav-arrow"></span>
                        </a>
                        <ul class="aiz-side-nav-list level-2">
                            <li class="aiz-side-nav-item">
                                @php
                                    $sellers = \App\Models\Shop::where('verification_status', 0)->where('verification_info', '!=', null)->count();
                                @endphp
                                <a href="{{ route('sellers.index') }}" class="aiz-side-nav-link {{ areActiveRoutes(['sellers.index', 'sellers.create', 'sellers.edit', 'sellers.payment_history','sellers.approved','sellers.profile_modal','sellers.show_verification_request'])}}">
                                    <span class="aiz-side-nav-text">{{ translate('All Seller') }}</span>
                                    @if($sellers > 0)<span class="badge badge-info">{{ $sellers }}</span> @endif
                                </a>
                            </li>
                            <li class="aiz-side-nav-item">
                                <a href="{{ route('sellers.payment_histories') }}" class="aiz-side-nav-link">
                                    <span class="aiz-side-nav-text">{{ translate('Payouts') }}</span>
                                </a>
                            </li>
                            <li class="aiz-side-nav-item">
                                <a href="{{ route('withdraw_requests_all') }}" class="aiz-side-nav-link">
                                    <span class="aiz-side-nav-text">{{ translate('Payout Requests') }}</span>
                                </a>
                            </li>
                            <li class="aiz-side-nav-item">
                                <a href="{{ route('business_settings.vendor_commission') }}" class="aiz-side-nav-link">
                                    <span class="aiz-side-nav-text">{{ translate('Seller Commission') }}</span>
                                </a>
                            </li>

                            <li class="aiz-side-nav-item">
                                <a href="{{ route('seller_verification_form.index') }}" class="aiz-side-nav-link">
                                    <span class="aiz-side-nav-text">{{ translate('Seller Verification Form') }}</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                @endif

                <!-- Upload Files -->
                @if(Auth::user()->user_type == 'admin' || in_array('22', json_decode(Auth::user()->staff->role->permissions)))
                    <li class="aiz-side-nav-item">
                        <a href="{{ route('uploaded-files.index') }}" class="aiz-side-nav-link {{ areActiveRoutes(['uploaded-files.create'])}}">
                            <i class="las la-folder-open aiz-side-nav-icon"></i>
                            <span class="aiz-side-nav-text">{{ translate('Uploaded Files') }}</span>
                        </a>
                    </li>
                @endif

                 <!-- marketing -->
                 @if(Auth::user()->user_type == 'admin' || in_array('11', json_decode(Auth::user()->staff->role->permissions)))
                    <li class="aiz-side-nav-item">
                        <a href="#" class="aiz-side-nav-link">
                            <i class="las la-bullhorn aiz-side-nav-icon"></i>
                            <span class="aiz-side-nav-text">{{ translate('Marketing') }}</span>
                            <span class="aiz-side-nav-arrow"></span>
                        </a>
                        <ul class="aiz-side-nav-list level-2">
                            @if(Auth::user()->user_type == 'admin' || in_array('2', json_decode(Auth::user()->staff->role->permissions)))
                                <li class="aiz-side-nav-item">
                                    <a href="{{ route('flash_deals.index') }}" class="aiz-side-nav-link {{ areActiveRoutes(['flash_deals.index', 'flash_deals.create', 'flash_deals.edit'])}}">
                                        <span class="aiz-side-nav-text">{{ translate('Flash deals') }}</span>
                                    </a>
                                </li>
                            @endif
                            <!-- @if(Auth::user()->user_type == 'admin' || in_array('7', json_decode(Auth::user()->staff->role->permissions)))
                                <li class="aiz-side-nav-item">
                                    <a href="{{route('newsletters.index')}}" class="aiz-side-nav-link">
                                        <span class="aiz-side-nav-text">{{ translate('Newsletters') }}</span>
                                    </a>
                                </li>
                                @if (addon_is_activated('otp_system'))
                                    <li class="aiz-side-nav-item">
                                        <a href="{{route('sms.index')}}" class="aiz-side-nav-link">
                                            <span class="aiz-side-nav-text">{{ translate('Bulk SMS') }}</span>
                                            @if (env("DEMO_MODE") == "On")
                                                <span class="badge badge-inline badge-danger">Addon</span>
                                            @endif
                                        </a>
                                    </li>
                                @endif
                            @endif
                            <li class="aiz-side-nav-item">
                                <a href="{{ route('subscribers.index') }}" class="aiz-side-nav-link">
                                    <span class="aiz-side-nav-text">{{ translate('Subscribers') }}</span>
                                </a>
                            </li>
                            <li class="aiz-side-nav-item">
                                <a href="{{route('coupon.index')}}" class="aiz-side-nav-link {{ areActiveRoutes(['coupon.index','coupon.create','coupon.edit'])}}">
                                    <span class="aiz-side-nav-text">{{ translate('Coupon') }}</span>
                                </a>
                            </li> -->
                        </ul>
                    </li>
                @endif

                <!-- Website Setup -->
                @if(Auth::user()->user_type == 'admin' || in_array('13', json_decode(Auth::user()->staff->role->permissions)))
                    <li class="aiz-side-nav-item">
                        <a href="#" class="aiz-side-nav-link {{ areActiveRoutes(['website.footer', 'website.header', 'website.cat-wise-brand-list','website.cat-wise-offer-list','website.home-category-section'])}}" >
                            <i class="las la-desktop aiz-side-nav-icon"></i>
                            <span class="aiz-side-nav-text">{{translate('Website Setup')}}</span>
                            <span class="aiz-side-nav-arrow"></span>
                        </a>
                        <ul class="aiz-side-nav-list level-2">
                            <li class="aiz-side-nav-item">
                                <a href="{{ route('website.header') }}" class="aiz-side-nav-link">
                                    <span class="aiz-side-nav-text">{{translate('Header')}}</span>
                                </a>
                            </li>
                            <li class="aiz-side-nav-item">
                                <a href="{{ route('website.footer', ['lang'=>  App::getLocale()] ) }}" class="aiz-side-nav-link {{ areActiveRoutes(['website.footer'])}}">
                                    <span class="aiz-side-nav-text">{{translate('Footer')}}</span>
                                </a>
                            </li>
                            <li class="aiz-side-nav-item">
                                <a href="{{ route('website.pages') }}" class="aiz-side-nav-link {{ areActiveRoutes(['website.pages', 'custom-pages.create' ,'custom-pages.edit'])}}">
                                    <span class="aiz-side-nav-text">{{translate('Pages')}}</span>
                                </a>
                            </li>
                            <li class="aiz-side-nav-item">
                                <a href="{{ route('website.appearance') }}" class="aiz-side-nav-link">
                                    <span class="aiz-side-nav-text">{{translate('Appearance')}}</span>
                                </a>
                            </li>
                            <li class="aiz-side-nav-item">
                                <a href="{{ route('website.cat-wise-brand-list') }}" class="aiz-side-nav-link">
                                    <span class="aiz-side-nav-text">{{translate('Category Wise Brand')}}</span>
                                </a>
                            </li>
                            <li class="aiz-side-nav-item">
                                <a href="{{ route('website.cat-wise-offer-list') }}" class="aiz-side-nav-link">
                                    <span class="aiz-side-nav-text">{{translate('Category Wise Offer')}}</span>
                                </a>
                            </li>
							<li class="aiz-side-nav-item">
                                <a href="{{ route('website.home-category-section') }}" class="aiz-side-nav-link">
                                    <span class="aiz-side-nav-text">{{translate('Home Category Section')}}</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                @endif

                <a href="{{ url('admin/enquiry/product-enquiry') }}" class="aiz-side-nav-link">
                    <span class="aiz-side-nav-text">{{translate('Product Request Enquiry')}}</span>
                </a>
				
				<!-- Enquiry Setup -->
                @if(Auth::user()->user_type == 'admin' || in_array('13', json_decode(Auth::user()->staff->role->permissions)))
                    <li class="aiz-side-nav-item">
                        <a href="#" class="aiz-side-nav-link {{ areActiveRoutes(['admin/enquiry', 'enq.productEnquiry'])}}" >
                            <i class="las la-desktop aiz-side-nav-icon"></i>
                            <span class="aiz-side-nav-text">{{translate('Enquiry')}}</span>
                            <span class="aiz-side-nav-arrow"></span>
                        </a>
                        <ul class="aiz-side-nav-list level-2">
                            <li class="aiz-side-nav-item">
                                <a href="{{ url('admin/enquiry') }}" class="aiz-side-nav-link">
                                    <span class="aiz-side-nav-text">{{translate('Enquiry')}}</span>
                                </a>
								<a href="{{ url('admin/enquiry/product-enquiry') }}" class="aiz-side-nav-link">
                                    <span class="aiz-side-nav-text">{{translate('Product Request Enquiry')}}</span>
                                </a>
                            </li>
                            
                        </ul>
                    </li>
                @endif

                <!-- Setup & Configurations -->
                @if(Auth::user()->user_type == 'admin' || in_array('14', json_decode(Auth::user()->staff->role->permissions)))
                <li class="aiz-side-nav-item">
                    <a href="#" class="aiz-side-nav-link">
                        <i class="las la-dharmachakra aiz-side-nav-icon"></i>
                        <span class="aiz-side-nav-text">{{translate('Setup & Configurations')}}</span>
                        <span class="aiz-side-nav-arrow"></span>
                    </a>
                    <ul class="aiz-side-nav-list level-2">
                        <li class="aiz-side-nav-item">
                            <a href="{{route('general_setting.index')}}" class="aiz-side-nav-link">
                                <span class="aiz-side-nav-text">{{translate('General Settings')}}</span>
                            </a>
                        </li>

                        <li class="aiz-side-nav-item">
                            <a href="{{route('tax.index')}}" class="aiz-side-nav-link {{ areActiveRoutes(['tax.index', 'tax.create', 'tax.store', 'tax.show', 'tax.edit'])}}">
                                <span class="aiz-side-nav-text">{{translate('Vat & TAX')}}</span>
                            </a>
                        </li>
                        <li class="aiz-side-nav-item">
                            <a href="{{route('pick_up_points.index')}}" class="aiz-side-nav-link {{ areActiveRoutes(['pick_up_points.index','pick_up_points.create','pick_up_points.edit'])}}">
                                <span class="aiz-side-nav-text">{{translate('Pickup point')}}</span>
                            </a>
                        </li>
                        <li class="aiz-side-nav-item">
                            <a href="{{ route('smtp_settings.index') }}" class="aiz-side-nav-link">
                                <span class="aiz-side-nav-text">{{translate('SMTP Settings')}}</span>
                            </a>
                        </li>

                    </ul>
                </li>
                @endif

                <!-- Staffs -->
                @if(Auth::user()->user_type == 'admin' || in_array('20', json_decode(Auth::user()->staff->role->permissions)))
                    <li class="aiz-side-nav-item">
                        <a href="#" class="aiz-side-nav-link">
                            <i class="las la-user-tie aiz-side-nav-icon"></i>
                            <span class="aiz-side-nav-text">{{translate('Staffs')}}</span>
                            <span class="aiz-side-nav-arrow"></span>
                        </a>
                        <ul class="aiz-side-nav-list level-2">
                            <li class="aiz-side-nav-item">
                                <a href="{{ route('staffs.index') }}" class="aiz-side-nav-link {{ areActiveRoutes(['staffs.index', 'staffs.create', 'staffs.edit'])}}">
                                    <span class="aiz-side-nav-text">{{translate('All staffs')}}</span>
                                </a>
                            </li>
                            <li class="aiz-side-nav-item">
                                <a href="{{route('roles.index')}}" class="aiz-side-nav-link {{ areActiveRoutes(['roles.index', 'roles.create', 'roles.edit'])}}">
                                    <span class="aiz-side-nav-text">{{translate('Staff permissions')}}</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                @endif

               

            </ul><!-- .aiz-side-nav -->
        </div><!-- .aiz-side-nav-wrap -->
    </div><!-- .aiz-sidebar -->
    <div class="aiz-sidebar-overlay"></div>
</div><!-- .aiz-sidebar -->