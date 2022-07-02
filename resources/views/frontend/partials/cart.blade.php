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
				<a href="{{url('cart')}}">
						<i class="fa fa-cart-arrow-down" aria-hidden="true"></i> 
						@if(isset($cart) && count($cart) > 0)
						<span class="cart-count">{{ count($cart)}}</span> 
					  @else
						  <span class="cart-count">0</span> 
						  @endif
					
						</a>
						
