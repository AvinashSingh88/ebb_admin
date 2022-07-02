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
   <input type="hidden" value="{{$product->id}}" class="prod_id">
   <input type="hidden" value="{{ $price }}" class="prod_price">
	
	
	   <!---<div class="discrptions_button buddonjdk">
                            <h5 class="mask-overflow"><a href="{{ route('product', $product->slug) }}"><i class="fa fa-eye"></i></a></h5>
                              <button id="btn1" type="button" class="btn cart active cart_buttons1  cart_buttons{{$product->id}} addToCartButton"><i class="fa fa-shopping-cart" aria-hidden="true"></i> <span class="name">Add to cart</span> </button>
                              <div class="cart-add cart-add1 products_list ">
                                 <div class="input-group quantity_input mb-0">
                                     <div class="input-group w-auto justify-content-end align-items-center packageadd">
                                      <a href="cart.php"> <h6 class="cart_buttons cart_icons1"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></h6></a>
                                       <input type="button" value="-" class="button-minus border rounded-circle quantity-left-minus icon-shape icon-sm mx-1 " data-field="quantity">
                                       <input type="number" step="1" max="10" value="1" name="quantity" class="quantity quantity-field border-0 text-center w-25">
                                       <input type="button" value="+" class="button-plus border rounded-circle quantity-right-plus icon-shape icon-sm lh-0" data-field="quantity">
                                    </div>
                                 </div>
                              </div>
                           </div>-->
	
	
	
	
  <!--<div class="discrptions_button buddonjdk">
      <h5 class="mask-overflow"><a href="{{ route('product', $product->slug) }}"><i class="fa fa-eye"></i></a></h5>
      <button id="btn1" type="button" class="btn cart active cart_buttons{{$product->id}} addToCartButton"><i
            class="fa fa-shopping-cart" aria-hidden="true"></i> <span class="name">Add to cart</span> </button>
      <div class="cart-add cart-add{{$product->id}} ">
         <div class="input-group quantity_input mb-0">
            <h6 class="cart_buttons cart_icons{{$product->id}}"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
            </h6>
            <span class="input-group-btn">
               <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus"
                  data-field="">
                  <i class="fa fa-minus" aria-hidden="true"></i>
               </button>
            </span>
            <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1" min="1"
               max="100">
            <span class="input-group-btn">
               <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus"
                  data-field="">
                  <i class="fa fa-plus" aria-hidden="true"></i>
               </button>
            </span>
         </div>

      </div>
   </div>-->
</div>
 