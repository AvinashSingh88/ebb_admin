@extends('frontend.master')

@section('content')

<section class="pageTitle"> </section>
<!--top banner end -->
<div class="discription_section my__accountsd">
	<div class="container">
		<div class="row">
			<div class="col-md-12 breadmcrumsize">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="{{url('')}}">Home</a></li>
						<li class="breadcrumb-item active" aria-current="page">Verify Your Email</li>
					</ol>
				</nav>
			</div>
		</div>
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
								<h3 class="section-title section-title__sm mb-0 mt-0 pb-2 font-size-18"> {{ translate('Verify your Email?') }} </h3>
								@php
								$email_value = Session::get('user_email');
								
								@endphp
								<p class="mb-4 opacity-60">Enter OTP Sent to <b>{{$email_value}}</b></p>
								<div class="deals">
									<hr> </div>
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
							</div>
							<form class="js-validate" method="post" action="{{ route('verifyOtpOfEmail') }}" novalidate="novalidate">
								@csrf
							 
								<div class="js-form-message form-group mb-2">
									<input type="tel" min="6" maxlength="6" class="form-control {{ $errors->has('otp') ? ' is-invalid' : '' }}" value="{{ old('otp') }}" name="otp" id="RegisterSrEmailExample01" placeholder="{{ translate('Enter OTP') }}" > 
								</div>
								<input type="hidden" name="email" value="{{$email_value}}">
								@if ($errors->has('otp'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('otp') }}</strong>
                                </span>
								@endif
							
								<div class="mb-600" style="    text-align: center;">
									<div class="mb-3">
										<button type="submit" class="btn btn-primary-dark-w" style="width:auto;">{{ translate('VERIFY') }}</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				</div>
				</div>
@endsection
