@extends('frontend.master')

@section('content')

<style>
   input.button-plus.border.rounded-circle.quantity-right-plus.icon-shape.icon-sm.lh-0 {
    background: #ff6c00;
    width: 30px;
    color: #fff;
    font-size: 18px;
    border: none;
    box-shadow: none;
    height: 30px;
    text-align: center;
    padding: 0px;
}
input.button-minus.border.rounded-circle.quantity-left-minus.icon-shape.icon-sm.mx-1{
    background:#1274c0;
    width: 30px;
    color: #fff;
    font-size: 18px;
    border: none;
    box-shadow: none;
    height: 30px;
    text-align: center;
    padding: 0px;
}
input.quantity.quantity-field.border-0.text-center.w-25 {
    border: 1px solid #ccc !important;
    height: 30px;
    width: 65px !important;
    margin: 0px !important;
}
   </style>
   
<section class="pageTitle" style="    background-image: url({{static_asset('assets_web/img/small_banner.jpg')}});height: 240px; background-size: contain;">
      <div class="container">
      </div>
   </section>
   <!--top banner end -->
   <div class="discription_section new-post carts_nbs">
      <div class="container">
         <div class="row ">
            <div class="col-md-8 breadmcrumsize ">
               <nav aria-label="breadcrumb">
                     <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{{url('')}}">Home</a></li>  
                  <li class="breadcrumb-item active" aria-current="page"> Cart     </li>
               </ol>
               </nav>
            </div>
            <div class="col-md-4">
            </div>
         </div>
         <div id="cart-summary" class="justify-content-between1">
			@if( $carts && count($carts) > 0 )
            <div class="row p-2">
               <div class="col-md-9">
                  <div class="boxcol p-4  pt-2">
                     <div class="container1">
					   
					   <div class="border-bottom1 border-color-11 mt-3 mb-3">
                        <h3 class="section-title section-title__sm mb-0 pb-0 font-size-18"> <i class="fa-solid fa-cart-shopping"></i> My Cart</h3>
						<div class="deals"> 
                     <hr>
                  </div>
                     </div>
					    {{-- <div class="col-sm-3 tag-cart">Steel</div> --}}
						<div id="">
							<table class="table1" id="cart" class="table table-hover table-condensed">
							 
							   <tbody style="border: 1px solid #d3d3d385; border-radius:10px;">
                           @php
                               $total=0;
                           @endphp
							@foreach ($carts as $item)
								
							
								  <tr class="product_data">
									 <td data-th="Product">
										<div class="row p-2">
										   <div class="col-sm-3 hidden-xs">
											  <img src="{{ uploaded_asset($item->product->thumbnail_img) }}" alt="{{$item->product->name}}" class="cart-img" />
										   </div>
										   <div class="col-sm-6 text-cart">
											  <h4 class="nomargin">{{$item->product->name}}</h4>
											  <p class="pr-des-cart">Whatever your needs be, we’ll provide you with tailor-made solutions that breathe life in your interiors. </p>
											  <div class="row p-2">
												 <div class="col-sm-4 ">
												  <p class="pp-cart m-0"><i class="fa-solid fa-indian-rupee-sign"></i> {{$item->price}}</p>
												  <p class="pp-cart m-0">Total: {{$item->quantity}} X {{$item->price}} = <i class="fa-solid fa-indian-rupee-sign"></i>  {{$item->quantity*$item->price}}</p>
												 </div>
												   <!--<div class="col-sm-3 cartoff">
													8 % Off
													</div>  --->
											  </div>
										   </div>
										   <input type="hidden" class="prod_id" value="{{$item->id}}">
											<div class="col-sm-3 input-cart">
											<div class="cart-add cart-add1 d-block">
											<div class="input-group quantity_input justify-content-end">
											  <div class="input-group w-auto justify-content-end align-items-center packageadd">
			 <input type="button" value="-" class="button-minus border rounded-circle quantity-left-minus icon-shape icon-sm mx-1 " data-field="quantity[{{ $item->id }}]">
			 <input type="number" data-id="{{ $item->id }}" step="1" max="10" value="{{ $item->quantity }}" min="{{ $item->product->min_qty }}" max="" name="quantity[]" class="quantity quantity-field border-0 text-center w-25 qty">
			 <input type="button" value="+" class="button-plus border rounded-circle quantity-right-plus icon-shape icon-sm lh-0" data-field="quantity[{{ $item->id }}]">
		  </div>
							 
								  </div>
								  <button class="remove float-right w-75 m-0 d-flow-root delete-cart-item">Remove <i class="fa-solid fa-trash-can"></i></button>
								  </div>
											
										   </div>
										   <div class=" col-lg-12 bd-bt "></div>
										</div>
									 </td>
								  </tr>
							@php
                               $total +=$item->price * $item->quantity;
                           @endphp
								  @endforeach     
								  
							   </tbody>
							</table>
						</div>
                        
						<div class="d-flow-root">
						<div class="d-flex mt-2 float-right">
						 <div class="cont2"><a href="{{url('checkout')}}" class="">  Proceed to checkout</a>
                                 </div>
                                 <div class="continue "><a href="{{url('')}}" class=""><i class="fa-solid fa-cart-shopping"></i> Continue Shopping</a>
                                 </div>
						</div>
						</div>
                     </div>
                  </div>
               </div>
               <div class="col-md-3">
               <div class="col-sidkild">
                  <div class=" boxcol  product-list-cart p-4 pt-2">
				  <div class="border-bottom1 border-color-11 mt-3 mb-3">
                        <h3 class="section-title section-title__sm mb-0 pb-0 font-size-18"> Order Summary</h3>
						<div class="deals"> 
                     <hr>
                  </div>
                     </div>
                   
                     <div id="cart_total_price" class="table-responsive cartpage  product-list-cart">
                        <table class="table3 table-cartsummary">
                           <tbody>
                              <tr class="bd-nn1 mb-3">
                                 <td class="w-75 border-0">Price (<span class="cart_count"></span> Item)</td>
                                 <td class="w-25 border-0">₹ <span>{{$total}}</span></td>
                              </tr>
                              <tr class="bd-nn1 mb-3 border-0">
                                 <td class="w-75  border-0">Delivery Charge</td>
                                 <td class="w-25  border-0">₹ <span>0</span></td>
                              </tr>
                              <tr class="amount-pay">
                                 <td class="w-75">Amount Payable</td>
                                 <td class="w-25">₹ <span>{{$total+0}}</span></td>
                              </tr>
                           </tbody>
                        </table>
                     </div>

                  </div>
                  <div class="boxcol  product-list-cart  col-cartpoint p-4 pt-2">
                     <div class="">
                        <div class="cartPointsPan">
                           <div class="pointsWrap">
                              <div class="icons"><img src="{{static_asset('assets_web/img/iconcome1.svg')}}" alt="Lowest Price Guaranteed"></div>
                              <div class="pointLabel">Lowest Price Guaranteed</div>
                           </div>
                           <div class="pointsWrap">
                              <div class="icons"><img src="{{static_asset('assets_web/img/iconcome2.svg')}}" alt="Worldwide Delivery"></div>
                              <div class="pointLabel">Worldwide Delivery</div>
                           </div>
                           <div class="pointsWrap">
                              <div class="icons"><img src="{{static_asset('assets_web/img/iconcome3.svg')}}" alt="Easily Track your Order"></div>
                              <div class="pointLabel">Easily Track your Order</div>
                           </div>
                           <div class="pointsWrap">
                              <div class="icons"><img src="{{static_asset('assets_web/img/iconcome4.svg')}}" alt="Buy Products on Credit"></div>
                              <div class="pointLabel">Buy Products on Credit</div>
                           </div>
                           <div class="scheduledCallback">
                              <div><img src="{{static_asset('assets_web/img/iconcome5.svg')}}" alt="scheduleCallback"></div>
                              <div>
                                 <div>Any Confusion "No worries"</div>
                                 <button type="button" class="btn btn-default">Request A Call Back</button>
                                 <div class="hide">
                                    <div class="modal">
                                       <div class="modalInnerContent callbackModal m">
                                          <div class="modalHeader">
                                             <div class="modalTitle">Request A Call Back</div>
                                             <button type="button" class="btn close">
                                                <svg width="14" height="14" viewBox="0 0 24 24" style="display: inline-block; vertical-align: middle;">
                                                   <path d="M14.6,12l8.8-8.8C23.8,2.8,24,2.4,24,1.9s-0.2-1-0.5-1.3c-0.7-0.7-1.9-0.7-2.6,0L12,9.4L3.2,0.6c-0.7-0.7-1.9-0.7-2.6,0s-0.7,1.9,0,2.6L9.4,12l-8.8,8.8c-0.7,0.7-0.7,1.9,0,2.6s1.9,0.7,2.6,0l8.8-8.8l8.8,8.8c0.4,0.4,0.8,0.5,1.3,0.5s1-0.2,1.3-0.5c0.4-0.4,0.5-0.8,0.5-1.3s-0.2-1-0.5-1.3L14.6,12z" fill="#000"></path>
                                                </svg>
                                             </button>
                                          </div>
                                          <div class="modalContent"><iframe title="Contact form" frameborder="0" src="#2" style="height: 650px; width: 99%; border: none;"></iframe></div>
                                       </div>
                                       <span role="button" tabindex="0" class="backdropOverlay"></span>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               </div>
            </div>
			@else
				<div class="row p-2">
				   <div class="col-md-12">
					  <div class="boxcol p-4  pt-2">
						 <div class="container1">
						   
						   <div class="border-bottom1 border-color-11 mt-3 mb-3">
							<h3 class="section-title section-title__sm mb-0 pb-0 font-size-18"> <i class="fa-solid fa-cart-shopping"></i> My Cart</h3>
							<div class="deals"> 
						 <hr>
					  </div>
						 </div>
							 
							<div class="shadow-sm bg-white p-4 rounded">
								<div class="text-center p-3">
									<i class="las la-frown la-3x opacity-60 mb-3"></i>
									<h3 class="h4 fw-700">{{translate('Your Cart is empty')}}</h3>
								</div>
							</div>
							
							
						 </div>
					  </div>
				   </div>
				   
				</div>
			@endif
         </div>
      </div>
   </div>
   
@endsection
