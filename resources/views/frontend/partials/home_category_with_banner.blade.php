@if(get_setting('home_categories') != null) 
    @php $home_categories = json_decode(get_setting('home_categories')); @endphp
    @foreach ($home_categories as $key => $value)
        @php $category = \App\Models\Category::find($value); @endphp
        <section class="woldeens_eldeos">
            <div class="container">
                <div class="home-category-info-norm">
                    <div class="category-list">

                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-12">
                                <div class="border-bottom1 border-color-111 mt-3 mb-3">
                                    <div class="border-botb-3">
                                        <a href="{{ route('cat', $category->slug) }}" class="view-link">
                                             View all 
                                             <i class="fa-solid fa-chevron-right"></i>
                                        </a>
                                    </div>
                                    <h3 class="section-title section-title__sm mb-0 pb-2 font-size-18"> Plumbing & Sanitaryware</h3>
                                    <div class="deals"><hr></div>
                                </div>
                            </div>
                        </div>

                        <div class="category-info">

                            <a href="#1" class="w-35">
                                <div class="banner-info">
                                    <img class="lazyload w-100 h-100" src="img/index0/plumbing-sanitaryware.png">
                                    <span>View More</span>
                                </div>
                            </a>

                            <div class="product-item d-flow-root">
                                @foreach (\App\Utility\CategoryUtility::get_immediate_children_ids($category->id) as $key => $first_level_id)
                                    @php
                                        $subcat = \App\Models\Category::find($first_level_id);
                                    @endphp
                                    <div class="product-info w-25 float-left d-block">
                                        <a href="javascript:void(0);">
                                            <div class="item-info d-flex">
                                            <div class="info-sub">
                                                <h4 class="d-block">
                                                    {{ $subcat->getTranslation('name') }}
                                                </h4>
                                                <span class="paragronid">{{ $subcat->short_description }}</span>
                                            </div>
                                            <img class="zoom-in lazyload" alt="{{ $subcat->getTranslation('name') }}" src="{{ uploaded_asset($subcat->home_image) }}">
                                            </div>
                                        </a>
                                    </div>
                                @endforeach

                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>
    @endforeach
@endif