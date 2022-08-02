@extends('frontend.master')

@section('title')Labour Supplier @endsection

@section('description') @endsection


@section('content')



<body class="partner-with-us">
  
  <section class="pageTitle p-0" style="background-image: url({{ url('assets/img/slider4a.jpg')}}); height: 375px">
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
                  <input type="hidden" name="form_type" value="labour_supplier_page">
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
  
      </div>
    </div>
  </section>
  <!--top banner end -->
  <div class="ourservices services spacer  py-4 pt-5">
    <div class="content enhanced-page" id="nav-one">
      <div class="container">
        <div class="content_row row">
      
          <div class="col-md-12">
            <div class="clm_66">
              <div class="aboutIfo">
                <div class="border-bottom1 border-color-111 mt-0 mb-3">
                  <h2>Labour <strong> Suppliers</strong></h2>
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
   

  <section class="four_card-section  mt-4 lightbox-gallery mb-5">
    <div class="container">
      <div class="row">
        
        <div class="aboutIfo">
          <div class="border-bottom1 border-color-111 mt-0 mb-3">
            <h2>Labour <strong> Supplying </strong> For Every Labour suppliersf Work</h2>
            <div class="deals">
              <hr>
            </div>
          </div>
        </div>
        <p class="text-left my-0">
         Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur ex nemo eum.
         Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur ex nemo eum.
        </p>
      </div>

      <!-- cards section starts here by himanshu-->

     <div class="row">
      <div class="col-lg-3 col-md-4 col-sm-4 col-xs-4">
        <div class="seller_partner-card p-4">
<div class="top_img-holder">
<img src="{{ url('assets/img/logo.png')}}" alt="">
</div>

<h2 class="ebb-headInG">
Labour suppliers
</h2>

<p class="ebb-parA">
Lorem ipsum dolor sit amet consectetur adipisicing elit. Laborum ab praesentium assumenda. Voluptatum reiciendis natus ut aut quae perferendis et maiores, eos laborum similique, iure sed repellat labore cupiditate! Exercitationem.
Animi eum aliquid aut maxime tempore quos debitis temporibus, accusamus quo expedita numquam laboriosam assumenda aperiam illum sunt magnam ullam? Illum eveniet sit alias voluptas necessitatibus numquam reprehenderit dolorem sunt!
Inventore maiores vel repellendus adipisci corporis necessitatibus delectus doloribus ea excepturi, odio placeat neque illum esse, reiciendis, quisquam est reprehenderit officiis accusantium amet consequuntur. Magni pariatur illum sunt ratione cum!
Laudantium nisi illum aliquam laboriosam dolores adipisci, maxime quibusdam esse facilis architecto a, consequuntur earum ipsum dignissimos vel qui ut quia voluptatem fuga totam neque error? Vel voluptatibus quasi illum!
Deleniti eum maiores accusamus fugiat nemo vitae sequi magni maxime officia, illo ullam repellat voluptatibus corporis qui amet mollitia dolore, sint praesentium minus! Nemo excepturi facere asperiores minima ex est.
</p>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-4 col-xs-4">
         <div class="seller_partner-card p-4">
<div class="top_img-holder">
<img src="{{ url('assets/img/logo.png')}}" alt="">
</div>

<h2 class="ebb-headInG">
Labour suppliers
</h2>

<p class="ebb-parA">
Lorem ipsum dolor sit amet consectetur adipisicing elit. Laborum ab praesentium assumenda. Voluptatum reiciendis natus ut aut quae perferendis et maiores, eos laborum similique, iure sed repellat labore cupiditate! Exercitationem.
Animi eum aliquid aut maxime tempore quos debitis temporibus, accusamus quo expedita numquam laboriosam assumenda aperiam illum sunt magnam ullam? Illum eveniet sit alias voluptas necessitatibus numquam reprehenderit dolorem sunt!
Inventore maiores vel repellendus adipisci corporis necessitatibus delectus doloribus ea excepturi, odio placeat neque illum esse, reiciendis, quisquam est reprehenderit officiis accusantium amet consequuntur. Magni pariatur illum sunt ratione cum!
Laudantium nisi illum aliquam laboriosam dolores adipisci, maxime quibusdam esse facilis architecto a, consequuntur earum ipsum dignissimos vel qui ut quia voluptatem fuga totam neque error? Vel voluptatibus quasi illum!
Deleniti eum maiores accusamus fugiat nemo vitae sequi magni maxime officia, illo ullam repellat voluptatibus corporis qui amet mollitia dolore, sint praesentium minus! Nemo excepturi facere asperiores minima ex est.
</p>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-4 col-xs-4">
         <div class="seller_partner-card p-4">
<div class="top_img-holder">
<img src="{{ url('assets/img/logo.png')}}" alt="">
</div>

<h2 class="ebb-headInG">
Labour suppliers
</h2>

<p class="ebb-parA">
Lorem ipsum dolor sit amet consectetur adipisicing elit. Laborum ab praesentium assumenda. Voluptatum reiciendis natus ut aut quae perferendis et maiores, eos laborum similique, iure sed repellat labore cupiditate! Exercitationem.
Animi eum aliquid aut maxime tempore quos debitis temporibus, accusamus quo expedita numquam laboriosam assumenda aperiam illum sunt magnam ullam? Illum eveniet sit alias voluptas necessitatibus numquam reprehenderit dolorem sunt!
Inventore maiores vel repellendus adipisci corporis necessitatibus delectus doloribus ea excepturi, odio placeat neque illum esse, reiciendis, quisquam est reprehenderit officiis accusantium amet consequuntur. Magni pariatur illum sunt ratione cum!
Laudantium nisi illum aliquam laboriosam dolores adipisci, maxime quibusdam esse facilis architecto a, consequuntur earum ipsum dignissimos vel qui ut quia voluptatem fuga totam neque error? Vel voluptatibus quasi illum!
Deleniti eum maiores accusamus fugiat nemo vitae sequi magni maxime officia, illo ullam repellat voluptatibus corporis qui amet mollitia dolore, sint praesentium minus! Nemo excepturi facere asperiores minima ex est.
</p>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-4 col-xs-4">
         <div class="seller_partner-card p-4">
<div class="top_img-holder">
<img src="{{ url('assets/img/logo.png')}}" alt="">
</div>

<h2 class="ebb-headInG">
Labour suppliers
</h2>

<p class="ebb-parA">
Lorem ipsum dolor sit amet consectetur adipisicing elit. Laborum ab praesentium assumenda. Voluptatum reiciendis natus ut aut quae perferendis et maiores, eos laborum similique, iure sed repellat labore cupiditate! Exercitationem.
Animi eum aliquid aut maxime tempore quos debitis temporibus, accusamus quo expedita numquam laboriosam assumenda aperiam illum sunt magnam ullam? Illum eveniet sit alias voluptas necessitatibus numquam reprehenderit dolorem sunt!
Inventore maiores vel repellendus adipisci corporis necessitatibus delectus doloribus ea excepturi, odio placeat neque illum esse, reiciendis, quisquam est reprehenderit officiis accusantium amet consequuntur. Magni pariatur illum sunt ratione cum!
Laudantium nisi illum aliquam laboriosam dolores adipisci, maxime quibusdam esse facilis architecto a, consequuntur earum ipsum dignissimos vel qui ut quia voluptatem fuga totam neque error? Vel voluptatibus quasi illum!
Deleniti eum maiores accusamus fugiat nemo vitae sequi magni maxime officia, illo ullam repellat voluptatibus corporis qui amet mollitia dolore, sint praesentium minus! Nemo excepturi facere asperiores minima ex est.
</p>
        </div>
      </div>
     
     </div>

      <!-- cards section ends here by himanshu-->

    </div>
  </section>

  
  <script></script>
  @endsection
