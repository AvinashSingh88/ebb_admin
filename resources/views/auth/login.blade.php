@extends('backend.layouts.layout')

@section('content')

   <!-- /Left Text -->
   <div class="d-none d-lg-flex col-lg-7 col-xl-8 align-items-center p-5">
      <div class="w-100 d-flex justify-content-center">
        <img src="{{ static_asset('assets/img/illustrations/boy-with-rocket-light.png') }}" class="img-fluid" alt="Login image" width="700" data-app-dark-img="illustrations/boy-with-rocket-dark.png" data-app-light-img="illustrations/boy-with-rocket-light.png">
      </div>
    </div>
    <!-- /Left Text -->

    <!-- Login -->
    <div class="d-flex col-12 col-lg-5 col-xl-4 align-items-center authentication-bg p-sm-5 p-4">
      <div class="w-px-400 mx-auto">
        <!-- Logo -->
        <div class="app-brand mb-5">
          <a href="" class="app-brand-link gap-2">
            <span class="app-brand-logo demo">
                @if(get_setting('system_logo_black') != null)
                    <img src="{{ uploaded_asset(get_setting('system_logo_black')) }}" alt="" style="width:70px;">
                @else
                    <img src="{{ static_asset('assets/img/logo2.png') }}" alt="" style="width:70px;">
                @endif
            </span>
          </a>
        </div>
        <!-- /Logo -->
        <h4 class="mb-2">{{ translate('Welcome to') }} {{ env('APP_NAME') }} 👋</h4>
        <p class="mb-4">Please sign-in to your account and start the adventure</p>

        <form id="formAuthentication" class="mb-3" method="POST" role="form" action="{{ route('login') }}">
            @csrf
            <div class="mb-3">
                <label for="email" class="form-label"> {{ translate('Email') }} </label>
                <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required autofocus placeholder="{{ translate('Email') }}">
                @if ($errors->has('email'))
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('email') }}</strong>
                    </span>
                @endif
            </div>
            
            <div class="mb-3 form-password-toggle">

               
                <div class="d-flex justify-content-between">
                    <label class="form-label" for="password"> {{ translate('Password') }} </label>
                    @if(env('MAIL_USERNAME') != null && env('MAIL_PASSWORD') != null)
                        <a href="{{ route('password.request') }}">
                            <small>{{translate('Forgot password ?')}}</small>
                        </a>
                    @endif
                </div>

                <div class="input-group input-group-merge">
                    <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required placeholder="{{ translate('Password') }}">
                    @if ($errors->has('password'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('password') }}</strong>
                        </span>
                    @endif
                    <span class="input-group-text cursor-pointer"><i class="bx bx-hide"></i></span>
                </div>

            </div>
            <div class="mb-3">
                <div class="form-check">
                <input class="form-check-input" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                <label class="form-check-label" for="remember-me">
                    Remember Me
                </label>
                </div>
            </div>
            <button type="submit" class="btn btn-primary d-grid w-100">
                {{ translate('Login') }}
            </button>
        </form>

      </div>
    </div>
    <!-- /Login -->


@endsection


