@extends('frontend.master')

@section('title')Plumber/Electrician Experts  @endsection

@section('description') @endsection


@section('content')


    <section
      class="pageTitle p-0"
      style="background-image: url({{ url('assets/img/slider4a.jpg')}}); height: 375px"
    >
      <div class="container">
        <div class="build_tag-banner pt-3 w-30 h-450 left-0 background-white text-left">
          <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <form class="bottom-form_contact " method="post" action="addinteriorformdata">
                @csrf
                <div class="border-bottom1 border-color-111 mt-0 mb-3">
                  <h3 class="section-title section-title__sm mb-0 pb-0 mt-0 font-size-18">Send Us A Message</h3>
                  <div class="deals">
                    <hr class="mt-0">
                  </div>
                 
                </div>
  
                <div class="row">
                  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="main-parenttttttT">
                      <div class="input-group mb-1">
                        <span class="input-group-addon">
                          <i class="fa-solid fa-user"></i>
                        </span>
                        <input type="text" name="fullname" class="form-control empty border-start-0"
                          placeholder="Full Name">
                      </div>
                      <div class="input-group w-440 float-left mb-1">
                        <span class="input-group-addon">
                          <i class="fa-solid fa-envelope"></i>
                        </span>
                        <input type="text" name="email" class="form-control empty border-start-0"
                          placeholder="Email Address">
                      </div>
                      <div class="input-group mb-1 float-left">
                        <span class="input-group-addon">
                          <i class="fa-solid fa-phone-flip"></i>
                        </span>
                        <input type="tel" name="phoneno" class="form-control empty border-start-0"
                          placeholder="Phone Number" maxlength="10" minlength="10">
                      </div>
      
                      <div class="input-group mb-1">
                        <span class="input-group-addon text-aAaA  h-200">
                          <i class="fa-solid fa-pen-to-square"></i>
                        </span>
                        <textarea name="message" class="form-control textareas h-200 border-start-0" placeholder=""> Your Message * </textarea>
                      </div>
                      <div>
                        
                      <!-- checkbox -->
                      <!-- 4 -->
                    </div>
                  </div>
                  <input type="hidden" name="form_type" value="plumber_electrician_page">
                  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="form-group">
                      <div class="btn-box">
                        <button type="submit" class="addto border-0">
                          Submit
                          <svg class="position-relative ml-2" width="13px" height="10px" viewBox="0 0 13 10">
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
          </div>
          <!-- <h3>General Contracting</h3>
            <p>
              Lorem ipsum dolor sit amet, consectetur adipiscing elit nullam nunc
              justo sagittis suscipit ultrices.
            </p>
            <a href="contact_us.php" class="addto">Contact Us</a> -->
        </div>
      </div>
    </section>
    <!--top banner end -->
    <div class="ourservices services spacer py-5">
      <div class="content enhanced-page" id="nav-one">
        <div class="container">
          <div class="content_row row">
            <!-- <div class="col-md-6">
                        <img alt="" class="left edge-grab" src="img/abouts2.png" style="width:96%;">
                    </div> -->
            <div class="col-md-12">
              <div class="clm_66">
                <div class="aboutIfo">
                  <div class="border-bottom1 border-color-111 mt-0 mb-3">
                    <h2>Plumbing / Eelctrician <strong> Expertise</strong></h2>
                    <div class="deals">
                      <hr />
                    </div>
                  </div>
                </div>
                <i class="pt-2">
                  Lorem ipsum dolor sit amet consectetur adipisicing elit sed do
                  eiusmod tempor et dolore magna aliqua enim ad minim veniam
                  quis nostrud.
                </i>

                <p>
                  Lorem ipsum dolor sit amet consectetur adipisicing elit sed do
                  eiusmod tempor et dolore magna aliqua enim ad minim veniam
                  quis nostrud. Lorem ipsum dolor sit amet consectetur
                  adipisicing elit sed do eiusmod tempor et dolore magna aliqua
                  enim ad minim veniam quis nostrud. Lorem ipsum dolor sit amet
                  consectetur adipisicing elit sed do eiusmod tempor et dolore
                  magna aliqua enim ad minim veniam quis nostrud. Lorem ipsum
                  dolor sit amet consectetur adipisicing elit sed do eiusmod
                  tempor et dolore magna aliqua enim ad minim veniam quis
                  nostrud. Lorem ipsum dolor sit amet consectetur adipisicing
                  elit sed do eiusmod tempor et dolore magna aliqua enim ad
                  minim veniam quis nostrud.
                </p>
                <p>
                  Lorem ipsum dolor sit amet consectetur adipisicing elit sed do
                  eiusmod tempor et dolore magna aliqua enim ad minim veniam
                  quis nostrud. Lorem ipsum dolor sit amet consectetur
                  adipisicing elit sed do eiusmod tempor et dolore magna aliqua
                  enim ad minim veniam quis nostrud. Lorem ipsum dolor sit amet
                  consectetur adipisicing elit sed do eiusmod tempor et dolore
                  magna aliqua enim ad minim veniam quis nostrud.
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- <div class="build-expert_background position-relative mb-5" style="background-image:url(img/bannersdjk.png) ;">
        <div class="section__inner">
            <div class="container position-relative">
                <div class="b-contact-banner11 b-contact-banner_mod-a1 position-absolute end-0 background-white">

                    <div class="b-contact-banner__inner1">
                        <h3 class="b-contact-banner__title"><i class="fa fa-map-marker-alt" aria-hidden="true"></i>
                            Location
                        </h3>
                        <div class="b-contact-banner__info"> F-47, 1st Floor, Galleria Market, Gurgaon - 122002,
                            Haryana, India
                        </div>
                        <h3 class="b-contact-banner__title"><i class="fa fa-phone" aria-hidden="true"></i> Phone</h3>
                        <div class="b-contact-banner__info">
                            +91-9999999999, +91-9999999999</div>
                        <h3 class="b-contact-banner__title"><i class="fa fa-envelope" aria-hidden="true"></i> Email Id
                        </h3>
                        <div class="b-contact-banner__info">info@ebuildbazaar.com, sales@ebuildbazaar.com</div>
                        <h3 class="b-contact-banner__title"><i class="fa fa-envelope" aria-hidden="true"></i> Contact Id
                        </h3>
                        <div class="b-contact-banner__info">contact@ebuildbazaar.com</div>

                    </div>
                </div>
            </div>
        </div>
    </div> -->

    <style>
      .b-contact-banner11.b-contact-banner_mod-a1.position-absolute.end-0
        h3.b-contact-banner__title {
        color: #1274c0;
        font-size: 14px;
        line-height: 20px;
        letter-spacing: 0.5px;
      }

      .b-contact-banner11.b-contact-banner_mod-a1.position-absolute.end-0
        .b-contact-banner__info {
        color: #888;
        font-size: 13px;
        letter-spacing: 0.5px;
        line-height: 25px;
      }

      section.build_bott-sections {
        padding: 30px 0px;
        height: 400px;
        margin-bottom: 50px;
      }

      .build_bott_sects .deals hr:after {
        left: 42%;
      }

      .h-500 {
        height: 500px;
      }

      .h-400 {
        height: 400px;
      }

      .backg_collem {
        background-color: #1274c0;
        padding-top: 90px;
        color: #fff;
      }

      .backg_collem .build_tag-banner {
        margin-top: 300px;
      }

      .img-box.position-absolute.top-0.end-0.background-gray.w-25.p-3 {
        height: 245px;
      }

      .images_bots {
        margin-top: -150px;
      }
    </style>
    <!-- <section class="backgr_expert background-gray position-relative w-100">

        <div class="container">

            <div class="backgras position-relative">
                <div class=" row">

                    <div class="col-md-6">
                        <div class="clm_66 background-white py-5  px-4 w-100 d-flex">

                            <span class="u-icon u-icon-circle u-text-palette-4-base u-icon-1">
                                <svg class="u-svg-content" viewBox="0 0 95.333 95.332" x="0px" y="0px" id="svg-0a13"
                                    style="enable-background:#ccc" width="40px" height="40px">
                                    <g>
                                        <g>
                                            <path
                                                d="M30.512,43.939c-2.348-0.676-4.696-1.019-6.98-1.019c-3.527,0-6.47,0.806-8.752,1.793    c2.2-8.054,7.485-21.951,18.013-23.516c0.975-0.145,1.774-0.85,2.04-1.799l2.301-8.23c0.194-0.696,0.079-1.441-0.318-2.045    s-1.035-1.007-1.75-1.105c-0.777-0.106-1.569-0.16-2.354-0.16c-12.637,0-25.152,13.19-30.433,32.076    c-3.1,11.08-4.009,27.738,3.627,38.223c4.273,5.867,10.507,9,18.529,9.313c0.033,0.001,0.065,0.002,0.098,0.002    c9.898,0,18.675-6.666,21.345-16.209c1.595-5.705,0.874-11.688-2.032-16.851C40.971,49.307,36.236,45.586,30.512,43.939z">
                                            </path>
                                            <path
                                                d="M92.471,54.413c-2.875-5.106-7.61-8.827-13.334-10.474c-2.348-0.676-4.696-1.019-6.979-1.019    c-3.527,0-6.471,0.806-8.753,1.793c2.2-8.054,7.485-21.951,18.014-23.516c0.975-0.145,1.773-0.85,2.04-1.799l2.301-8.23    c0.194-0.696,0.079-1.441-0.318-2.045c-0.396-0.604-1.034-1.007-1.75-1.105c-0.776-0.106-1.568-0.16-2.354-0.16    c-12.637,0-25.152,13.19-30.434,32.076c-3.099,11.08-4.008,27.738,3.629,38.225c4.272,5.866,10.507,9,18.528,9.312    c0.033,0.001,0.065,0.002,0.099,0.002c9.897,0,18.675-6.666,21.345-16.209C96.098,65.559,95.376,59.575,92.471,54.413z">
                                            </path>
                                        </g>
                                    </g>
                                </svg></span>
                            <div class="para_exxpt px-3 align-justify text-justify">
                                <p class="text-justify align-justify ">
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor et
                                    dolore
                                    magna aliqua enim ad minim veniam quis nostrud. Lorem ipsum dolor sit amet
                                    consectetur
                                    adipisicing elit sed do eiusmod tempor et dolore magna aliqua enim ad minim veniam
                                    quis
                                    nostrud.
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor et
                                    dolore
                                    magna aliqua enim ad minim veniam quis nostrud.
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor et
                                    dolore
                                    magna aliqua enim ad minim veniam quis nostrud.
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor et
                                    dolore
                                    magna aliqua enim ad minim veniam quis nostrud.
                                </p>
                            </div>




                        </div>
                    </div>
                    <div class="col-md-6">
                        <img alt="" class="left edge-grab images_allows" src="img/servicesa7a.jpg">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="build_bott-sections">
        <div class="container">
            <div class="build_bott_sects">
                <div class="bottom-form w-50 m-auto">
                    <div class="border-bottom1 border-color-111 mt-0 mb-3">
                        <h3 class="section-title section-title__sm mb-0 pt-2 pb-0 mt-0 font-size-18">Architectural
                            Design &
                            Research
                        </h3>
                        <div class="deals">
                            <hr>
                        </div>
                        <p>
                            Sample text. Click to select the text box. Click again or double click to start editing the
                            text. xciting and vibrant environment.
                        </p>
                    </div>

                </div>
                <div class="colem_build_expt position-relative">
                    <img src="img/5.jpg" alt="" class="w-100 h-400">
                    <div class="img-box position-absolute top-0 end-0 background-gray w-25 p-3">
                        <i class="fa fa-building"></i>
                        <h3>Research </h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna aliqua
                        </p>


                    </div>
                </div>
            </div>

        </div>

    </section>
    <section class="backg_collem pb-5 mb-5 h-500">
        <div class="container">
            <div class="build_tag-banner w-50 m-auto text-center mt-5">
                <h3>How architects use research </h3>
                <p>Quam nulla porttitor massa id neque aliquam vestibulum morbi blandit. Neque vitae tempus quam
                    pellentesque nec nam aliquam sem. Neque ornare aenean euismod
                </p>
                <a href="architect-services.php" class="addto m-auto mt-3">View More</a>
            </div>
        </div>

    </section>
    <section class="buildexpet_tise">
        <div class="container">
            <div class="d-flex position-relative">
                <div class="images_bots w-80"><img src="img/11.jpg" alt="" class="w-100"></div>
                <div class="build_tag-banner w-40 h-450 left-0 background-white text-left position-absolute">
                    <h3>General Contracting </h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit nullam nunc justo sagittis suscipit
                        ultrices.
                    </p>
                    <a href="contact_us.php" class="addto">Contact Us</a>
                </div>
            </div>

        </div>
    </section> -->

    <section class="four_card-section mt-3 lightbox-gallery">
      <div class="container">
        <div class="row">
          <h2 class="text-center my-2">Building the future</h2>
          <p class="text-center my-2">
            Sample text. Click to select the text box. Click again or double
            click to start editing the text.
          </p>
        </div>
     
        <!-- light box -->

        <div class="row photos my-3">
          <div class="col-sm-6 col-md-4 col-lg-3 item">
            <a href="./img/plumbing-contractor.png" data-lightbox="photos" class="lb_all-link">
              <img class="img-fluid" src="{{ url('assets/img/plumbing-contractor.png')}}"/>
            </a>
          </div>
          <div class="col-sm-6 col-md-4 col-lg-3 item">
            <a href="./img/plumbing-contractor.png" data-lightbox="photos" class="lb_all-link">
              <img class="img-fluid" src="{{ url('assets/img/plumbing-contractor.png')}}"/>
            </a>
          </div>
          <div class="col-sm-6 col-md-4 col-lg-3 item">
            <a href="./img/plumbing-contractor.png" data-lightbox="photos" class="lb_all-link">
              <img class="img-fluid" src="{{ url('assets/img/plumbing-contractor.png')}}"/>
            </a>
          </div>
          <div class="col-sm-6 col-md-4 col-lg-3 item">
            <a href="./img/plumbing-contractor.png" data-lightbox="photos" class="lb_all-link">
              <img class="img-fluid" src="{{ url('assets/img/plumbing-contractor.png')}}"/>
            </a>
          </div>
          <div class="col-sm-6 col-md-4 col-lg-3 item">
            <a href="./img/plumbing-contractor.png" data-lightbox="photos" class="lb_all-link">
              <img class="img-fluid" src="{{ url('assets/img/plumbing-contractor.png')}}"/>
            </a>
          </div>
          <div class="col-sm-6 col-md-4 col-lg-3 item">
            <a href="./img/plumbing-contractor.png" data-lightbox="photos" class="lb_all-link">
              <img class="img-fluid" src="{{ url('assets/img/plumbing-contractor.png')}}"/>
            </a>
          </div>
          <div class="col-sm-6 col-md-4 col-lg-3 item">
            <a href="./img/plumbing-contractor.png" data-lightbox="photos" class="lb_all-link">
              <img class="img-fluid" src="{{ url('assets/img/plumbing-contractor.png')}}"/>
            </a>
          </div>
          <div class="col-sm-6 col-md-4 col-lg-3 item">
            <a href="./img/plumbing-contractor.png" data-lightbox="photos" class="lb_all-link">
              <img class="img-fluid" src="{{ url('assets/img/plumbing-contractor.png')}}"/>
            </a>
          </div>
        
        </div>

        <!-- light box -->
      </div>
    </section>

     
    <script></script>
    
    @endsection
  
