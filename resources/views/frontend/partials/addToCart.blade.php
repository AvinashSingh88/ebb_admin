<div class="modal-body p-4 c-scrollbar-light">
	
	
	 
	
	
	 
    <div class="row container-fluid">
        <div class="col-md-6">
            <div class="product-box mb-0 zoom-left_hegt">
							 
							<div class="zoom-left"> 
								@php 
							$photos = explode(',', $product->photos); 
							@endphp 
							
								<img id="zoom_03" src="{{ uploaded_asset($product->thumbnail_img) }}" data-zoom-image="{{ uploaded_asset($product->thumbnail_img) }}" /> 
							
								<div class="clearfix"></div>
								

								<!---<div id="gallery_01">
								@foreach ($photos as $key => $photo) 
										<a href="#" class="elevatezoom-gallery active" data-update="" data-image="{{ uploaded_asset($photo) }}" data-zoom-image="{{ uploaded_asset($photo) }}">
											<img src="{{ uploaded_asset($photo) }}" width="100" />
										</a>
									@endforeach
									@foreach ($product->stocks as $key => $stock)
										@if($stock->image != null)
											<a href="javascript:void(0);" class="elevatezoom-gallery active"  data-update="" data-image="{{ uploaded_asset($stock->image) }}" data-zoom-image="{{ uploaded_asset($stock->image) }}">
												<img src="{{ uploaded_asset($stock->image) }}" width="100"  />
											</a>
										@endif
									@endforeach 
                              </div>-->
							</div>
						</div>
        </div>

        <div class="col-md-6">
            <div class="text-left">
                <h2 class="mb-2 fs-20 fw-600">
                    {{  $product->getTranslation('name')  }}
                </h2>

                @if(home_price($product) != home_discounted_price($product))
                    <div class="row no-gutters mt-3">
                        <div class="col-2">
                            <div class="opacity-50 mt-2">{{ translate('Price')}}:</div>
                        </div>
                        <div class="col-10">
                            <div class="fs-20 opacity-60">
                                <del>
                                    {{ home_price($product) }}
                                    @if($product->unit != null)
                                        <span>/{{ $product->getTranslation('unit') }}</span>
                                    @endif
                                </del>
                            </div>
                        </div>
                    </div>

                    <div class="row no-gutters mt-2">
                        <div class="col-2">
                            <div class="opacity-50">{{ translate('Discount Price')}}:</div>
                        </div>
                        <div class="col-10">
                            <div class="">
                                <strong class="h2 fw-600 text-primary">
                                    {{ home_discounted_price($product) }}
                                </strong>
                                @if($product->unit != null)
                                    <span class="opacity-70">/{{ $product->getTranslation('unit') }}</span>
                                @endif
                            </div>
                        </div>
                    </div>
                @else
                    <div class="row no-gutters mt-3">
                        <div class="col-2">
                            <div class="opacity-50">{{ translate('Price')}}:</div>
                        </div>
                        <div class="col-10">
                            <div class="">
                                <strong class="h2 fw-600 text-primary">
                                    {{ home_discounted_price($product) }}
                                </strong>
                                <span class="opacity-70">/{{ $product->unit }}</span>
                            </div>
                        </div>
                    </div>
                @endif

                @if (addon_is_activated('club_point') && $product->earn_point > 0)
                    <div class="row no-gutters mt-4">
                        <div class="col-2">
                            <div class="opacity-50">{{  translate('Club Point') }}:</div>
                        </div>
                        <div class="col-10">
                            <div class="d-inline-block club-point bg-soft-primary px-3 py-1 border">
                                <span class="strong-700">{{ $product->earn_point }}</span>
                            </div>
                        </div>
                    </div>
                @endif

                <hr>

                @php
                    $qty = 0;
                    foreach ($product->stocks as $key => $stock) {
                        $qty += $stock->qty;
                    }
                @endphp
				<?php if(false) { ?>
                <form id="option-choice-form">
                    @csrf
                    <input type="hidden" name="id" value="{{ $product->id }}">

                    <!-- Quantity + Add to cart -->
                    @if($product->digital !=1)
                        @if ($product->choice_options != null)
                            @foreach (json_decode($product->choice_options) as $key => $choice)

                                <div class="row no-gutters">
                                    <div class="col-2">
                                        <div class="opacity-50 mt-2 ">{{ \App\Models\Attribute::find($choice->attribute_id)->getTranslation('name') }}:</div>
                                    </div>
                                    <div class="col-10">
                                        <div class="aiz-radio-inline">
                                            @foreach ($choice->values as $key => $value)
                                            <label class="aiz-megabox pl-0 mr-2">
                                                <input
                                                    type="radio"
                                                    name="attribute_id_{{ $choice->attribute_id }}"
                                                    value="{{ $value }}"
                                                    @if($key == 0) checked @endif
                                                >
                                                <span class="aiz-megabox-elem rounded d-flex align-items-center justify-content-center py-2 px-3 mb-2">
                                                    {{ $value }}
                                                </span>
                                            </label>
                                            @endforeach
                                        </div>
                                    </div>
                                </div>

                            @endforeach
                        @endif

                        @if (count(json_decode($product->colors)) > 0)
                            <div class="row no-gutters">
                                <div class="col-2">
                                    <div class="opacity-50 mt-2">{{ translate('Color')}}:</div>
                                </div>
                                <div class="col-10">
                                    <div class="aiz-radio-inline">
                                        @foreach (json_decode($product->colors) as $key => $color)
                                        <label class="aiz-megabox pl-0 mr-2" data-toggle="tooltip" data-title="{{ \App\Models\Color::where('code', $color)->first()->name }}">
                                            <input
                                                type="radio"
                                                name="color"
                                                value="{{ \App\Models\Color::where('code', $color)->first()->name }}"
                                                @if($key == 0) checked @endif
                                            >
                                            <span class="aiz-megabox-elem rounded d-flex align-items-center justify-content-center p-1 mb-2">
                                                <span class="size-30px d-inline-block rounded" style="background: {{ $color }};"></span>
                                            </span>
                                        </label>
                                        @endforeach
                                    </div>
                                </div>
                            </div>

                            <hr>
                        @endif

                        <div class="row no-gutters">
                            <div class="col-2">
                                <div class="opacity-50 mt-2">{{ translate('Quantity')}}:</div>
                            </div>
                            <div class="col-10">
                                <div class="product-quantity d-flex align-items-center">
                                    <div class="row no-gutters align-items-center aiz-plus-minus mr-3" style="width: 130px;">
                                        <button class="btn col-auto btn-icon btn-sm btn-circle btn-light" type="button" data-type="minus" data-field="quantity" disabled="">
                                            <i class="las la-minus"></i>
                                        </button>
                                        <input type="text" name="quantity" class="col border-0 text-center flex-grow-1 fs-16 input-number" placeholder="1" value="{{ $product->min_qty }}" min="{{ $product->min_qty }}" max="10">
                                        <button class="btn  col-auto btn-icon btn-sm btn-circle btn-light" type="button" data-type="plus" data-field="quantity">
                                            <i class="las la-plus"></i>
                                        </button>
                                    </div>
                                    <div class="avialable-amount opacity-60">
                                        @if($product->stock_visibility_state == 'quantity')
                                        (<span id="available-quantity">{{ $qty }}</span> {{ translate('available')}})
                                        @elseif($product->stock_visibility_state == 'text' && $qty >= 1)
                                            (<span id="available-quantity">{{ translate('In Stock') }}</span>)
                                        @endif
                                    </div>
                                </div>
                            </div>
                        </div>

                        <hr>
                    @endif

                    <div class="row no-gutters pb-3 d-none" id="chosen_price_div">
                        <div class="col-2">
                            <div class="opacity-50">{{ translate('Total Price')}}:</div>
                        </div>
                        <div class="col-10">
                            <div class="product-price">
                                <strong id="chosen_price" class="h4 fw-600 text-primary">

                                </strong>
                            </div>
                        </div>
                    </div>

                </form>--->
				<?php } ?>
				<div class="d-flex">
							@php $qty = 0; foreach ($product->stocks as $key => $stock) { $qty += $stock->qty; } @endphp
							<form id="option-choice-form"> @csrf
								<input type="hidden" name="id" value="{{ $product->id }}"> @if ($product->choice_options != null) @foreach (json_decode($product->choice_options) as $key => $choice)
								<div class="tab-finish">
									<div class="row no-gutters">
										<div class="col-sm-2">
											<p class="ucfirst"> {{ \App\Models\Attribute::find($choice->attribute_id)->getTranslation('name') }}: </p>
										</div>
										<div class="col-sm-10">
											<div class="aiz-radio-inline"> @foreach ($choice->values as $key => $value)
												<label class="aiz-megabox pl-0 mr-2">
													<input class="opacity" type="radio" name="attribute_id_{{ $choice->attribute_id }}" value="{{ $value }}" @if($key==0) checked @endif> <span class="aiz-megabox-elem rounded d-flex align-items-center justify-content-center py-2 px-3 mb-2">
												{{ $value }}
											</span> </label> @endforeach </div>
										</div>
									</div>
								</div> @endforeach @endif @if (count(json_decode($product->colors)) > 0)
								<div class="row no-gutters">
									<div class="col-sm-2">
										<div class="opacity-50 my-0">
											<h6>{{ translate('Color')}}:</h6> </div>
									</div>
									<div class="col-sm-10">
										<div class="aiz-radio-inline"> @foreach (json_decode($product->colors) as $key => $color)
											<label class="aiz-megabox pl-0 mr-2" data-toggle="tooltip" data-title="{{ \App\Models\Color::where('code', $color)->first()->name }}">
												<input class="opacity" type="radio" name="color" value="{{ \App\Models\Color::where('code', $color)->first()->name }}" @if($key==0) checked @endif> <span class="aiz-megabox-elem rounded d-flex align-items-center justify-content-center p-1 mb-2">
                        <span class="size-30px d-inline-block rounded" style="background:{{ $color }};"></span> </span>
											</label> @endforeach </div>
									</div>
								</div>
								<hr> @endif
								<!-- Quantity + Add to cart -->
								<div class="row no-gutters d-none">
									<div class="col-sm-2">
										<div class="opacity-50 my-2">{{ translate('Quantity')}}:</div>
									</div>
									<div class="col-sm-10">
										<div class="product-quantity d-flex align-items-center">
											<div class="input-group w-60 justify-content-start align-items-center packageadd">
												<input type="button" value="-" class="button-minus border rounded-circle quantity-left-minus icon-shape icon-sm mx-1 m-0" data-field="quantity">
												<input type="number" step="1" min="{{ $product->min_qty }}" max="10" value="{{ $product->min_qty }}" name="quantity" class="quantity quantity-field border-0 text-center m-0 w-25">
												<input type="number" step="1" min="{{ $product->min_qty }}" max="10" value="{{ $product->min_qty }}" name="quantity" class="quantity quantity-field border-0 text-center m-0 w-25">
												<input type="button" value="+" class="button-plus border rounded-circle quantity-right-plus icon-shape icon-sm m-0 lh-0" data-field="quantity"> </div> @php $qty = 0; foreach ($product->stocks as $key => $stock) { $qty += $stock->qty; } @endphp
											<div class="avialable-amount w-40 opacity-60"> @if($product->stock_visibility_state == 'quantity') (<span id="available-quantity">{{ $qty }}</span> {{ translate('available')}}) @elseif($product->stock_visibility_state == 'text' && $qty >= 1) (<span id="available-quantity">{{ translate('In Stock') }}</span>) @endif </div>
										</div>
									</div>
								</div>
								<div class="discrptions_button cart-add d-block cart-add1 products_list ">
									<div class="input-group quantity_input mb-0">
										<div class="input-group w-100 justify-content-start align-items-center packageadd">
											<input type="button" value="-" class="button-minus border rounded-circle quantity-left-minus icon-shape icon-sm mx-1 m-0" data-field="quantity">
											<input type="number" step="1" min="{{ $product->min_qty }}" max="10" value="{{ $product->min_qty }}" name="quantity" class="quantity quantity-field border-0 text-center m-0 w-25">
											<input type="button" value="+" class="button-plus border rounded-circle quantity-right-plus icon-shape icon-sm m-0 lh-0" data-field="quantity"> </div>
									</div>
								</div>
							</form>
							<div class="discrptions_button">
								<input type="hidden" value="{{$product->id}}" class="prod_id">
								<input type="hidden" id="total_product_price" class="prod_price">
								<button onclick="addToCart()" class="addtocartbut"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i> Add to Cart</button>
								<button class="out-of-stock background-gray">Out of stock</button>
								
							</div>
								</div>
							<h4 id="available-quantity">
        @if($product->stock_visibility_state == 'quantity')
        <span id="available-quantity">{{ $qty }} </span>
        {{ translate('available')}}
        @elseif($product->stock_visibility_state == 'text' && $qty >= 1)
        {{ translate('In Stock') }}
        @endif
    </h4>
                <div class="mt-3">
                    @if ($product->digital == 1)
                        <button type="button" class="btn btn-primary buy-now fw-600 add-to-cart" onclick="addToCart()">
                            <i class="la la-shopping-cart"></i>
                            <span class="d-none d-md-inline-block">{{ translate('Add to cart')}}</span>
                        </button>
                    @elseif($qty > 0)
                        @if ($product->external_link != null)
                            <a type="button" class="btn btn-soft-primary mr-2 add-to-cart fw-600" href="{{ $product->external_link }}">
                                <i class="las la-share"></i>
                                <span class="d-none d-md-inline-block">{{ translate($product->external_link_btn)}}</span>
                            </a>
                        @else
                            <button type="button" class="btn btn-primary buy-now fw-600 add-to-cart" onclick="addToCart()">
                                <i class="la la-shopping-cart"></i>
                                <span class="d-none d-md-inline-block">{{ translate('Add to cart')}}</span>
                            </button>
                        @endif
                    @endif
                    <button type="button" class="btn btn-secondary out-of-stock fw-600 d-none" disabled>
                        <i class="la la-cart-arrow-down"></i>{{ translate('Out of Stock')}}
                    </button>
                </div>

            </div>
        </div>
    </div>
	 
</div>

<script type="text/javascript">
    $('#option-choice-form input').on('change', function () {
        getVariantPrice();
    });
</script>
