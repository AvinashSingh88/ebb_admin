@extends('frontend.master')

@section('content')

    <section class="pageTitle banners_offerproducts w-100" style="background-image:url({{ uploaded_asset($flash_deal->banner) }});">
        <div class="container"> </div>
    </section>

    <div class="service-pros animated animate__fadeInUp wow product-categorys ulines-dps-para ">
        <div class="container details-product product-catpro pt-0">

        @if($flash_deal->status == 1 && strtotime(date('Y-m-d H:i:s')) <= $flash_deal->end_date) 
            <div class="timers232">
                <div class="time-content w-40 m-auto">
                    <input type="date" id="dateEnd" value="2022-06-27" class="d-block m-auto d-none" data-id='12:00 AM'>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-12 col-wd-9gdot5">
                    <div class="bottom-form w-50 m-auto pb-3">
                        <div class="border-bottom1 border-color-111 mt-0 mb-3">
                            <h3 class="section-title section-title__sm mb-0 pt-2 pb-0 mt-0 font-size-18">
                            {{ $flash_deal->title }}
                            </h3>
                            <div class="deals">
                                <hr>
                            </div>
                            <div class="w-55 m-auto">

                                <p id="demo"></p>
                                <div class="time-content d-flex w-100">
                                    <p class="mx-0 my-0 p-0 w-40" id="Days"></p>
                                    <p class="mx-0 my-0 p-0 w-20" id="Hours"></p>
                                    <p class="mx-0 my-0 p-0 w-20" id="Minutes"></p>
                                    <p class="mx-0 my-0 p-0 w-20" id="Seconds"></p>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="row">
                        @foreach ($flash_deal->flash_deal_products as $key => $flash_deal_product)
                            @php
                                $product = \App\Models\Product::find($flash_deal_product->product_id);
                            @endphp
                            @if ($product->published != 0)
                                <div class="col-md-5c">
                                    @include('frontend.partials.product_box_1',['product' => $product])
                                </div>
                            @endif
                        @endforeach
                    </div>
                    
                </div>
            </div>
        @else
            <div class="row">
                <div class="col-xl-12 col-wd-9gdot5">
                    <div class="bottom-form w-50 m-auto pb-3">
                        <div class="border-bottom1 border-color-111 mt-0 mb-3">
                            <h3 class="section-title section-title__sm mb-0 pt-2 pb-0 mt-0 font-size-18">
                            {{ $flash_deal->title }}
                            </h3>
                            <div class="deals">
                                <hr>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <p class="h4">{{  translate('This offer has been expired.') }}</p>
                    </div>
                    
                </div>
            </div>
        @endif
        </div>
    </div>
@endsection
