@if(get_setting('home_categories') != null) 
    @php $home_categories = json_decode(get_setting('home_categories')); @endphp
    @foreach ($home_categories as $key => $value)
        @php $category = \App\Models\Category::find($value); @endphp
        <div class="headsections111 dkjfksjjksdfjis dkhgikdikdind34fvbb">
            <div class="container">

                <div class="row">
                    <div class="col-md-12 col-sm-12 col-12">
                        <div class="border-bottom1 border-color-111 mt-3 mb-3">
                            <div class="border-botb-3">
                                <a href="{{ route('cat', $category->slug) }}" class="view-link">
                                    View all 
                                    <i class="fa-solid fa-chevron-right"></i>
                                </a>
                            </div>
                            <h3 class="section-title section-title__sm mb-0 pb-2 font-size-18">
                                All Others Appliances 
                            </h3>
                            <div class="deals"> <hr> </div>
                        </div>
                    </div>
                </div>

                <div class="owl-carousel owl-theme trending001">
                    @foreach (\App\Utility\CategoryUtility::get_immediate_children_ids($category->id) as $key => $first_level_id)
                        @php
                            $subcat = \App\Models\Category::find($first_level_id);
                        @endphp
                        <div class="item">
                            <div class="product-box">
                                <img src="{{ uploaded_asset($subcat->home_image) }}" alt="{{ $subcat->getTranslation('name') }}">
                                <div class="discrptions">
                                    <h5> {{ $subcat->getTranslation('name') }} </h5>
                                </div>
                                <div class="discrptions_button">
                                    <h5>
                                        <a href="{{ route('products.category', $subcat->slug) }}">
                                            View Detail
                                        </a>
                                    </h5>
                                </div>
                            </div>
                        </div>
                    @endforeach

                </div>
            </div>
        </div>
    @endforeach
@endif