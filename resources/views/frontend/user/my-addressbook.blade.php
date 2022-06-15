@extends('frontend.layouts.user_panel')

@section('panel_content')
<div class=" w-100 mb-1 mys_accounts">
                     <div class="bootstrap-accordiana">
                        <div class="backtabs-dp_servicespros2 backtabs-dp ">
						 
						  <div class="border-bottom1 border-color-111 mt-0 mb-3">
                                <h3 class="section-title section-title__sm mb-0 pt-2 pb-0 mt-0 font-size-18">My Address Book
                                </h3>
                               
                            </div>
                           <ul class="ulines-dps     justify-content-start">
                             <li class="ukine  "><a href="{{url('profile')}}">My Profile</li>
                              <li class="ukine active4"><a href="{{url('my_addressbook')}}">My Address Book  </a></li>
                              <li class="ukine "><a href="my_bank_detail.php">Bank Details</a></li>
                              <li class="ukine "><a href="change_password.php">Change Password </a></li>
                              <li class="ukine "> <a href="manage_payments.php"> Manage Payments</a> </li> 
                           </ul>
                              <div class="flash-message mt-2">
                        @foreach (['danger', 'warning', 'success', 'info'] as $msg)
                            @if (Session::has('alert-' . $msg))
                                <div class="alert alert-{{ $msg }} alert-dismissible fade show" role="alert">
                                    {{ Session::get('alert-' . $msg) }}
                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                </div>
                            @endif
                        @endforeach
                    </div>
                        <div class="hotel-form py-4 shadow-none">
						  <ul class="ulines-dps-para">
                              <li class="ukine active4">
							  <div class="d-flex position-relative">
							<!----Repeat Start here!----->  
                            @foreach ($myaddress as $item)
                                
                           
                        <div class="hotel-form py-4 px-2 mb-3 mt-1 shadow-none w-33 pt-2 border">
								<div class="px-2">
                                    <div class="user_location mt-1 pb-2">
                                        <span class="userf-name">
                                          {{$item->address_type}}
                                        </span>
                                    </div>
                                    <div class="user_name mt-1">
                                        <span class="userf-name">
                                           {{$item->first_name.' '.$item->last_name}} 
                                        </span>
                                    </div>
									    <div class="phone_number mt-1">
                                        <span class="user-phone d-flex">
                                           <i class="fa fa-phone p-2 border rounded-circle" aria-hidden="true"></i>    +91-{{$item->phone}}
                                        </span>
                                    </div>
                                    <div class="user_email mt-1">
                                        <span class="user-email d-flex">
                                           <i class="fa fa-map-marker p-2 border rounded-circle" aria-hidden="true"></i>    {{$item->house_no}}, {{$item->area}}, {{$item->city}}, {{$item->state}} {{$item->pin}}
                                        </span>
                                    </div>
                                   <div onclick="showDetails(this)" id="{{$item->id}}" class="user_email edit-address mt-1">
                                      <a href="#edit-address{{$item->id}}"> 
									  <span class="user-email">
                                        <b class="d-flex"> <i class="fa fa-pencil p-2 border rounded-circle" aria-hidden="true"></i> Edit Address</b>
                                        </span>
										</a>
                                    </div>
                                    </div>
                        </div>
						<!----Repeat End here!----->
						 <div id="edit-address"></div>
                            <div id="edit-address{{$item->id}}"></div>
							
                        @endforeach
                            <div class="hotel-form py-4 px-2 mb-3 mt-1 text-right w-auto h-auto pt-2 border-none">
                         <div class="px-2">
                                     
                                   <div class="user_email edit-address_1 mt-1 d-block">
								    <a href="#edit-address1"> 
                                        <span class="user-email d-block">
                                        <b class="d-flex"> <i class="fa fa-pencil p-2 border rounded-circle" aria-hidden="true"></i> Add New Address</b>
                                        </span>
										</a>
                                    </div>
                                    </div>
                                   
                             
                           

                           

                        </div> 
						</div> 
						<!---Edit Address Start ---->
						 <div class="edit_address_form colampoxe mr-3  mx-0 px-0 py-2 shadow-none">
						
			  <div class="border-bottom1 border-color-111 mt-0 mb-3">
                                          <h3 class="section-title section-title__sm mb-0 pb-0 font-size-18 mt-0">Edit Address</h3>
                                          <div class="deals">
                                             <hr class="mt-2">
                                          </div>
                                       </div>
               
               
               <p class="text-gray-901 mb-4">Edit Address account today to reap the benefits of a personalized shopping experience.</p>
               <form class="js-validate row" method="post" action="{{route('updateAddressDetails')}}" novalidate="novalidate">
				@csrf
                  <div class="js-form-message form-group col-md-6 mb-3">
                        <input type="hidden" class="form-control" name="user_id" placeholder="" id="userid">
                        <input type="hidden" class="form-control" name="id" placeholder="" id="id">
                        <input type="text" class="form-control" name="first_name" id="first_name" placeholder="First Name">
                    </div>
                  <div class="js-form-message form-group col-md-6 mb-3">
                        <input type="text" class="form-control" name="last_name" id="last_name" placeholder="Last Name">
                    </div>
                  <div class="js-form-message form-group col-md-6 mb-3">
                        <input type="text" class="form-control" name="phone" id="phone" placeholder="Phone No.">
                    </div>
                  <div class="js-form-message form-group col-md-6 mb-3">
                        <input type="text" class="form-control" name="pin" id="pin" placeholder="Pin Code">
                    </div>
                  <div class="js-form-message form-group col-md-6 mb-3">
                        <input type="text" class="form-control" name="house_no" id="house_no" placeholder="House/Plot No">
                    </div>
                  <div class="js-form-message form-group col-md-6 mb-3">
                        <input type="text" class="form-control" name="area" id="area" placeholder="Area">
                    </div>
                  <div class="js-form-message form-group col-md-6 mb-3">
                        <input type="text" class="form-control" name="state" placeholder="State" id="state"></div>
                  <div class="js-form-message form-group col-md-6 mb-3">
				   <input type="text" class="form-control" name="city" id="city" placeholder="City" value="Delhi" aria-label="Email address" requireddata-msg="Please enter a valid email address." data-error-class="u-has-error" data-success-class="u-has-success"
                        >
				  </div>
                  <!--<div class="js-form-message form-group col-md-12 mb-3">  
				  <ul class="list-unstyled d-flex">
                       
                        <li class="m-3 mt-0 mb-0">
                            <label for="payment_method_bacs d-flex">
                                <input id="payment_method_bacs" class="input-radio" type="radio" data-order_button_text="Office" value="Office" name="house_type">
                                <span>Office </span>
                            </label> 
                        </li>
                        <li class="m-3 mt-0 mb-0">
                            <label for="payment_method_paypal d-flex">
                                <input type="radio" data-order_button_text="Home" value="Home" name="house_type" class="input-radio" id="payment_method_paypal">
                                <span>Home  </span>
                            </label> 
                        </li>
                        <li class="m-3 mt-0 mb-0">
                            <label for="payment_method_paypal d-flex">
                                <input type="radio" data-order_button_text="Other" value="Other" name="house_type" class="input-radio" id="payment_method_paypal" checked >
                                <span>Other  </span>
                            </label> 
                        </li>
                    </ul>
				  </div>-->
				                    
                <div class="mb-600 d-flex w-50">
                     <div class="mb-3 w-auto"><button onclick="window.location.href='{{url('profile')}}'" class="edit-address1 btn btn-primary-dark-w px-5 w-100">Cencel</button></div>
                     <div class="mb-3 w-50 mx-3"><button type="submit" class="edit-address1 btn btn-primary-dark-w px-5 w-auto">Save Address</button></div>
                  </div>
               </form>
         
            </div>
			<!--Edit Address End--->
			
			<div class="edit_address_form_new colampoxe mr-3  mx-0 px-0 py-2 shadow-none">
						
			  <div class="border-bottom1 border-color-111 mt-0 mb-3">
                                          <h3 class="section-title section-title__sm mb-0 pb-0 font-size-18 mt-0">Add New Address</h3>
                                          <div class="deals">
                                             <hr class="mt-2">
                                          </div>
                                       </div>
               
               
               <p class="text-gray-901 mb-4">Add Address account today to reap the benefits of a personalized shopping experience.</p>
               <form class="js-validate row" action="{{route('addAddress')}}" method="post" novalidate="novalidate">
                    @csrf  
                <div class="js-form-message form-group col-md-6 mb-3">
                        <input type="text" class="form-control" name="first_name" placeholder="First Name" aria-label="First Name" requireddata-msg="Please enter a valid First Name." data-error-class="u-has-error" data-success-class="u-has-success">
                    </div>
                  <div class="js-form-message form-group col-md-6 mb-3">
                        <input type="text" class="form-control" name="last_name" placeholder="Last Name"  aria-label="Last Name" requireddata-msg="Please enter a valid Last Name." data-error-class="u-has-error" data-success-class="u-has-success">
                    </div>
                  <div class="js-form-message form-group col-md-6 mb-3">
                        <input type="text" class="form-control" name="phone" placeholder="Phone No." aria-label="Phone No" requireddata-msg="Please enter a valid Phone No." data-error-class="u-has-error" data-success-class="u-has-success">
                    </div>
                  <div class="js-form-message form-group col-md-6 mb-3">
                        <input type="text" class="form-control" name="pin" placeholder="Pin Code" aria-label="Pin Code" requireddata-msg="Please enter a valid Pin Code." data-error-class="u-has-error" data-success-class="u-has-success">
                    </div>
                  <div class="js-form-message form-group col-md-6 mb-3">
                        <input type="text" class="form-control" name="house_no" placeholder="House/Plot No" aria-label="Email address" requireddata-msg="Please enter a valid email address." data-error-class="u-has-error" data-success-class="u-has-success">
                    </div>
                  <div class="js-form-message form-group col-md-6 mb-3">
                        <input type="text" class="form-control" name="area" placeholder="Street/Locality/Area" aria-label="Area" requireddata-msg="Please enter a valid email address." data-error-class="u-has-error" data-success-class="u-has-success">
                    </div>
                  <div class="js-form-message form-group col-md-6 mb-3">
                        <input type="text" class="form-control" name="city" placeholder="City" aria-label="City" requireddata-msg="Please enter a valid City." data-error-class="u-has-error" data-success-class="u-has-success">
                    </div>
                  <div class="js-form-message form-group col-md-6 mb-3">
                    <input type="text" class="form-control" name="state" placeholder="State" aria-label="State" requireddata-msg="Please enter a valid State." data-error-class="u-has-error" data-success-class="u-has-success">
					</div>
                  <div class="js-form-message form-group col-md-12 mb-3">  
				  <ul class="list-unstyled d-flex">
                       
                        <li class="m-3 mt-0 mb-0">
                            <label for="office">
                                <input id="office" class="input-radio" type="radio" data-order_button_text="" value="Office" name="address_type">
                                <span>Office </span>
                            </label> 
                        </li>
                        <li class="m-3 mt-0 mb-0">
                            <label for="Home">
                                <input type="radio" data-order_button_text="Proceed to PayPal" value="Home" name="address_type" class="input-radio" id="Home">
                                <span>Home  </span>
                            </label> 
                        </li>
                        <li class="m-3 mt-0 mb-0">
                            <label for="other">
                                <input type="radio" data-order_button_text="Proceed to PayPal" value="Other" name="address_type" class="input-radio" id="other"  >
                                <span>Other  </span>
                            </label> 
                        </li>
                    </ul>
				  </div>
				                    
                <div class="mb-600 d-flex w-50">
                     <div class="mb-3 w-auto"><button onclick="window.location.href='{{url('profile')}}'" class="btn edit-address1_1 btn-primary-dark-w px-5 w-100">Cencel</button></div>
                     <div class="mb-3 w-50 mx-3"><button type="submit" class="btn edit-address1_1 btn-primary-dark-w px-5 w-auto">Save Address</button></div>
                  </div>
               </form>
         
            </div>
                              </li>
                              
                            
                           </ul>
                         
                        
                        </div>
                        </div>
                     </div>
                  </div>
				  <script type="text/javascript">
    function showDetails(showdetails){
        //$('#userDetails').modal('show'); 
        let address_id = $(showdetails).attr('id');
        $('#userid').html(address_id);
        var userid=$(this).closest("input").find(".form-control").text();;
        var state=$(this).closest("input").find(".form-control").text();;
        $.ajax({
            url: '{{url('getaddressdetails')}}',
            type: 'post',
            data:'address_id='+address_id+'&_token={{csrf_token()}}',
            success:function(respons){
                $('#userid').val(JSON.parse(respons)[0].user_id);
                $('#state').val(JSON.parse(respons)[0].state);
                $('#first_name').val(JSON.parse(respons)[0].first_name);
                $('#last_name').val(JSON.parse(respons)[0].last_name);
                $('#city').val(JSON.parse(respons)[0].city);
                $('#pin').val(JSON.parse(respons)[0].pin);
                $('#area').val(JSON.parse(respons)[0].area);
                $('#house_no').val(JSON.parse(respons)[0].house_no);
                $('#phone').val(JSON.parse(respons)[0].phone);
                $('#id').val(JSON.parse(respons)[0].id);
                
                // console.log(JSON.parse(respons)[0].state);
            }
        })
    }

</script>
				   <script>
		 $(".edit-address").click(function(){
			 $(".edit_address_form").show();
			  $(".edit_address_form_new").hide();
		 });
		 
		 $(".edit-address_1").click(function(){
			 $(".edit_address_form_new").show();
			  $(".edit_address_form").hide();
		 });
		  $(".edit-address1").click(function(){
			 $(".edit_address_form").hide();
		 });
		  $(".edit-address1_1").click(function(){
			 $(".edit_address_form_new").hide();
		 });
		 </script>
@endsection