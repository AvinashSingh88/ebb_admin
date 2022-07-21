@extends('frontend.master')

@section('content')
<!-- form end here -->
    <section class="bannerslid mb-5 pt-5 animated animate__fadeInUp wow">
        <div class="container">
           
            <div class="rowwwwww">
                <div class="row">

                    <div class="col-md-6 col-sm-12 col-xs-12">
                        <img src="{{static_asset('assets_web/img/trackme.jpg')}}" class="loadimg center-block" alt="">
                    </div><!-- col-md-4 -->

                    <div class="col-md-6 col-sm-12 col-xs-12">
 



                            <div class="colampoxe ml-3 background-white">
                                <div class="border-bottom1 border-color-111 mt-0 mb-3">
                                    <h3 class="section-title section-title__sm mb-0 pb-2 font-size-18">Track your
                                        shipment</h3>
                                    <div class="deals">
                                        <hr>
                                    </div>
                                </div>
                                
                                <form action="{{ route('orders.track') }}" method="GET" class="js-validate" novalidate="novalidate">
                                    <div class="js-form-message form-group">
									<input type="text" class="form-control" name="order_code" required id="signinSrEmailExample3" placeholder="Order Code *">
									</div>
                                   
                                    <div class="js-form-message">
                                        
                                        <div class="mt-3">
                                            <button class="btn btn-primary-dark-w px-5 mb-2 ">
                                               Track Order
                                            </button>
                                             
                                        </div>
                                    </div>
                                </form>
                            </div>


                    </div><!-- col-md-8 -->





                </div>
            </div>
        </div>
		@isset($order)
		<div class="container details-product">
                <div class="row">
                   <div class="col-xl-12 col-wd-9gdot5">
                     
                      <div class="cards_sections bulk-order3">
                         <div class="container1">
                            <div class="card">
                               <div class="card-header gutters-5 pb-2">
                                  <div class="row">
                                     <div class="col col-md-8 text-left text-md-left">
                                        <h5 class="mb-md-0 h6">Order Summary </h5>
                                        <!-- <h6 class="mt-2">Ordered on 16 March 2021 | Order# 406-5004503-6919548</h6> -->
                                     </div>
                                     <!-- <div class="col-md-4">
                                        <div class="discrptions_button text-right align-right">
                                        <h5 class="py-0">  
                                        <a href="invoice.php" class="py-0 invoices"> Invoice  </a>  </h5>
                                        </div>
                                     </div> -->
                                  </div>
                               
                                
                               </div>
                               <div class="card-body">
                                  <div class="table-crack-overflow h-auto mb-3">
                                     <table class="table aiz-table mb-0 footable footable-1 breakpoint-lg border-0">
                                        <thead>
                                           <!-- <tr class="footable-header pt-0">
                                              <th>Shipping Address</th>
                                             
                                              <th>Payment Method</th>
                                              <th>Order Summary</th>
                                              <th>&nbsp; </th>
                                              
                                           </tr> -->
                                        </thead>
                                        <tbody>
                                           <tr>
                                              <td>  Order Code:  </td>
                                              <td>  {{ $order->code }} </td>
                                              <td>    Order date:    </td>
                                              <td> 28-04-2022 06:35 AM   </td>
                                                </tr>
                                           <tr>
                                              <td>      Customer:    </td>
                                              <td>      {{ json_decode($order->shipping_address)->name }}    </td>
                                              <td>        Total order amount:   </td>
                                              <td>  ₹ 1,699.00 </td>
                                                </tr>
                                           <tr>
                                              <td>   Email:  </td>
                                              @if ($order->user_id != null)
                                        <td>{{ $order->user->email }}</td>
                                    @endif
                                              <td>        Shipping method: </td>
                                              <td>  ₹ 40.00     </td>
                                                </tr>
                                           <tr>
                                              <td>   Shipping address: </td>
                                              <td>    3947 West Side Avenue Hackensack, NJ 07601, College, United States       </td>
                                              <td>       Payment method: </td>
                                              <td>  ₹  1,739.00     </td>
                                                </tr>
                                           <tr>
                                              <td>       </td>
                                              <td>           </td>
                                              <td>       Delivery Status: </td>
                                              <td>  Picked Up  </td>
                                                </tr>
                                           <tr>
                                              <td>       </td>
                                              <td>           </td>
                                              <td>        Grand Total: </td>
                                              <td>  ₹ 1,699.00 </td>
                                                </tr>
                                              
                                     </tbody>
                                  </table>
                               </div>  
                              
                                  
                               </div>
                            </div>
                         </div>
                      </div>
                    
                   </div>
                  
                   <div class="col-xl-12 col-wd-9gdot5">
                     
                    <div class="cards_sections bulk-order3">
                       <div class="container1">
                          <div class="card">
                             <div class="card-header gutters-5 pb-2">
                                <div class="row">
                                   <div class="col col-md-8 text-left text-md-left">
                                  
                                   </div>
                                 
                                </div>
                             
                              
                             </div>
							 @foreach ($order->orderDetails as $key => $orderDetail)
                @php
                    $status = $order->delivery_status;
                @endphp
                             <div class="card-body">
                                <div class="table-crack-overflow h-auto mb-3">
                                   <table class="table aiz-table mb-0 footable footable-1 breakpoint-lg border-0">
                                      <thead>
                                         <tr class="footable-header pt-0">
                                            <th>Product Name</th>
                                            <th>Quantity</th>
                                            <th>Shipped By</th>
                                         </tr>
                                      </thead>
                                      <tbody>
                                    
                                         <tr>
                                            <td> Women Fit and Flare Dress (Aqua) </td>
                                            <td>  	1 </td>
                                            <td>   William C. Schroyer   </td>
                                            
                                              </tr>
                                
                                            
                                   </tbody>
                                </table>
                             </div>  
                            
                                
                             </div>
                          </div>
                       </div>
                    </div>
                  
                 </div>
                </div>
             </div>
			  @endisset
    </section>
<?php if(false) { ?>

<section class="pt-4 mb-4">
    <div class="container text-center">
        <div class="row">
            <div class="col-lg-6 text-center text-lg-left">
                <h1 class="fw-600 h4">{{ translate('Track Order') }}</h1>
            </div>
            <div class="col-lg-6">
                <ul class="breadcrumb bg-transparent p-0 justify-content-center justify-content-lg-end">
                    <li class="breadcrumb-item opacity-50">
                        <a class="text-reset" href="{{ route('home') }}">{{ translate('Home') }}</a>
                    </li>
                    <li class="text-dark fw-600 breadcrumb-item">
                        <a class="text-reset" href="{{ route('orders.track') }}">"{{ translate('Track Order') }}"</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>
<section class="mb-5">
    <div class="container text-left">
        <div class="row">
            <div class="col-xxl-5 col-xl-6 col-lg-8 mx-auto">
                <form class="" action="{{ route('orders.track') }}" method="GET" enctype="multipart/form-data">
                    <div class="bg-white rounded shadow-sm">
                        <div class="fs-15 fw-600 p-3 border-bottom text-center">
                            {{ translate('Check Your Order Status')}}
                        </div>
                        <div class="form-box-content p-3">
                            <div class="form-group">
                                <input type="text" class="form-control mb-3" placeholder="{{ translate('Order Code')}}" name="order_code" required>
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary">{{ translate('Track Order')}}</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        @isset($order)
            <div class="bg-white rounded shadow-sm mt-5">
                <div class="fs-15 fw-600 p-3 border-bottom">
                    {{ translate('Order Summary')}}
                </div>
                <div class="p-3">
                    <div class="row">
                        <div class="col-lg-6">
                            <table class="table table-borderless">
                                <tr>
                                    <td class="w-50 fw-600">{{ translate('Order Code')}}:</td>
                                    <td>{{ $order->code }}</td>
                                </tr>
                                <tr>
                                    <td class="w-50 fw-600">{{ translate('Customer')}}:</td>
                                    <td>{{ json_decode($order->shipping_address)->name }}</td>
                                </tr>
                                <tr>
                                    <td class="w-50 fw-600">{{ translate('Email')}}:</td>
                                    @if ($order->user_id != null)
                                        <td>{{ $order->user->email }}</td>
                                    @endif
                                </tr>
                                <tr>
                                    <td class="w-50 fw-600">{{ translate('Shipping address')}}:</td>
                                    <td>{{ json_decode($order->shipping_address)->address }}, {{ json_decode($order->shipping_address)->city }}, {{ json_decode($order->shipping_address)->country }}</td>
                                </tr>
                            </table>
                        </div>
                        <div class="col-lg-6">
                            <table class="table table-borderless">
                                <tr>
                                    <td class="w-50 fw-600">{{ translate('Order date')}}:</td>
                                    <td>{{ date('d-m-Y H:i A', $order->date) }}</td>
                                </tr>
                                <tr>
                                    <td class="w-50 fw-600">{{ translate('Total order amount')}}:</td>
                                    <td>{{ single_price($order->orderDetails->sum('price') + $order->orderDetails->sum('tax')) }}</td>
                                </tr>
                                <tr>
                                    <td class="w-50 fw-600">{{ translate('Shipping method')}}:</td>
                                    <td>{{ translate('Flat shipping rate')}}</td>
                                </tr>
                                <tr>
                                    <td class="w-50 fw-600">{{ translate('Payment method')}}:</td>
                                    <td>{{ ucfirst(str_replace('_', ' ', $order->payment_type)) }}</td>
                                </tr>
                                <tr>
                                    <td class="w-50 fw-600">{{ translate('Delivery Status')}}:</td>
                                    <td>{{ ucfirst(str_replace('_', ' ', $order->delivery_status)) }}</td>
                                </tr>
                                @if ($order->tracking_code)
                                    <tr>
                                        <td class="w-50 fw-600">{{ translate('Tracking code')}}:</td>
                                        <td>{{ $order->tracking_code }}</td>
                                    </tr>
                                @endif
                            </table>
                        </div>
                    </div>
                </div>
            </div>


            @foreach ($order->orderDetails as $key => $orderDetail)
                @php
                    $status = $order->delivery_status;
                @endphp
                <div class="bg-white rounded shadow-sm mt-4">
                    
                    @if($orderDetail->product != null)
                    <div class="p-3">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>{{ translate('Product Name')}}</th>
                                    <th>{{ translate('Quantity')}}</th>
                                    <th>{{ translate('Shipped By')}}</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                <td>{{ $orderDetail->product->getTranslation('name') }} ({{ $orderDetail->variation }})</td>
                                    <td>{{ $orderDetail->quantity }}</td>
                                    <td>{{ $orderDetail->product->user->name }}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    @endif
                </div>
            @endforeach

        @endisset
    </div>
</section>
<?php } ?>
@endsection
