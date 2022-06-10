@extends('frontend.master') @section('content')
<section class="pageTitle"> </section>
<!--top banner end -->
<div class="discription_section my__accountsd">
	<div class="container">
		<div class="row">
			<div class="col-md-12 breadmcrumsize">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="index.php">Home</a></li>
						<li class="breadcrumb-item active" aria-current="page">Login Or Registration</li>
					</ol>
				</nav>
			</div>
		</div>
		<div class="container-rtu6">
			<div class="my-4 my-xl-8 position-relative">
				<div class="sidkierls w-100 mb-1">
					<div class="bootstrap-accordiana">
						<div class="backtabs-dp_servicespros2">
							<div class="row">
								<div class="col-md-3 back_login">
									<div class="background-login position-relative h-100">
										<h3>Looks like you're new here!</h3>
										<p>Sign up with your mobile number to get started</p> <img src="img/login_img.png" class="position-absolute bottom-0 w-100" alt=""> </div>
								</div>
								<div class="col-md-9 p-0">
									<ul class="ulines-dps">
										<li class="ukine ukine1b fs-5 py-2 active4"><i class="fa fa-lock" aria-hidden="true"></i> Login</li>
										<li class="ukine ukine2b fs-5 py-2"><i class="fa fa-user" aria-hidden="true"></i> Sign Up </li>
									</ul>
									<ul class="ulines-dps-para">
										<li class="ukine ukine1b active4">
											<div class="colampoxe mx-0 p-4  py-3 shadow-none login_form">
												<div class="border-bottom1 border-color-111 mt-0 mb-3">
													<h3 class="section-title section-title__sm mb-0 pb-2 font-size-18">Login</h3>
													<div class="deals">
														<hr> </div>
												</div>
												<p class="text-gray-901 mb-4">Welcome back! Sign in to your account.</p>
												<form method="post" action="{{ route('login') }}" class="js-validate" novalidate="novalidate">
													@csrf
												@if (addon_is_activated('otp_system') && env("DEMO_MODE") != "On")
													<div class="js-form-message form-group">
														<input type="tel" id="phone-code" class="form-control {{ $errors->has('phone') ? ' is-invalid' : '' }}" value="{{ old('phone') }}" placeholder="" name="phone" autocomplete="off">
													</div>
													<input type="hidden" name="country_code" value="">
													<div class="js-form-message form-group">
														<input type="email" class="form-control {{ $errors->has('email') ? ' is-invalid' : '' }}" value="{{ old('email') }}" placeholder="{{  translate('Email') }}" name="email" id="email" autocomplete="off">
														@if ($errors->has('email'))
															<span class="invalid-feedback" role="alert">
																<strong>{{ $errors->first('email') }}</strong>
															</span>
														@endif
													</div>
													 <div class="form-group text-right">
														<button class="btn btn-link p-0 opacity-50 text-reset" type="button" onclick="toggleEmailPhone(this)">{{ translate('Use Email Instead') }}</button>
													</div>
												@else
													<div class="js-form-message form-group">
														<input type="email" class="form-control {{ $errors->has('email') ? ' is-invalid' : '' }}" value="{{ old('email') }}" placeholder="{{  translate('Email') }}" name="email" id="email" autocomplete="off">
														@if ($errors->has('email'))
															<span class="invalid-feedback" role="alert">
																<strong>{{ $errors->first('email') }}</strong>
															</span>
														@endif
													</div>
												@endif
													<div class="js-form-message form-group">
														<input type="password" class="form-control {{ $errors->has('password') ? ' is-invalid' : '' }}" placeholder="{{ translate('Password')}}" name="password" id="password">
													</div>
													<div class="js-form-message mb-3">
														<div class="custom-control custom-checkbox d-flex align-items-center">
															<input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }} class="custom-control-input" id="rememberCheckbox">
															<span class=opacity-60>{{  translate('Remember Me') }}</span>
                                                    <span class="aiz-square-check"></span>
															<label class="custom-control-label form-label" for="rememberCheckbox">Remember me</label>
														</div>
													</div>
													<div class="mb-1"> 
														<button type="submit" name="submit" class="btn btn-primary-dark-w px-5 mb-2"> Login</button>
														<div class="mb-2"><a href="javascript:void(0);" class="text-blue" data-toggle="modal" data-target="#myModal">Lost your password?</a></div>
													</div>
												</form>
											</div>
											<!-- Button trigger modal -->
											<!-- Modal -->
										</li>
										<li class="ukine ukine2b ">
											<div class="colampoxe mr-3  mx-0 p-4 py-3 shadow-none">
												<div class="border-bottom1 border-color-111 mt-0 mb-3">
													<h3 class="section-title section-title__sm mb-0 pb-2 font-size-18">Register</h3>
													<div class="deals">
														<hr> </div>
												</div>
												<p class="text-gray-901 mb-4">Create new account today to reap the benefits of a personalized shopping experience.</p>
												<form id="reg-form" action="{{ route('register') }}" method="post" class="js-validate row" novalidate="novalidate">
													@csrf
													<div class="js-form-message form-group col-md-6 mb-3">
														<input type="text" class="form-control {{ $errors->has('first_name') ? ' is-invalid' : '' }}" name="first_name" value="{{ old('first_name') }}" placeholder="First Name" autocomplete="off">
														@if ($errors->has('first_name'))
															<span class="invalid-feedback" role="alert">
																<strong>{{ $errors->first('first_name') }}</strong>
															</span>
														@endif
													</div>
                                                    {{-- <input type="text" name="name" value="Tushar Deshpande"> --}}
													<div class="js-form-message form-group col-md-6 mb-3">
														<input type="text" class="form-control {{ $errors->has('last_name') ? ' is-invalid' : '' }}" name="last_name" value="{{ old('last_name') }}" placeholder="Last Name" autocomplete="off">
                                                        @if ($errors->has('last_name'))
															<span class="invalid-feedback" role="alert">
																<strong>{{ $errors->first('last_name') }}</strong>
															</span>
														@endif
													</div>
													<div class="js-form-message form-group col-md-6 mb-3">
														<input type="text" class="form-control {{ $errors->has('phone') ? ' is-invalid' : '' }}" name="phone" value="{{ old('phone') }}" placeholder="Phone No." autocomplete="off">
                                                        @if ($errors->has('phone'))
															<span class="invalid-feedback" role="alert">
																<strong>{{ $errors->first('phone') }}</strong>
															</span>
														@endif
													</div>
													<div class="js-form-message form-group col-md-6 mb-3">
														<input type="text" class="form-control {{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" placeholder="Email address" autocomplete="off">
                                                        @if ($errors->has('email'))
															<span class="invalid-feedback" role="alert">
																<strong>{{ $errors->first('email') }}</strong>
															</span>
														@endif
													</div>
													<div class="js-form-message form-group col-md-12 mb-3">
														<ul class="list-unstyled d-flex">
															<li class="mt-0 mb-0">
																<label for="payment_method_bacs d-flex"> <span><b>Gender</b> </span> </label>
															</li>
															<li class="m-3 mt-0 mb-0">
																<label for="male">
																	<input id="male" class="input-radio" type="radio" value="Male" name="gender"> <span>Male </span> </label>
															</li>
															<li class="m-3 mt-0 mb-0">
																<label for="female">
																	<input type="radio" id="female" value="Female" name="gender" class="input-radio" id="payment_method_paypal"> <span>Female  </span> </label>
															</li>
															<li class="m-3 mt-0 mb-0">
																<label for="other">
																	<input type="radio" id="other" value="Other" name="gender" class="input-radio" id="payment_method_paypal"> <span>Other  </span> </label>
															</li>
														</ul>
													</div>
													<div class="js-form-message form-group mb-3 col-md-6">
														<input type="password" class="form-control {{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" id="upassword" placeholder="New Password" aria-label="Email address" requireddata-msg="Please enter a valid email address." data-error-class="u-has-error" data-success-class="u-has-success">
                                                        @if ($errors->has('password'))
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $errors->first('password') }}</strong>
                                                </span>
                                            @endif
													</div>
													<div class="js-form-message form-group mb-3 col-md-6">
														<input type="password" class="form-control" placeholder="{{  translate('Confirm Password') }}" name="password_confirmation">
													</div>
													<p class="text-gray-901 mb-4">Your personal data will be used to support your experience throughout this website, to manage your account, and for other purposes described in our <a href="policy.php" class="text-blue">privacy policy.</a></p>
													<div class="mb-600">
														<div class="mb-3">
															<button type="submit" style="width:140px;" class="btn btn-primary-dark-w px-5">{{  translate('Create Account') }}</button>
														</div>
													</div>
												</form>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="myModal" class="modal fade prolidneis" role="dialog">
	<div class="modal-dialog" id="modal-dialog45">
		<div class="modal-content">
			<div class="modal-header">
				<div class="box-soldid1back box-soldid2"><i class="fa " aria-hidden="true"></i></div>
				<button type="button" class="close" data-dismiss="modal">×</button>
			</div>
			<div class="modal-body">
				<!--  <h2 style="    font-size: 22px; text-transform: uppercase;    text-align: center; font-weight: 600;"></h2> -->
				<div class="row">
					<div class="col-md-6">
						<div class="box-soldid2">
							<div class="colampoxe">
								<div class="border-bottom1 border-color-111 mt-0 mb-3">
									<h3 class="section-title section-title__sm mb-0 pb-2 mt-0 font-size-18"> Your new password must:</h3>
									<div class="deals">
										<hr> </div>
								</div>
								<p class="text-gray-901 mb-1">Be at least 4 characters in length
									<br>Not contain common passwords.
									<br>Not be same as your current password</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="box-soldid1">
							<div class="border-bottom1 border-color-111 mt-0 mb-3">
								<h3 class="section-title section-title__sm mb-0 mt-0 pb-2 font-size-18"> Change Password </h3>
								<div class="deals">
									<hr> </div>
							</div>
							<form class="js-validate" novalidate="novalidate">
								<div class="js-form-message form-group mb-2">
									<input type="email" class="form-control" name="email" id="RegisterSrEmailExample01" placeholder="Type Current Password" aria-label="Email address" requireddata-msg="Please enter a valid email address." data-error-class="u-has-error" data-success-class="u-has-success"> </div>
								<div class="js-form-message form-group mb-2">
									<input type="email" class="form-control" name="email" id="upassword" placeholder="Type New Password" aria-label="Email address" requireddata-msg="Please enter a valid email address." data-error-class="u-has-error" data-success-class="u-has-success"> </div>
								<div class="js-form-message form-group mb-2">
									<input type="email" class="form-control" name="email" id="uconfirm_password" placeholder="Retype New Password" aria-label="Email address" requireddata-msg="Please enter a valid email address." data-error-class="u-has-error" data-success-class="u-has-success"> </div>
								<div class="js-form-message form-group mb-2">
									<input type="email" class="form-control" name="email" id="RegisterSrEmailExample04" placeholder="Enter OTP Sent to 9999999999" aria-label="Email address" requireddata-msg="Please enter a valid email address." data-error-class="u-has-error" data-success-class="u-has-success"> </div>
								<div class="mb-600" style="    text-align: center;">
									<div class="mb-3">
										<button type="submit" class="btn btn-primary-dark-w" style="width:auto;">Change Password</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div> 
<script type="text/javascript">
        var isPhoneShown = true,
            countryData = window.intlTelInputGlobals.getCountryData(),
            input = document.querySelector("#phone-code");

        for (var i = 0; i < countryData.length; i++) {
            var country = countryData[i];
            if(country.iso2 == 'bd'){
                country.dialCode = '88';
            }
        }

        var iti = intlTelInput(input, {
            separateDialCode: true,
            utilsScript: "{{ static_asset('assets/js/intlTelutils.js') }}?1590403638580",
            onlyCountries: @php echo json_encode(\App\Models\Country::where('status', 1)->pluck('code')->toArray()) @endphp,
            customPlaceholder: function(selectedCountryPlaceholder, selectedCountryData) {
                if(selectedCountryData.iso2 == 'bd'){
                    return "01xxxxxxxxx";
                }
                return selectedCountryPlaceholder;
            }
        });

        var country = iti.getSelectedCountryData();
        $('input[name=country_code]').val(country.dialCode);

        input.addEventListener("countrychange", function(e) {
            // var currentMask = e.currentTarget.placeholder;

            var country = iti.getSelectedCountryData();
            $('input[name=country_code]').val(country.dialCode);

        });

        function toggleEmailPhone(el){
            if(isPhoneShown){
                $('.phone-form-group').addClass('d-none');
                $('.email-form-group').removeClass('d-none');
                $('input[name=phone]').val(null);
                isPhoneShown = false;
                $(el).html('{{ translate('Use Phone Instead') }}');
            }
            else{
                $('.phone-form-group').removeClass('d-none');
                $('.email-form-group').addClass('d-none');
                $('input[name=email]').val(null);
                isPhoneShown = true;
                $(el).html('{{ translate('Use Email Instead') }}');
            }
        }



        
    </script>

@php if(false) { @endphp
<section class="gry-bg py-5">
	<div class="profile">
		<div class="container">
			<div class="row">
				<div class="col-xxl-4 col-xl-5 col-lg-6 col-md-8 mx-auto">
					<div class="card">
						<div class="text-center pt-4">
							<h1 class="h4 fw-600">
                                    {{ translate('Login to your account.')}}
                                </h1> </div>
						<div class="px-4 py-3 py-lg-4">
							<div class="">
								<form class="form-default" role="form" action="{{ route('login') }}" method="POST">
								@csrf @if (addon_is_activated('otp_system') && env("DEMO_MODE") != "On")
									<div class="form-group phone-form-group mb-1">
										<input type="tel" id="phone-code" class="form-control{{ $errors->has('phone') ? ' is-invalid' : '' }}" value="{{ old('phone') }}" placeholder="" name="phone" autocomplete="off"> </div>
									<input type="hidden" name="country_code" value="">
									<div class="form-group email-form-group mb-1 d-none">
										<input type="email" class="form-control {{ $errors->has('email') ? ' is-invalid' : '' }}" value="{{ old('email') }}" placeholder="{{  translate('Email') }}" name="email" id="email" autocomplete="off"> @if ($errors->has('email')) <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $errors->first('email') }}</strong>
                                                    </span> @endif </div>
									<div class="form-group text-right">
										<button class="btn btn-link p-0 opacity-50 text-reset" type="button" onclick="toggleEmailPhone(this)">{{ translate('Use Email Instead') }}</button>
									</div> @else
									<div class="form-group">
										<input type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" value="{{ old('email') }}" placeholder="{{  translate('Email') }}" name="email" id="email" autocomplete="off"> @if ($errors->has('email')) <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $errors->first('email') }}</strong>
                                                    </span> @endif </div> @endif
									<div class="form-group">
										<input type="password" class="form-control {{ $errors->has('password') ? ' is-invalid' : '' }}" placeholder="{{ translate('Password')}}" name="password" id="password"> </div>
									<div class="row mb-2">
										<div class="col-6">
											<label class="aiz-checkbox">
												<input type="checkbox" name="remember" {{ old( 'remember') ? 'checked' : '' }}> <span class=opacity-60>{{  translate('Remember Me') }}</span> <span class="aiz-square-check"></span> </label>
										</div>
										<div class="col-6 text-right"> <a href="{{ route('password.request') }}" class="text-reset opacity-60 fs-14">{{ translate('Forgot password?')}}</a> </div>
									</div>
									<div class="mb-5">
										<button type="submit" class="btn btn-primary btn-block fw-600">{{ translate('Login') }}</button>
									</div>
								</form>
								@if (env("DEMO_MODE") == "On")
								<div class="mb-5">
									<table class="table table-bordered mb-0">
										<tbody>
											<tr>
												<td>{{ translate('Seller Account')}}</td>
												<td>
													<button class="btn btn-info btn-sm" onclick="autoFillSeller()">{{ translate('Copy credentials') }}</button>
												</td>
											</tr>
											<tr>
												<td>{{ translate('Customer Account')}}</td>
												<td>
													<button class="btn btn-info btn-sm" onclick="autoFillCustomer()">{{ translate('Copy credentials') }}</button>
												</td>
											</tr>
											<tr>
												<td>{{ translate('Delivery Boy Account')}}</td>
												<td>
													<button class="btn btn-info btn-sm" onclick="autoFillDeliveryBoy()">{{ translate('Copy credentials') }}</button>
												</td>
											</tr>
										</tbody>
									</table>
								</div> @endif @if(get_setting('google_login') == 1 || get_setting('facebook_login') == 1 || get_setting('twitter_login') == 1)
								<div class="separator mb-3"> <span class="bg-white px-3 opacity-60">{{ translate('Or Login With')}}</span> </div>
								<ul class="list-inline social colored text-center mb-5"> @if (get_setting('facebook_login') == 1)
									<li class="list-inline-item">
										<a href="{{ route('social.login', ['provider' => 'facebook']) }}" class="facebook"> <i class="lab la-facebook-f"></i> </a>
									</li> @endif @if(get_setting('google_login') == 1)
									<li class="list-inline-item">
										<a href="{{ route('social.login', ['provider' => 'google']) }}" class="google"> <i class="lab la-google"></i> </a>
									</li> @endif @if (get_setting('twitter_login') == 1)
									<li class="list-inline-item">
										<a href="{{ route('social.login', ['provider' => 'twitter']) }}" class="twitter"> <i class="lab la-twitter"></i> </a>
									</li> @endif </ul> @endif </div>
							<div class="text-center">
								<p class="text-muted mb-0">{{ translate('Dont have an account?')}}</p> <a href="{{ route('user.registration') }}">{{ translate('Register Now')}}</a> </div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section> @php } @endphp @endsection @section('script')
<script type="text/javascript">
var isPhoneShown = true,
	countryData = window.intlTelInputGlobals.getCountryData(),
	input = document.querySelector("#phone-code");
for(var i = 0; i < countryData.length; i++) {
	var country = countryData[i];
	if(country.iso2 == 'bd') {
		country.dialCode = '88';
	}
}
var iti = intlTelInput(input, {
	separateDialCode: true,
	utilsScript: "{{ static_asset('assets/js/intlTelutils.js') }}?1590403638580",
	onlyCountries: @php echo json_encode(\App\ Models\ Country::where('status', 1) - > pluck('code') - > toArray())@ endphp,
	customPlaceholder: function(selectedCountryPlaceholder, selectedCountryData) {
		if(selectedCountryData.iso2 == 'bd') {
			return "01xxxxxxxxx";
		}
		return selectedCountryPlaceholder;
	}
});
var country = iti.getSelectedCountryData();
$('input[name=country_code]').val(country.dialCode);
input.addEventListener("countrychange", function(e) {
	// var currentMask = e.currentTarget.placeholder;
	var country = iti.getSelectedCountryData();
	$('input[name=country_code]').val(country.dialCode);
});

function toggleEmailPhone(el) {
	if(isPhoneShown) {
		$('.phone-form-group').addClass('d-none');
		$('.email-form-group').removeClass('d-none');
		$('input[name=phone]').val(null);
		isPhoneShown = false;
		$(el).html('{{ translate('
			Use Phone Instead ') }}');
	} else {
		$('.phone-form-group').removeClass('d-none');
		$('.email-form-group').addClass('d-none');
		$('input[name=email]').val(null);
		isPhoneShown = true;
		$(el).html('{{ translate('
			Use Email Instead ') }}');
	}
}


</script> @endsection