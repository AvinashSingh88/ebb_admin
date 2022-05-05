<nav class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme" id="layout-navbar">
    <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0   d-xl-none ">
        <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
        <i class="bx bx-menu bx-sm"></i>
        </a>
    </div>
    <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
        <div class="navbar-nav align-items-center">
            <div class="nav-item mb-0">
                <a class="nav-item nav-link px-0" href="javascript:void(0);">
                    <i class="las la-hdd fs-20"></i>
                    <span class="d-none d-md-inline-block text-muted">{{ translate('Clear Cache') }}</span>  
                </a>
            </div>
        </div>
        
        <ul class="navbar-nav flex-row align-items-center ms-auto">   
            <li class="nav-item dropdown-language dropdown me-2 me-xl-0">
                <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                <img src="{{ static_asset('assets/img/india.png') }}" alt="" style="width:50px;">
                </a>
                <ul class="dropdown-menu dropdown-menu-end">
                    <li>
                        <a class="dropdown-item" href="javascript:void(0);" data-language="en">
                        <img src="{{ static_asset('assets/img/india.png')}}" alt="" style=" width: 25px; margin-right: 3px;">
                        <span class="align-middle">India</span>
                        </a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="javascript:void(0);" data-language="en">
                        <i class="flag-icon flag-icon-us flag-icon-squared rounded-circle fs-4 me-1"></i>
                        <span class="align-middle">English</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item me-2 me-xl-0">
                <a class="nav-link style-switcher-toggle hide-arrow" href="javascript:void(0);">
                <i class='bx bx-sm'></i>
                </a>
            </li>

            <li class="nav-item dropdown-notifications navbar-dropdown dropdown me-3 me-xl-1">
                <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">
                <i class="bx bx-bell bx-sm"></i>
                <span class="badge bg-danger rounded-pill badge-notifications">5</span>
                </a>
                <ul class="dropdown-menu dropdown-menu-end py-0">
                <li class="dropdown-menu-header border-bottom">
                    <div class="dropdown-header d-flex align-items-center py-3">
                        <h5 class="text-body mb-0 me-auto">Notification</h5>
                        <a href="javascript:void(0)" class="dropdown-notifications-all text-body" data-bs-toggle="tooltip" data-bs-placement="top" title="Mark all as read"><i class="bx fs-4 bx-envelope-open"></i></a>
                    </div>
                </li>
                <li class="dropdown-notifications-list scrollable-container">
                        <ul class="list-group list-group-flush">

                            @forelse(Auth::user()->unreadNotifications->take(20) as $notification)
                                <li class="list-group-item list-group-item-action dropdown-notifications-item">
                                    <div class="d-flex">
                                        <div class="flex-shrink-0 me-3">
                                            
                                        </div>
                                        <div class="flex-grow-1">
                                            @if($notification->type == 'App\Notifications\OrderNotification')
                                            
                                                <p class="mb-0">
                                                    {{translate('Order code: ')}} {{$notification->data['order_code']}} {{ translate('has been '. ucfirst(str_replace('_', ' ', $notification->data['status'])))}}
                                                </p>
                                                <small class="text-muted">
                                                    {{ date("F j Y, g:i a", strtotime($notification->created_at)) }}
                                                </small>
                                            @endif
                                        </div>
                                    </div>
                                </li>
                            @empty
                                <li class="list-group-item">
                                    <div class="py-4 text-center fs-16">
                                        {{ translate('No notification found') }}
                                    </div>
                                </li>
                            @endforelse


                            
                        </ul>
                    </li>
                    <li class="dropdown-menu-footer border-top">
                        <a href="{{ route('admin.all-notification') }}" class="dropdown-item d-flex justify-content-center p-3">
                            {{translate('View All Notifications')}}
                        </a>
                    </li>    
                </ul>
            </li>

            <li class="nav-item navbar-dropdown dropdown-user dropdown">
                <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                <div class="avatar avatar-online">
                    <img src="{{ static_asset('assets/img/avatars/1.png') }}" alt class="w-px-40 h-auto rounded-circle">
                </div>
                </a>
                <ul class="dropdown-menu dropdown-menu-end">

                <li>
                    <a class="dropdown-item" href="#">
                        <div class="d-flex">
                            <div class="flex-shrink-0 me-3">
                            <div class="">
                                <img src="{{ uploaded_asset(Auth::user()->avatar_original) }}" alt class="w-px-40 h-auto rounded-circle">
                            </div>
                            </div>
                            <div class="flex-grow-1">
                            <span class="fw-semibold d-block">{{Auth::user()->name}}</span>
                            <small class="text-muted">{{Auth::user()->user_type}}</small>
                            </div>
                        </div>
                    </a>
                </li>

                <li>
                    <div class="dropdown-divider"></div>
                </li>

                <li>
                    <a class="dropdown-item" href="{{ route('profile.index') }}">
                    <i class="bx bx-user me-2"></i>
                    <span class="align-middle">My Profile</span>
                    </a>
                </li>
                <li>
                    <a class="dropdown-item" href="{{ route('logout')}}" target="_blank">
                    <i class="bx bx-power-off me-2"></i>
                    <span class="align-middle">Log Out</span>
                    </a>
                </li>

                </ul>
            </li>
        </ul>
    </div>
    <div class="navbar-search-wrapper search-input-wrapper  d-none">
        <input type="text" class="form-control search-input container-xxl border-0" placeholder="Search..." aria-label="Search...">
        <i class="bx bx-x bx-sm search-toggler cursor-pointer"></i>
    </div>
</nav>