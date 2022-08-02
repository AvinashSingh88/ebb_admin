@if(count($get_categories_atributes)> 0 )
    @foreach($get_categories_atributes as $key => $value)
        <section class="product-csteogry">
            <div class="trend servoce_dops service_sections45 pb-0">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-12">
                            <div class="border-bottom1 border-color-111 mt-3 mb-3">
                                
                                <h3 class="section-title section-title__sm mb-0 pb-2 font-size-18">
                                    @if($value->category_attribute == "service_offered")
                                        Service Offered
                                    @elseif($value->category_attribute == "building_materials")
                                        Building Material
                                    @elseif($value->category_attribute == "furnishing_material")
                                        Furnishing Material
                                    @elseif($value->category_attribute == "sanitary_items")
                                        Sanitary Items
                                    @else
                                    @endif
                                </h3>
                                <div class="deals">
                                    <hr>
                                </div>
                            </div>
                        </div>
                        <div class="owl-carousel owl-theme owl-carousel_sliders trending001">
                            @foreach($get_categories_data as $key => $home_cat_sec)
                                <div class="item">
                                    <div class="colams_item">
                                        @if($value->category_attribute == $home_cat_sec->category_attribute)
                                            <a href="{{$home_cat_sec->slug_url}}">
                                                <div class="trend-theme">
                                                    <img src="{{uploaded_asset($home_cat_sec->image)}}" alt="" />
                                                </div>
                                                <h3>{{$home_cat_sec->title}}</h3>
                                            </a>
                                        @endif
                                    </div>
                                </div>
                            @endforeach
                        </div>

                    </div>
                </div>
            </div>
        </section>
    @endforeach
@endif

     