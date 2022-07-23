<div class="both_holder sidkierls shadow-none">
  
    <div class="rhods mt-3">
	  
        <ul class="profileulnens first-list profiles_logins">
		<li class="d-flex px-4 py-2 border-bottom">  
	  <p class="m-0 p-0 fs-7 fw-4"> My Account</p>
	 
		</li>
		 
							    <li class="{{ set_active('purchase_history') }}"><a href="{{url('purchase_history')}}"><i class="bg_icon-img"></i>My Orders</a></li>
                                <li class="{{ set_active('product_return') }}"><a href="javascript:void(0);"><i class="bg_icon-img"></i>Bulk Order</a></li>
                                <li class="{{ set_active('product_return') }}"><a href="{{url('product_return')}}"><i class="bg_icon-img"></i>My Returns</a></li>
                                <li class="{{ set_active('wishlists') }}"><a href="javascript:void(0);"><i class="bg_icon-img"></i><span class="w-75">Wishlist</span> <span class="float-right background_box">0</span></a></li>
                                <li class="{{ set_active('profile') }}"><a href="{{url('profile')}}"><i class="bg_icon-img"></i>My Profile</a></li>
                                {{-- <li class="{{ set_active('chat') }}"><a href="{{url('chat')}}"><i class="bg_icon-img"></i>My Chat</a></li> --}}
                                {{-- <li class="{{ set_active('ebbbucks-cluesbucks') }}"><a href="{{url('ebbbucks-cluesbucks')}}"><i class="bg_icon-img"></i><span class="w-75">My CluesBucks</span> <span class="float-right background_box">0</span></a></li> --}}
								{{-- <li class="{{ set_active('ebbbucks-balance') }}"><a href="{{url('ebbbucks-balance')}}" class="d-flex"><i class="bg_icon-img"></i> <span class="w-75">My CluesBucks &nbsp;+ &nbsp;</span>   --}}
								{{-- <span class="float-right background_box">0</span></a></li> --}}
                                {{-- <li class="{{ set_active('feedback') }}"><a href="{{url('feedback')}}"><i class="bg_icon-img"></i>My Feedback</a></li> --}}
                                {{-- <li class="{{ set_active('favourite_store') }}"><a href="{{url('favourite_store')}}"><i class="bg_icon-img"></i>My Favorite Stores</a></li> --}}
                                <li class="{{ set_active('help_support') }}"><a href="{{url('help_support')}}"><i class="bg_icon-img"></i>Help &amp; Support</a></li>
								<li><a href="{{url('logout')}}"><i class="bg_icon-img"></i>Sign Out</a></li>
								
		
         
        </ul>
    </div>
</div>