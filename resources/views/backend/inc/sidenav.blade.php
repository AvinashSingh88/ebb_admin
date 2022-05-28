<aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
   
    <div class="app-brand demo ">
        <a href="{{ route('admin.dashboard') }}" class="app-brand-link">
        <span class="app-brand-logo demo">
            @if(get_setting('system_logo_white') != null)
                <img src="{{ uploaded_asset(get_setting('system_logo_white')) }}" alt="{{ get_setting('site_name') }}" style="width: 50px;">
            @else
                <img src="{{ static_asset('assets/img/logo.png') }}" alt="{{ get_setting('site_name') }}" style="width: 50px;">
            @endif
        </span>
        </a>
        <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto">
        <i class="bx bx-chevron-left bx-sm align-middle"></i>
        </a>
    </div>

    <div class="menu-inner-shadow"></div>

    <ul class="menu-inner py-1">
        <!-- Dashboards -->
        <li class="menu-item">
            <a href="{{translate('Dashboard')}}" class="menu-link">
                <i class="menu-icon tf-icons bx bx-home-circle"></i>
                <div data-i18n="Dashboards">{{translate('Dashboard')}}</div>
            </a>
        </li>

        @if(Auth::user()->user_type == 'admin' || in_array('2', json_decode(Auth::user()->staff->role->permissions)))
        <li class="menu-item">
            <a href="#" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-home-circle"></i>
                <div data-i18n="Dashboards">{{translate('Products')}}</div>
            </a>

            <ul class="menu-sub">
                <li class="menu-item">
                    <a href="{{route('products.create')}}" class="menu-link">
                        <div data-i18n="Super Admin">{{translate('Add New product')}}</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="{{route('products.all')}}" class="menu-link">
                        <div data-i18n="CRM">{{translate('All Products')}}</div>
                    </a>
                </li>
                @if(get_setting('vendor_system_activation') == 1)
                <li class="menu-item">
                    <a href="{{route('products.seller')}}" class="menu-link">
                        <div data-i18n="Seller Products">{{translate('Seller Products')}}</div>
                    </a>
                </li>
                @endif

                <li class="menu-item">
                    <a href="{{route('product_bulk_upload.index')}}" class="menu-link">
                        <div data-i18n="CRM">{{translate('Bulk Import')}}</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="{{route('product_bulk_export.index')}}" class="menu-link">
                        <div data-i18n="CRM">{{translate('Bulk Export')}}</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="{{route('reviews.index')}}" class="menu-link">
                        <div data-i18n="CRM">{{translate('Products Reviews')}}</div>
                    </a>
                </li>
                
            </ul>
        </li>
        @endif 

        @if(Auth::user()->user_type == 'admin' || in_array('2', json_decode(Auth::user()->staff->role->permissions)))
        <li class="menu-item">
            <a href="#" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-home-circle"></i>
                <div data-i18n="Dashboards">{{translate('Manage Attributes')}}</div>
            </a>

            <ul class="menu-sub">
                <li class="menu-item">
                    <a href="{{route('categories.index')}}" class="menu-link">
                        <div data-i18n="">{{translate('Category')}}</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="{{route('brands.index')}}" class="menu-link">
                        <div data-i18n="">{{translate('Brand')}}</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="{{route('attributes.index')}}" class="menu-link">
                        <div data-i18n="">{{translate('Attribute')}}</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="{{route('colors')}}" class="menu-link">
                        <div data-i18n="">{{translate('Colors')}}</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="{{route('brands.index')}}" class="menu-link">
                        <div data-i18n="">{{translate('Brand')}}</div>
                    </a>
                </li>


               
                
            </ul>
        </li>
        @endif


        @if(Auth::user()->user_type == 'admin' || in_array('22', json_decode(Auth::user()->staff->role->permissions)))
        <li class="menu-item">
            <a href="{{ route('uploaded-files.index') }}" class="menu-link">
                <i class="menu-icon tf-icons bx bx-chart"></i>
                <div data-i18n="File System Configuration">{{ translate('Uploaded Files') }}</div>
            </a>
        </li>    
        @endif
               


    </ul><!-- .aiz-side-nav -->


</aside>
