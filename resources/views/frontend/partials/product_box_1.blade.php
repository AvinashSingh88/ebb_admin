<div class="product-box h-auto product_data pb-3">
   <div class="beachs">{{$product->discount}}% Off</div>
   <img src="{{ uploaded_asset($product->thumbnail_img) }}" alt="{{  $product->getTranslation('name')  }}"
      onerror="this.onerror=null;this.src='{{ static_asset('assets/img/placeholder.jpg') }}';">
	
   <div class="discrptions">
      <a href="{{ route('product', $product->slug) }}">
         <h5 class="text-truncate-2">{{ $product->getTranslation('name') }} </h5>
      </a>
      <h6>MRP/- {{ home_discounted_base_price($product) }}</h6>
   </div>
   <!-- <ul class="ulproducts">
                              <li>In stock</li>
                              <li>Non returnable</li>
                              <li>Usually ships in 24-72 Hours</li>
                           </ul> -->
   @php
   $price = $product->unit_price - ($product->unit_price * $product->discount) / 100;
   @endphp
    
	
	 <div class="discrptions_button buddonjdk">
                            <h5 class="mask-overflow">
							<a href="{{ route('product', $product->slug) }}"><i class="fa fa-eye"></i></a>
							</h5>
							
                              <button  type="button" id="{{$product->id}}" onclick="showAddToCartModals(this)" class="btn cart active">
							  <i class="fa fa-shopping-cart" aria-hidden="true"></i> 
							  <span class="name">Add to cart</span> 
							  </button>
							  
                             
                           </div>
	
	
</div>
