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
                            <a href="{{route('categories.index')}}" class="aiz-side-nav-link {{ areActiveRoutes(['categories.index', 'categories.create', 'categories.edit'])}}">
                                <span class="aiz-side-nav-text">{{translate('Category')}}</span>
                            </a>
                        </li>
                        <li class="aiz-side-nav-item">
                            <a href="{{route('brands.index')}}" class="aiz-side-nav-link {{ areActiveRoutes(['brands.index', 'brands.create', 'brands.edit'])}}">
                                <span class="aiz-side-nav-text">{{translate('Brand')}}</span>
                            </a>
                        </li>
                        <li class="aiz-side-nav-item">
                            <a href="{{route('attributes.index')}}" class="aiz-side-nav-link {{ areActiveRoutes(['attributes.index','attributes.create','attributes.edit'])}}">
                                <span class="aiz-side-nav-text">{{translate('Attribute')}}</span>
                            </a>
                        </li>
                        <li class="aiz-side-nav-item">
                            <a href="{{route('colors')}}" class="aiz-side-nav-link {{ areActiveRoutes(['attributes.index','attributes.create','attributes.edit'])}}">
                                <span class="aiz-side-nav-text">{{translate('Colors')}}</span>
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

              

            </ul><!-- .aiz-side-nav -->
        </div><!-- .aiz-side-nav-wrap -->
    </div><!-- .aiz-sidebar -->
    <div class="aiz-sidebar-overlay"></div>
</div><!-- .aiz-sidebar -->