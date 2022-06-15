 @if(get_setting('home_categories') != null) 
    @php $home_categories = json_decode(get_setting('home_categories')); @endphp
    @foreach ($home_categories as $key => $value)
        @php $category = \App\Models\Category::find($value); @endphp

        <section class="product-csteogry">
            <div class="trend servoce_dops service_sections45 pb-0">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-12">
                            <div class="border-bottom1 border-color-111 mt-3 mb-3">
                                <div class="border-botb-3">
                                    <a href="{{ route('cat', $category->slug) }}" class="view-link"> View all <i
                                        class="fa-solid fa-chevron-right"></i> </a>
                                </div>
                                <h3 class="section-title section-title__sm mb-0 pb-2 font-size-18"> {{ $category->getTranslation('name') }}</h3>
                                <div class="deals">
                                    <hr>
                                </div>
                            </div>
                        </div>


                        @foreach (\App\Utility\CategoryUtility::get_immediate_children_ids($category->id) as $key => $first_level_id)
                        @php
                            $subcatSlug = \App\Models\Category::find($first_level_id)->slug;
                        @endphp

                            <div class="col-md-5c">
                                <a href="{{ route('products.category', $subcatSlug) }}">
                                    <div class="trend-theme">
                                        <img src="{{ \App\Models\Category::find($first_level_id)->icon }}" alt="{{ \App\Models\Category::find($first_level_id)->getTranslation('name') }}" />
                                    </div>
                                    <h3> {{ \App\Models\Category::find($first_level_id)->getTranslation('name') }}</h3>
                                </a>
                            </div>
                        @endforeach

                    </div>
                </div>
            </div>
        </section>









        <!-- <section class="mb-4">
            <div class="container">
                <div class="px-2 py-4 px-md-4 py-md-3 bg-white shadow-sm rounded">
                    <div class="d-flex mb-3 align-items-baseline border-bottom">
                        <h3 class="h5 fw-700 mb-0">
                            <span class="border-bottom border-primary border-width-2 pb-3 d-inline-block">{{ $category->getTranslation('name') }}</span>
                        </h3>
                        <a href="{{ route('products.category', $category->slug) }}" class="ml-auto mr-0 btn btn-primary btn-sm shadow-md">{{ translate('View More') }}</a>
                    </div>
                    <div class="aiz-carousel gutters-10 half-outside-arrow" data-items="6" data-xl-items="5" data-lg-items="4"  data-md-items="3" data-sm-items="2" data-xs-items="2" data-arrows='true'>
                        @foreach (get_cached_products($category->id) as $key => $product)
                            <div class="carousel-box">
                                @include('frontend.partials.product_box_1',['product' => $product])
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </section> -->




    @endforeach
@endif

