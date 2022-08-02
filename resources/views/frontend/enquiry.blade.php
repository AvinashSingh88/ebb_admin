@extends('frontend.master')

@section('title')Enquiry  @endsection

@section('description') @endsection


@section('content')




   
    <section class="pageTitle"
        style="background-image:url({{ url('assets/img/enquiry.png')}});height: 240px; background-size: contain;">
        <div class="container"> </div>
    </section>
    <!--top banner end -->
    <div class="form_section">

        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <form class="bottom-form" method="post" action="submitenquiryform">
                    @csrf
                    <div class="border-bottom1 border-color-111 mt-0 mb-3">
                        <h3 class="section-title section-title__sm mb-0 pt-2 pb-0 mt-0 font-size-18">Send Us An Enquiry
                        </h3>
                        <div class="deals">
                            <hr>
                        </div>
                        <p>
                            Send Us An Enquiry from our specialists on your Products.
                        </p>
                    </div>

                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="main-parenttttttT">
                                <div class="input-group mb-3 ">
                                    <span class="input-group-addon">
                                        <i class="fa-solid fa-user"></i>
                                    </span>
                                    <input type="text" name="fullname" class="form-control empty"
                                        placeholder="Full Name" />
                                </div>
                                <div class="input-group w-440 float-left mb-3">
                                    <span class="input-group-addon">
                                        <i class="fa-solid fa-envelope"></i>
                                    </span>
                                    <input type="text" name="email" class="form-control empty"
                                        placeholder="Email Address" />
                                </div>
                                <div class="input-group w-441 mb-3 float-left">
                                    <span class="input-group-addon">
                                        <i class="fa-solid fa-phone-flip"></i>
                                    </span>
                                    <input type="tel" name="phoneno" class="form-control empty"
                                        placeholder="Phone Number" maxlength="10" minlength="10" />
                                </div>

                                <div class="input-group mb-3">
                                    <span class="input-group-addon text-aAaA  h-200">
                                        <i class="fa-solid fa-pen-to-square"></i>
                                    </span>
                                    <textarea name="message" class="form-control textareas h-200" placeholder=""> Your Message *
                                                </textarea>
                                </div>
                            <input type="hidden" name="form_type" value="enquiry_page" >
                                <div class="ginput_container ginput_container_checkbox">
                                    <ul class="gfield_checkbox" id="input_18_14">
                                        <li class="gchoice_18_14_3">
                                            <input name="input_field" type="checkbox" value="Structural Material"
                                                id="choice_18_14_3" />
                                            <label for="choice_18_14_3" id="label_18_14_3"> Structural Material</label>
                                        </li>
                                        <li class="gchoice_18_14_1">
                                            <input name="input_field" type="checkbox" value="Plumbing"
                                                id="choice_18_14_1" />
                                            <label for="choice_18_14_1" id="label_18_14_1"> Plumbing</label>
                                        </li>
                                        <li class="gchoice_18_14_2">
                                            <input name="input_field" type="checkbox" value="Electricals"
                                                id="choice_18_14_2" />
                                            <label for="choice_18_14_2" id="label_18_14_2"> Electricals</label>
                                        </li>

                                        <li class="gchoice_18_14_3">
                                            <input name="input_field" type="checkbox" value="Sanitaryware"
                                                id="choice_18_14_3" />
                                            <label for="choice_18_14_3" id="label_18_14_3"> Sanitaryware</label>
                                        </li>
                                        <li class="gchoice_18_14_3">
                                            <input name="input_field" type="checkbox" value="Home Appliances"
                                                id="choice_18_14_3" />
                                            <label for="choice_18_14_3" id="label_18_14_3"> Home Appliances</label>
                                        </li>
                                        <li class="gchoice_18_14_3">
                                            <input name="input_field" type="checkbox" value="Kitchen"
                                                id="choice_18_14_3" />
                                            <label for="choice_18_14_3" id="label_18_14_3"> Kitchen</label>
                                        </li>
                                        <li class="gchoice_18_14_3">
                                            <input name="input_field" type="checkbox" value="Hardware Tools"
                                                id="choice_18_14_3" />
                                            <label for="choice_18_14_3" id="label_18_14_3"> Hardware Tools</label>
                                        </li>

                                        <li class="gchoice_18_14_3">
                                            <input name="input_field" type="checkbox" value=" Paints & Surface
                                                Care"
                                                id="choice_18_14_3" />
                                            <label for="choice_18_14_3" id="label_18_14_3"> Paints & Surface
                                                Care</label>
                                        </li>
                                        <li class="gchoice_18_14_3">
                                            <input name="input_field" type="checkbox" value="Tiles & Floorings"
                                                id="choice_18_14_3" />
                                            <label for="choice_18_14_3" id="label_18_14_3"> Tiles & Floorings</label>
                                        </li>
                                        <li class="gchoice_18_14_3">
                                            <input name="input_field" type="checkbox" value="Turnkey Services"
                                                id="choice_18_14_3" />
                                            <label for="choice_18_14_3" id="label_18_14_3"> Turnkey Services</label>
                                        </li>
                                        <li class="gchoice_18_14_3">
                                            <input name="input_field" type="checkbox" value="Architect"
                                                id="choice_18_14_3" />
                                            <label for="choice_18_14_3" id="label_18_14_3">Architect</label>
                                        </li>
                                        <li class="gchoice_18_14_3">
                                            <input name="input_field" type="checkbox" value="Construction Material"
                                                id="choice_18_14_3" />
                                            <label for="choice_18_14_3" id="label_18_14_3">Constructions
                                                Material</label>
                                        </li>
                                        <li class="gchoice_18_14_3">
                                            <input name="input_field" type="checkbox" value="Contractor"
                                                id="choice_18_14_3" />
                                            <label for="choice_18_14_3" id="label_18_14_3"> Contractor</label>
                                        </li>
                                        <li class="gchoice_18_14_3">
                                            <input name="input_field" type="checkbox" value="Home Decor"
                                                id="choice_18_14_3" />
                                            <label for="choice_18_14_3" id="label_18_14_3">Home Decor</label>
                                        </li>
                                        <li class="gchoice_18_14_3">
                                            <input name="input_field" type="checkbox" value=" False ceiling &
                                                Painting"
                                                id="choice_18_14_3" />
                                            <label for="choice_18_14_3" id="label_18_14_3"> False ceiling &
                                                Painting</label>
                                        </li>
                                        <li class="gchoice_18_14_3">
                                            <input name="input_field" type="checkbox" value="Flooring"
                                                id="choice_18_14_3" />
                                            <label for="choice_18_14_3" id="label_18_14_3"> Flooring</label>
                                        </li>
                                        <li class="gchoice_18_14_3">
                                            <input name="input_field" type="checkbox" value="Interior design"
                                                id="choice_18_14_3" />
                                            <label for="choice_18_14_3" id="label_18_14_3"> Interior design</label>
                                        </li>
                                        <li class="gchoice_18_14_3">
                                            <input name="input_field" type="checkbox" value="Vastu"
                                                id="choice_18_14_3" />
                                            <label for="choice_18_14_3" id="label_18_14_3"> Vastu</label>
                                        </li>
                                        <li class="gchoice_18_14_3">
                                            <input name="input_field" type="checkbox" value="Premium civil work"
                                                id="choice_18_14_3" />
                                            <label for="choice_18_14_3" id="label_18_14_3"> Premium civil work</label>
                                        </li>
                                        <li class="gchoice_18_14_3">
                                            <input name="input_field" type="checkbox" value="Premium furnishing"
                                                id="choice_18_14_3" />
                                            <label for="choice_18_14_3" id="label_18_14_3"> Premium furnishing</label>
                                        </li>

                                    </ul>
                                </div>
                                <!-- checkbox -->
                                <!-- 4 -->
                            </div>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="form-group">
                                <div class="btn-box">
                                    <button type="submit" class="addto">
                                        Submit
                                        <svg class="position-relative ml-2" width="13px" height="10px"
                                            viewBox="0 0 13 10">
                                            <path d="M1,5 L11,5"></path>
                                            <polyline points="8 1 12 5 8 9"></polyline>
                                        </svg>
                                    </button>
                                    <!--  <input  value="submit_project" type="hidden"  name="submit_project" /> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>


    <!-- form end here -->
    @endsection


