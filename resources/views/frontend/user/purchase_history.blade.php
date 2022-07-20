@extends('frontend.layouts.user_panel')

@section('panel_content')
 <div class=" w-100 mb-1 mys_accounts">
                     <div class="bootstrap-accordiana">
                        <div class="backtabs-dp_servicespros2 backtabs-dp ">
						 
						  <div class="border-bottom1 border-color-111 mt-0 mb-3">
                                <h3 class="section-title section-title__sm mb-0 pt-2 pb-0 mt-0 font-size-18">My Orders
                                </h3>
                               
                            </div>
                            <div class="flash-message mt-2 mb-2">
                                @foreach (['danger', 'warning', 'success', 'info'] as $msg)
                                    @if (Session::has('alert-' . $msg))
                                        <div class="alert alert-{{ $msg }} alert-dismissible fade show" role="alert">
                                            {{ Session::get('alert-' . $msg) }}
                                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                        </div>
                                    @endif
                                @endforeach
                           <ul class="ulines-dps justify-content-start">
                            <li class="ukine ukine1b active4"><a href="{{url('purchase_history')}}">
                            Orders
                            </a></li>
                            {{-- <li class="ukine ukine2b "><a href="{{url('product_return')}}">
                            Returns
                            </a>  </li> --}}
                           </ul>
                             
                        <div class="hotel-form py-4 shadow-none">
                                        <ul class="ulines-dps-para">
										@foreach ($orders as $key => $order)
                            @if (count($order->orderDetails) > 0)
                                            <li class="ukine ukine2b active4">
                                                <div class="row border-bottom pb-2 mb-4">
                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 ">
                                                        <div class="orderid_holder">
                                                            <p class="mb-0 orderSubId m-0">
                                                                <span class="_order ">
                                                                    Order :
                                                                </span>
                                                                <a href="#1" class="ms-1 customer_id">
                                                                    {{ $order->code }}
                                                                </a>
                                                            </p>
                                                            <p class="Order_Detail m-0">
                                                                <b>Order Placed on</b> {{ date('d-m-Y', $order->date) }}
                                                            </p>
                                                            <p class="Order_Detail m-0">
                                                                <b>Order Amount :</b> {{ single_price($order->grand_total) }}
                                                            </p>
                                                             <p class="Order_Detail m-0">
                                                                <b>Delivery Status :</b> {{ translate(ucfirst(str_replace('_', ' ', $order->delivery_status))) }}
                                                                @if($order->delivery_viewed == 0)
                                                                    <span class="ml-2" style="color:green"><strong>*</strong></span>
                                                                @endif
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 ">
                                                        <div class="order_detail-btn">

                                                            <a href="{{url('order-details/'.$order->id)}}" class="mt-1 order_btn text-capitalize ">
                                                                Order Detail
                                                            </a>
															@if ($order->orderDetails->first()->delivery_status == 'pending' && $order->payment_status == 'unpaid')
                                            <a href="{{url('orders/destroy/'.$order->id)}}" class="btn btn-soft-danger btn-icon btn-circle btn-sm confirm-delete" title="{{ translate('Cancel') }}">
                                              Cancel Order
                                           </a>
                                        @endif
															
                                                        </div>
                                                    </div>
                                                </div>
                                               @foreach (\App\Models\OrderDetail::where('order_id', $order->id)->get() as $key)
												<div class="row ">
                                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-3">
                                                        <a href="javascript:void(0)" target="_blank"
                                                            class="w-100 order_detail_img-holder border d-inline-block p-1">
                                                            <img src="{{ uploaded_asset($key->product->thumbnail_img) }}" alt=""
                                                                class="w-100">
                                                        </a>
                                                    </div>
                                                    <div class="col-lg-7 col-md-6 col-sm-6 col-xs-6">
                                                        <div class="row">
                                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                <p class="heading_ m-0 fs-7 text-dark">
																{{$key->product->name}}
                                                                </p>
                                                                <p class="quantity_holder m-0">
                                                                    <span class="total_count text-secondary">Total:
                                                                        <span class="price_holder text-dark" id="">
                                                                            {{ single_price($key->price) }}</span>
                                                                    </span>
                                                                    <span>
                                                                        |
                                                                    </span>
                                                                    <span class="_quantity text-secondary">
                                                                        QTY:
                                                                        <span class="quantity_number text-dark " id="">
																		{{$key->quantity}}
                                                                        </span>
                                                                    </span>

                                                                </p>
                                                                <p class="delivery_full-detail text-dark fs-7 mb-0">
                                                                    Delivery expected by Sat, 18 Jun' 22
                                                                </p>
                                                                <p class="order_processing m-0">
                                                                    Order ready for processing
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                                        <div class="row align-items-center flex-column">
                                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                <div class="row">
                                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                         <p class="order_listing text-capitalize my-1">
                                                                             <a href="#">
                                                                            <span class="icon rounded-circle py-1 px-1 d-inline-block bg-success text-center m-auto">
                                                                                    <i class="fa fa-map-marker-alt mx-2 text-white"></i>
                                                                                </span>
                                                                                Track Order
                                                                            </a>
                                                                        </p>
                                                                    </div>
                                                                    <div class="col-lg-12">
                                                                         <p class="order_listing text-capitalize my-1">
                                                                             <a href="#">
                                                                            <span class="icon rounded-circle py-1 px-1 d-inline-block bg-primary text-center m-auto">
                                                                                    <i class="fa fa-phone mx-2 text-white"></i>
                                                                                </span>
                                                                                Customer Support
                                                                            </a>
                                                                        </p>
                                                                    </div>
                                                                    <div class="col-lg-12">
                                                                         <p class="order_listing text-capitalize my-1">
                                                                             <a href="{{ route('invoice.download', $order->id) }}">
                                                                            <span class="icon rounded-circle py-1 px-1 d-inline-block bg-warning text-center m-auto">
                                                                                    <i class="fa-solid fa-print mx-2 text-white"></i>
                                                                                </span>
                                                                                Print Order Detail
                                                                            </a>
                                                                        </p>
                                                                    </div>
                                                                     <div class="col-lg-12">
                                                                         <p class="order_listing text-capitalize my-1">
                                                                             <a href="#">
                                                                            <span class="icon rounded-circle py-1 px-1 d-inline-block bg-danger text-center m-auto">
                                                                                    <i class="fa fa-times mx-2 text-white text-center"></i>
                                                                                </span>
                                                                                cancel order
                                                                            </a>
                                                                        </p>
                                                                    </div>
                                                                 </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
													<hr>
												@endforeach 
												
                                            </li>
											 @endif
                        @endforeach
                                        </ul>


                                    </div>
                        </div>
                     </div>
                  </div>
 
@endsection
@section('modal')
    @include('modals.delete_modal')

    <div class="modal fade" id="order_details" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-xl" role="document">
            <div class="modal-content">
                <div id="order-details-modal-body">

                </div>
            </div>
        </div>
    </div>


    <div class="modal fade" id="payment_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
            <div class="modal-content">
                <div id="payment_modal_body">

                </div>
            </div>
        </div>
    </div>
<script>
    function confirm_modal(delete_url)
    {
        jQuery('#confirm-delete').modal('show', {backdrop: 'static'});
        document.getElementById('delete_link').setAttribute('href' , delete_url);
    }
</script>
@endsection

@section('script')
    <script type="text/javascript">
        $('#order_details').on('hidden.bs.modal', function () {
            location.reload();
        })
    </script>

@endsection
