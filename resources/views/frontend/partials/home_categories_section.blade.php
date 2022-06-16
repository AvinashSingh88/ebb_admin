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
                            $subcat = \App\Models\Category::find($first_level_id);
                        @endphp
                            <div class="col-md-5c">
                                <a href="{{ route('products.category', $subcat->slug) }}">
                                    <div class="trend-theme">
                                        <img src="{{ uploaded_asset($subcat->icon) }}" alt="{{ $subcat->getTranslation('name') }}" />
                                    </div>
                                    <h3> {{ $subcat->getTranslation('name') }}</h3>
                                </a>
                            </div>
                        @endforeach

                    </div>
                </div>
            </div>
        </section>

    @endforeach
@endif

