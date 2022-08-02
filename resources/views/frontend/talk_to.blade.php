@extends('frontend.master')

@section('title')Talk To Experts  @endsection

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
                  <input type="hidden" name="form_type" value="talkto_page">
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
                    <h2>Talk to <strong> Expertise</strong></h2>
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
            <a href="./img/build-expertisE1.jpg" data-lightbox="photos" class="lb_all-link">
              <img class="img-fluid" src="{{ url('assets/img/build-expertisE1.jpg')}}"/>
            </a>
          </div>
          <div class="col-sm-6 col-md-4 col-lg-3 item">
            <a href="./img/build-expertisE2.jpg" data-lightbox="photos" class="lb_all-link"
              ><img class="img-fluid" src="{{ url('assets/img/build-expertisE2.jpg')}}" />
            </a>
          </div>
          <div class="col-sm-6 col-md-4 col-lg-3 item">
            <a href="./img/build-expertisE3.jpg" data-lightbox="photos" class="lb_all-link"
              ><img class="img-fluid" src="{{ url('assets/img/build-expertisE3.jpg')}}" />
            </a>
          </div>
          <div class="col-sm-6 col-md-4 col-lg-3 item">
            <a href="./img/build-expertisE1.jpg" data-lightbox="photos" class="lb_all-link">
              <img class="img-fluid" src="{{ url('assets/img/build-expertisE1.jpg')}}"/>
            </a>
          </div>
          <div class="col-sm-6 col-md-4 col-lg-3 item">
            <a href="./img/build-expertisE1.jpg" data-lightbox="photos" class="lb_all-link">
              <img class="img-fluid" src="{{ url('assets/img/build-expertisE1.jpg')}}"/>
            </a>
          </div>
          <div class="col-sm-6 col-md-4 col-lg-3 item">
            <a href="./img/build-expertisE2.jpg" data-lightbox="photos" class="lb_all-link"
              ><img class="img-fluid" src="{{ url('assets/img/build-expertisE2.jpg')}}" />
            </a>
          </div>
          <div class="col-sm-6 col-md-4 col-lg-3 item">
            <a href="./img/build-expertisE3.jpg" data-lightbox="photos" class="lb_all-link"
              ><img class="img-fluid" src="{{ url('assets/img/build-expertisE3.jpg')}}" />
            </a>
          </div>
          <div class="col-sm-6 col-md-4 col-lg-3 item">
            <a href="./img/build-expertisE1.jpg" data-lightbox="photos" class="lb_all-link">
              <img class="img-fluid" src="{{ url('assets/img/build-expertisE1.jpg')}}"/>
            </a>
          </div>
        
        </div>

        <!-- light box -->
      </div>
    </section>

    
    <script></script>
    @endsection
  