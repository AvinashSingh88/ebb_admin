@extends('frontend.master')

@section('title')Contact Us @endsection

@section('description') @endsection


@section('content')



      <section class="pageTitle" style="background-image:url({{ url('assets/img/contact-us.png')}});    height: 246px;">
         <div class="container">  </div>
      </section>
      <!--top banner end -->
      <div class="service-pros animated animate__fadeInUp wow product-categorys ulines-dps-para ">
         <!--<div class="container">
            <div class="row">
               <div class="col-md-12 breadmcrumsize">
                  <nav aria-label="breadcrumb">
                     <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Contact  </li>
                     </ol>
                  </nav>
               </div>
            </div>
         </div>-->
     <section class="u-section-2 pb-1 mb-0">
      <div class="u-sheet u-valign-middle u-sheet-1">
	   <div class="container">
	    <div class="bottom-form w-50 m-auto">
	    <div class="border-bottom1 border-color-111 mt-0 mb-3">
                  <h3 class="section-title section-title__sm mb-0 pt-2 pb-0 mt-0 font-size-18">Get In Touch</h3>
                  <div class="deals">
                     <hr>
                  </div>
				   <p>Are easy to find, so a visitor can quickly get in touch with you. </p>
               </div>
               </div>
          <div class="u-repeater u-repeater-1 row">
            <div class="text-center col-md-3">
              <div class="u-container-layout u-similar-container u-container-layout-3">
                <h5 class="u-text u-text-2"><span class="u-file-icon u-icon u-text-white"> <i class="fa fa-phone" aria-hidden="true"></i> </span>&nbsp;Call Us
                </h5>
                <p class="u-text u-text-3 mt-2"> +91 9999999999 <br> 0117999531</p>
              </div>
            </div>
            <div class="text-center col-md-3">
              <div class="u-container-layout u-similar-container u-container-layout-4">
                <h5 class="u-text u-text-4"><span class="u-file-icon u-icon u-text-white"> <i class="fa fa-envelope" aria-hidden="true"></i></span>&nbsp;Email Id
                </h5>
                <p class="u-text u-text-5 mt-2">  info@ebuildbazar.com <br>  contact@ebuildbazar.com </p>
              </div>
            </div>
            <div class="text-center col-md-3">
              <div class="u-container-layout u-similar-container u-container-layout-4">
                <h5 class="u-text u-text-4"><span class="u-file-icon u-icon u-text-white"> <i class="fa fa-map-marker" aria-hidden="true"></i></span>&nbsp;Location
                </h5>
                <p class="u-text u-text-5 mt-2"> F-47, 1st Floor, Galleria Market,Gurgaon, Haryana, India </p>
              </div>
            </div>
            <div class="text-center col-md-3">
              <div class="u-container-layout u-similar-container u-container-layout-5">
                <h5 class="u-text u-text-6"><span class="u-file-icon u-icon u-text-white"><i class="fa fa-clock" aria-hidden="true"></i></span>&nbsp;Hours
                </h5>
                <p class="u-text u-text-7  mt-2">Mon – Fri : 10 am – 7 pm  <br>  Sat - Sun : 6 am – 8 pm    </p>
                <p class="u-text u-text-7 m-0 p-0"> </p>
              </div>
            </div>
          </div>
        </div>
	 
        <div class="u-layout-wrap u-layout-wrap-1 form_section">
          <div class="container">
          <div class="bottom-form my-4 my-5 mt-4">
            <div class="row">
              <div class="col-md-6 px-0">
                <div class="u-container-layout u-valign-top u-container-layout-1">
                  
                  <div class="u-expanded-width u-form u-form-1">
                    <form class="bottom-form_contact" method="post" action="addinteriorformdata">
                     $csrf
		   <div class="border-bottom1 border-color-111 mt-0 mb-3">
                  <h3 class="section-title section-title__sm mb-0 pt-2 pb-0 mt-0 font-size-18">Send Us A Message</h3>
                  <div class="deals">
                     <hr>
                  </div>
				   <p>
                                     Include an email and phone number so visitors can get in touch with you on their first attempt.
                                       </p>
               </div>
                                   
                                    <div class="row">
                                       <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                          <div class="main-parenttttttT">
                                             <div class="input-group mb-3 ">
                                                <span class="input-group-addon">
                                                <i class="fa-solid fa-user"></i>
                                                </span>
                                                <input type="text" name="fullname" class="form-control empty border-start-0" placeholder="Full Name" />
                                             </div>
                                             <div class="input-group w-440 float-left mb-3">
                                                <span class="input-group-addon">
                                                <i class="fa-solid fa-envelope"></i>
                                                </span>
                                                <input type="text" name="email" class="form-control empty border-start-0" placeholder="Email Address" />
                                             </div>
                                             <div class="input-group mb-3 float-left">
                                                <span class="input-group-addon">
                                                <i class="fa-solid fa-phone-flip"></i>
                                                </span>
                                                <input type="tel" name="phoneno" class="form-control empty border-start-0" placeholder="Phone Number" maxlength="10" minlength="10" />
                                             </div>
                                           
                                             <div class="input-group mb-3">
                                                <span class="input-group-addon text-aAaA  h-200">
                                                <i class="fa-solid fa-pen-to-square"></i>
                                                </span>
                                                <textarea name="message" class="form-control textareas h-200 border-start-0" placeholder=""> Your Message *
                                                </textarea>
                                             </div>
                                             <input type="hidden" name="form_type" value="contact_page">
                                            
                                             <!-- checkbox -->
                                             <!-- 4 -->
                                          </div>
                                       </div>
                                       <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                          <div class="form-group">
                                             <div class="btn-box">
                                                <button type="submit" class="addto">
                                                   Submit   
                                                   <svg class="position-relative ml-2" width="13px" height="10px"  viewBox="0 0 13 10"  >
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
              <div class="col-md-6 px-0">
                <div class="u-container-layout u-container-layout-2">
				<img src="{{ url('assets/img/contact.png')}}" alt="" class="img-responsive w-100">
				</div>
              </div>
            </div>
			
          </div>
		  <div class="maps_frame">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3507.414133277683!2d77.08177144999999!3d28.467072249999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390d18de78378a91%3A0xebbebc8aca4b060d!2sGalleria%20Market%2C%20DLF%20Phase%20IV%2C%20Sector%2028%2C%20Gurugram%2C%20Haryana%20122022!5e0!3m2!1sen!2sin!4v1654149777559!5m2!1sen!2sin" width="100%" height="450px" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div>
          </div>
        </div>
       
        
      </div>
    </section>
      </div>
      @endsection
   