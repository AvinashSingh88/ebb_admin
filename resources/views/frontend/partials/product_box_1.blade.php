				<div class="product-box product_data">
                           <div class="beachs">10% Off</div>
                           <img src="{{ uploaded_asset($product->thumbnail_img) }}" alt="{{  $product->getTranslation('name')  }}" onerror="this.onerror=null;this.src='{{ static_asset('assets/img/placeholder.jpg') }}';">
                           <div class="discrptions">
                              <a href="{{ route('product', $product->slug) }}"><h5 class="text-truncate-2">{{ $product->getTranslation('name')  }} </h5></a>
                              <h6>MRP/-  {{ home_discounted_base_price($product) }}</h6>
                           </div>
                           <ul class="ulproducts">
                              <li>In stock</li>
                              <li>Non returnable</li>
                              <li>Usually ships in 24-72 Hours</li>
                           </ul>
						   @php
						     $price = $product->unit_price - ($product->unit_price * $product->discount) / 100;
							@endphp
						   <input type="hidden" value="{{$product->id}}" class="prod_id">
						   <input type="hidden" value="{{ $price }}" class="prod_price">
                           <div class="discrptions_button buddonjdk">
                              <h5><a href="{{ route('product', $product->slug) }}"><i class="fa fa-eye"></i></a></h5>
                              <button id="btn1" type="button" class="btn cart active cart_buttons{{$product->id}} addToCartButton"><i class="fa fa-shopping-cart" aria-hidden="true"></i> <span class="name">Add to cart</span> </button>
						<div class="cart-add cart-add{{$product->id}} ">
							<div class="input-group quantity_input">
							 <h6 class="cart_buttons cart_icons{{$product->id}}"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></h6>   
                                 <span class="input-group-btn">
                                 <button type="button" class="quantity-left-minus btn btn-danger btn-number"  data-type="minus" data-field="">
                                 <i class="fa fa-minus" aria-hidden="true"></i>
                                 </button>
                                 </span>
                                 <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1" min="1" max="100">
                                 <span class="input-group-btn">
                                 <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus" data-field="">
                                 <i class="fa fa-plus" aria-hidden="true"></i>
                                 </button>
                                 </span>
                              </div>
							  
							  </div>
						 </div>
				</div>
				<script>
				$('.cart_buttons{{$product->id}}').on('click', function() {
    $('.cart_buttons{{$product->id}}').removeClass('active');
    $('.cart-add{{$product->id}}').addClass('active');
});
$('.cart_icons{{$product->id}}').on('click', function() {
    $('.cart-add{{$product->id}}').removeClass('active');
    $('.cart_buttons{{$product->id}}').addClass('active');
});
				</script>