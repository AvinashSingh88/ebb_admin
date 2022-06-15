@extends('frontend.layouts.user_panel')

@section('panel_content')
 <div class=" w-100 mb-1 mys_accounts">
                     <div class="bootstrap-accordiana">
                        <div class="backtabs-dp_servicespros2 backtabs-dp ">
						 
						  <div class="border-bottom1 border-color-111 mt-0 mb-3">
                                <h3 class="section-title section-title__sm mb-0 pt-2 pb-0 mt-0 font-size-18">My Orders
                                </h3>
                               
                            </div>
                           <ul class="ulines-dps justify-content-start">
                            <li class="ukine ukine1b "><a href="{{url('purchase_history')}}">
                            Orders
                            </a></li>
                            <li class="ukine ukine2b active4"><a href="{{url('product_return')}}">
                            Returns
                            </a>  </li>
                           </ul>
                             
                        <div class="hotel-form py-4 pt-0 shadow-none">
						  <ul class="ulines-dps-para">
                            <li class="ukine ukine2b active4">
                                <div class="hotel-form p-0 shadow-none">
                       <div class="border-bottom1 border-color-111 mt-0 mb-3">
                    <!-- <h3 class="section-title section-title__sm mb-0 pt-2 pb-0 mt-0 font-size-18">Return</h3> -->
                    <div class="deals">
                       <!-- <hr> -->
                    </div>
                 </div>
                          <div class="row">
                             <div class="col-md-3 col-sm-12 col-12">
                                <div class="product-box profile_produckt h-auto pb-2"> 
                             <img src="{{static_asset('assets_web/img/cements.png')}}" class="h-auto" alt="">
                             <div class="discrptions">
                                <a href="javascript:void(0);"><h5>Bharathi Cement </h5></a>
                                <h6><i class="fa fa-calendar"></i> 21 Nov 2021</h6>
                             </div>
                        
                             
                             
                          </div>
                             </div>
                             <div class="col-md-3 col-sm-12 col-12">
                                <div class="product-box profile_produckt h-auto pb-2"> 
                             <img src="{{static_asset('assets_web/img/pvcline.png')}}" class="h-auto" alt="">
                             <div class="discrptions">
                                <a href="javascript:void(0);"><h5> PVC Fittings </h5></a>
                                <h6><i class="fa fa-calendar"></i> 21 Nov 2021</h6>
                             </div>
                        
                             
                             
                          </div>
                             </div>
                             <div class="col-md-3 col-sm-12 col-12">
                                <div class="product-box profile_produckt h-auto pb-2"> 
                             <img src="{{static_asset('assets_web/img/cabelse.png')}}" class="h-auto" alt="">
                             <div class="discrptions">
                                <a href="javascript:void(0);"><h5> Cables &amp; Wires</h5></a>
                                <h6><i class="fa fa-calendar"></i> 21 Nov 2021</h6>
                             </div>
                        
                             
                             
                          </div>
                             </div>
                             <div class="col-md-3 col-sm-12 col-12">
                                <div class="product-box profile_produckt h-auto pb-2"> 
                             <img src="{{static_asset('assets_web/img/shawerel.png')}}" class="h-auto" alt="">
                             <div class="discrptions">
                                <a href="javascript:void(0);"><h5> Sanitary Shower </h5></a>
                                <h6><i class="fa fa-calendar"></i> 21 Nov 2021</h6>
                             </div>
                        
                             
                             
                          </div>
                             </div>
                             <div class="col-md-3 col-sm-12 col-12">
                                <div class="product-box profile_produckt h-auto pb-2"> 
                             <img src="{{static_asset('assets_web/img/brandssw1.png')}}" class="h-auto" alt="">
                             <div class="discrptions">
                                <a href="javascript:void(0);"><h5>  Sockets &amp; Switches</h5></a>
                                <h6><i class="fa fa-calendar"></i> 21 Nov 2021</h6>
                             </div>
                        
                             
                             
                          </div>
                             </div>
                             <div class="col-md-3 col-sm-12 col-12">
                                <div class="product-box profile_produckt h-auto pb-2"> 
                             <img src="{{static_asset('assets_web/img/aksdk.png')}}" class="h-auto" alt="">
                             <div class="discrptions">
                                <a href="javascript:void(0);"><h5>  Asian Adhesives Paint  </h5></a>
                                <h6><i class="fa fa-calendar"></i> 21 Nov 2021</h6>
                             </div>
                        
                             
                             
                          </div>
                             </div>
                             <div class="col-md-3 col-sm-12 col-12">
                                <div class="product-box profile_produckt h-auto pb-2"> 
                             <img src="{{static_asset('assets_web/img/aksdk.png')}}" class="h-auto" alt="">
                             <div class="discrptions">
                                <a href="javascript:void(0);"><h5> Ceramics Tiles</h5></a>
                                <h6><i class="fa fa-calendar"></i> 21 Nov 2021</h6>
                             </div>
                        
                             
                             
                          </div>
                             </div>
                             <div class="col-md-3 col-sm-12 col-12">
                                <div class="product-box profile_produckt h-auto pb-2"> 
                             <img src="{{static_asset('assets_web/img/electtt.png')}}" class="h-auto" alt="">
                             <div class="discrptions">
                                <a href="javascript:void(0);"><h5>  Air Conditioner </h5></a>
                                <h6><i class="fa fa-calendar"></i> 21 Nov 2021</h6>
                             </div>
                        
                             
                             
                          </div>
                             </div>
                          </div>
                           
                       </div>
                                </li>
                             
                            
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

@endsection

@section('script')
    <script type="text/javascript">
        $('#order_details').on('hidden.bs.modal', function () {
            location.reload();
        })
    </script>

@endsection
