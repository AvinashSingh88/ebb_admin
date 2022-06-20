<section class="similar-pros-section">
    <div class="container">
    <div class="mb-8 similar-pros">
                 <div class="service-pros" style="padding:0px;margin:0px;">
     <div class="head-cnt work-center text-center">
         <div class="bounceIn animated">
        
            <h4>{{ translate('You May Also Like')}}</h4>
            <hr class="underlinskd">
            
         </div>
      </div>
      </div>
                  <ul class="list-unstyled owl-carousel owl-theme trending021">
                      {{-- @foreach (filter_products(\App\Models\Product::where('user_id', $detailedProduct->user_id)->orderBy('num_of_sale', 'desc'))->limit(6)->get() as $key => $top_product) --}}
                      @foreach (filter_products(\App\Models\Product::orderBy('num_of_sale', 'desc'))->limit(6)->get() as $key => $top_product)
                     <li class="mb-4">
                        <div class="row">
                           <div class="col-auto col-md-4">
                              <a href="{{ route('product', $top_product->slug) }}" class="d-block width-75">
                              <img class="img-fluid" src="{{ uploaded_asset($top_product->thumbnail_img) }}" alt="Image Description">
                              </a>
                           </div>
                           <div class="col col-md-8">
                              <h3 class="text-lh-1dot2 font-size-14 mb-0 text-truncate-2"><a href="{{ route('product', $top_product->slug) }}">{{ $top_product->getTranslation('name') }}</a></h3>
                              <div class="row">
                                 <div class="font-weight-bold col-md-7">
                                    <ins class="font-size-15 text-red text-decoration-none d-block">{{ home_discounted_base_price($top_product) }}</ins>
                                 </div>
                                 <div class="text-warning text-ls-n2 font-size-16 mb-1 col-md-5" >
                                    <p>{{$top_product->discount}}% off</p>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </li>
                      @endforeach
                  </ul>
               </div>
               </div>
     </section>