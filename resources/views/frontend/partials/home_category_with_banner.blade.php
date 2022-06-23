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
                                    <a href="javascript:void(0);" class="view-link"> View all <i
                                            class="fa-solid fa-chevron-right"></i> </a>
                                    </div>
                                    <h3 class="section-title section-title__sm mb-0 pb-2 font-size-18"> Plumbing & Sanitaryware</h3>
                                    <div class="deals">
                                    <hr>
                                    </div>
                                </div>
                            </div>
                        </div>

                    <div class="category-info">
                        <a href="#1">
                            <div class="banner-info">
                                <canvas width="600" height="320" style="display: none;"></canvas>
                                <img class="lazyload" style="width: 320px; height: 300px;"
                                src="{{static_asset('assets_web/img/index0/plumbing-sanitaryware.png')}}"><span>View
                                More</span>
                            </div>
                        </a>

                        <div class="product-item">
                            <div class="product-info">
                                <a href="javascript:void(0);">
                                    <div class="item-info">
                                        <h4>
                                            <span>Water Pumps</span>
                                        </h4>
                                        <div class="info-sub">
                                            <span class="paragronid">Lorem ipsum is a placeholder text commonly</span>
                                        </div>
                                        <img class="zoom-in lazyload" alt=""
                                            src="{{static_asset('assets_web/img/index0/plumb1.png')}}">
                                    </div>
                                </a>

                                <a href="javascript:void(0);">
                                    <div class="item-info">
                                        <h4>

                                            <span>
                                                Showers </span>
                                        </h4>
                                        <div class="info-sub">
                                            <span class="paragronid">Lorem ipsum is a placeholder text commonly </span>


                                        </div>

                                        <img class="zoom-in lazyload" alt=""
                                            src="{{static_asset('assets_web/img/index0/shower.png')}}" alt="">
                                    </div>

                                </a>
                                
                            </div>

                            <div class="product-info">
                                <a href="javascript:void(0);">
                                <div class="item-info">
                                    <h4>

                                        <span>PVC Fittings
                                        </span>
                                    </h4>
                                    <div class="info-sub">
                                        <span class="paragronid">Lorem ipsum is a placeholder text commonly </span>


                                    </div>

                                    <img class="zoom-in lazyload" alt=""
                                        src="{{static_asset('assets_web/img/index0/pvcfittins.png')}}">
                                </div>

                                </a>
                                <a href="javascript:void(0);">
                                <div class="item-info">
                                    <h4>

                                        <span>Water Tank
                                        </span>
                                    </h4>
                                    <div class="info-sub">
                                        <span class="paragronid">Lorem ipsum is a placeholder text commonly</span>


                                    </div>

                                    <img class="zoom-in lazyload" alt=""
                                        src="{{static_asset('assets_web/img/index0/tank.png')}}">
                                </div>

                                </a>
                            </div>
                            <div class="product-info">
                                <a href="javascript:void(0);">
                                <div class="item-info">
                                    <h4>

                                        <span>

                                            Faucets</span>
                                    </h4>
                                    <div class="info-sub">
                                        <span class="paragronid">Lorem ipsum is a placeholder text commonly</span>


                                    </div>

                                    <img class="zoom-in lazyload" alt=""
                                        src="{{static_asset('assets_web/img/index0/faucets.png')}}">
                                </div>

                                </a>
                                <a href="javascript:void(0);">
                                <div class="item-info">
                                    <h4>

                                        <span>Wash Basins</span>
                                    </h4>
                                    <div class="info-sub">
                                        <span class="paragronid">Lorem ipsum is a placeholder text commonly </span>


                                    </div>

                                    <img class="zoom-in lazyload" alt=""
                                        src="{{static_asset('assets_web/img/index0/washbash.png')}}">
                                </div>

                                </a>
                            </div>
                            <div class="product-info">
                                <a href="javascript:void(0);">
                                <div class="item-info">
                                    <h4>

                                        <span>Water Closets
                                        </span>
                                    </h4>
                                    <div class="info-sub">
                                        <span class="paragronid">Lorem ipsum is a placeholder text commonly</span>


                                    </div>

                                    <img class="zoom-in lazyload" alt=""
                                        src="{{static_asset('assets_web/img/index0/waterclock.png')}}">
                                </div>

                                </a>
                                <a href="javascript:void(0);">
                                <div class="item-info">
                                    <h4>

                                        <span>Storage Tank
                                        </span>
                                    </h4>
                                    <div class="info-sub">
                                        <span class="paragronid">Lorem ipsum is a placeholder text commonly</span>


                                    </div>

                                    <img class="zoom-in lazyload" alt=""
                                        src="{{static_asset('assets_web/img/index0/storage-t.png')}}">
                                </div>

                                </a>
                            </div>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </section>