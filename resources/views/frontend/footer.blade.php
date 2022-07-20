 <!-- form blog end here -->
 <footer class="footer">
    <div class="topFooter">
       <div class="container">
          <div class="newSletter">
             <div class="inNewLtr">
                <div class="row">
                   <div class="col-sm-6">
                      <h3>Stay up to date with the latest news!</h3>
                      <p>
                         Subscribe with Email and loads of interesting!
                         <i class="fas fa-thumbs-up"></i>
                      </p>
                   </div>
                     <div class="col-sm-6">
                        <form class="form-inline" method="POST" action="{{ route('subscribers.store') }}">
                            @csrf
                           <div class="formGroup">
                              <input
                               type="text"
                               placeholder="Enter Your Email"
                               name="email"
                               class="Email"
                               />
                              <input
                               type="submit"
                               value="Subscribe"
                               class="SubscribeBtn"
                               />
                           </div>
                        </form>
                     </div>
                </div>
             </div>
          </div>
          <div class="midFooter">
             <div class="row">
                <div class="col-sm-2 aboutLogo">
                   <h3>Online Services </h3>
                   <div class="serRow">
                      <ul class="ulanineser">
                        @foreach (\App\Models\Category::where('parent_id', '=', '0')->where('type','2')->orderBy('order_level', 'ASC')->get() as $key => $category)
                           <li>
                              <a href="{{ route('servicecat', $category->slug) }}"><i class="fa fa-angle-double-right" aria-hidden="true"></i> {{$category->name}}</a>
                           </li>
						      @endforeach
                          
                      </ul>
                   </div>
                </div>
                <div class="col-sm-5 services">
                   <h3> Online Products </h3>
                   <div class="serRow">
                      <ul>
                        @foreach (\App\Models\Category::where('parent_id', '=', '0')->where('type','1')->orderBy('order_level', 'ASC')->get() as $key => $category)
                           <li>
                              <a href="{{ route('cat', $category->slug) }}"><i class="fa fa-angle-double-right" aria-hidden="true"></i> {{$category->name}}</a>
                           </li>
						      @endforeach
                         
                        
                      </ul>
                   </div>
                </div>
                <div class="col-sm-2 aboutLogo aboutLogo23">
                   <h3>{{ get_setting('widget_one',null,App::getLocale()) }}</h3>
                   <div class="serRow">
                      <ul class="ulanineser">
					         @if ( get_setting('widget_one_labels',null,App::getLocale()) !=  null )
                           @foreach (json_decode( get_setting('widget_one_labels',null,App::getLocale()), true) as $key => $value)
                              <li>
                                 <a href="{{ json_decode( get_setting('widget_one_links'), true)[$key] }}"><i class="fa fa-angle-double-right" aria-hidden="true"></i> {{ $value }}</a>
                              </li>
                           @endforeach
                        @endif
                         
                      </ul>
                   </div>
                </div>
                <div class="col-sm-3 contactInfo">
				   @if(get_setting('footer_logo') != null)
                   <a class="logoFotterT" href="http://orrish.org/ebb_dev">
						<img src="{{ uploaded_asset(get_setting('footer_logo')) }}" alt="{{ env('APP_NAME') }}"/>
				   </a>
				   @else
					   <a class="logoFotterT" href="http://orrish.org/ebb_dev">
						<img src="{{static_asset('assets_web/img/orrish-logo.png')}}" alt="Orrish"/>
				   </a>
				    @endif
                   <hr />
                   <h3>Contact Info</h3>
                   <ul>
                      <li>
                         <i class="fas fa-map-marker-alt"></i> {{ get_setting('contact_address',null,App::getLocale()) }}
                      </li>
                      <li>
                         <i class="fa fa-phone"></i> {{ get_setting('contact_phone') }}
                      </li>
                      <li>
                         <i class="fa fa-envelope-open" aria-hidden="true"></i>
                         {{ get_setting('contact_email')  }}
                      </li>
                      <li><i class="fab fa-skype"></i> Contact@ebuildbazar.com</li>
                   </ul>
                </div>
             </div>
          </div>
       </div>
       <div class="bottom_footer">
          <div class="container">
             <div class="row">
                <div class="col-md-6">
                   <div class="orisishPBy">
                      <div class="pwrdBy">
                         <a class="logoFotterB" href="http://orrish.com"><img src="{{static_asset('assets_web/img/footerLogo2.png')}}" alt="Orrish"/></a>
                         <!-- slider -->
                         <div class="footer-slider owl-carousel owl-theme">
                           @if ( get_setting('payment_method_images') !=  null )
                              @foreach (explode(',', get_setting('payment_method_images')) as $key => $value)
                                 <div class="item">
                                    <li>
                                       <a href="javascript:void(0);"><img class="smlogoslide" src="{{ uploaded_asset($value) }}" alt=""  /> </a>
                                    </li>
                                 </div>
                              @endforeach
                           @endif
                            
                         </div>
                         <!-- slider -->
                      </div>
                   </div>
                </div>
                <div class="col-md-6">
                  @if ( get_setting('show_social_links') )
                     <div class="orisishSm social-line">
                     @if ( get_setting('facebook_link') !=  null )
                        <a class="facebook dark" target="_blank" href="{{ get_setting('facebook_link') }}" title=" facebook">Facebook</a>
                     @endif
                     @if ( get_setting('twitter_link') !=  null )
                        <a class="twitter dark" target="_blank"  href="{{ get_setting('twitter_link') }}" title=" twitter">Twitter</a>
                     @endif
                        <a class="google dark" target="_blank" href="https://plus.google.com" title=" google+">Google+</a>
                        <a class="pinterest dark"target="_blank" href="https://www.pinterest.com" title=" pinterest">Pinterest</a>
                     @if ( get_setting('linkedin_link') !=  null )
                        <a class="linkedin dark" target="_blank" href="{{ get_setting('linkedin_link') }}" title=" linkedin">LinkedIn</a>
                     @endif
                     @if ( get_setting('instagram_link') !=  null )
                        <a class="instagram dark"target="_blank" href="{{ get_setting('instagram_link') }}" title=" instgram">Instagram</a>
                     @endif
                     </div>
                  @endif
                  <div class=""></div>
                </div>
                <div class="col-sm-12">
                <div class="copyrights-foot">
                   <p> {!! get_setting('frontend_copyright_text',null,App::getLocale()) !!} </p> &nbsp; | &nbsp;
                   <a href=""> Policy</a> &nbsp; | &nbsp;
                   <a href=""> Help center </a> &nbsp; | &nbsp;
                   <a href=""> Become a Seller </a> &nbsp; | &nbsp;
                   <a href=""> Advertise </a> &nbsp; | &nbsp;
				      @if (Auth::check() && (Auth::user()->user_type!=='admin'))
                     <a href="{{url('profile')}}"> My Account </a> &nbsp; | &nbsp;
				      @else
					      <a href="{{url('users/login')}}"> Sign In </a> &nbsp; | &nbsp;
				      @endif
                  <a href="">	Disclaimer</a> 
                   </div>
                </div>
             </div>
             <div class="bottomBorder"></div>
          </div>
       </div>
    </div>
    <div class="right-block-banner">
       <a class="virtual-tour whats-happening" title="whats-happening" href="#1" style="position: absolute;">
         <span class="text-virtual"><span class="ffi">what's <br />happening</span></span>
         <span class="icon">
         <img src="{{static_asset('assets_web/img/wts-happen-sticky.png')}}" height="55" width="55" alt="imgicon" />
         </span>
       </a>
       <a class="virtual-tour"
          title="Office Virtual-Tour"
          rel="noopener"
          href="#1"
          target="_blank"
          style="position: absolute;">
         <span class="text-virtual">
            <span class="ffi">office <br />virtual tour</span>
         </span>
         <span class="icon">
            <img
            src="{{static_asset('assets_web/img/virtual-tour.png')}}"
            height="55"
            width="55"
            alt="imgicon"
            />
         </span>
       </a>
    </div>
   <section id="fixedEstimate">
      <a href="">
         <img src="{{static_asset('assets_web/img/instant-estimate.png')}}" alt="instant-estimate-graphic"/>
      </a>
   </section>
 </footer>


    
 