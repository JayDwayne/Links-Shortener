@section('site_title', formatTitle([config('settings.title'), __(config('settings.tagline'))]))

@extends('layouts.app')

@section('content')
    <div class="flex-fill">
    <div class="bg-base-0 position-relative">
        <div class="container position-relative py-5 py-sm-6">
            <div class="row">
                <div class="col-12 py-sm-5 text-break">
                    <h1 class="display-4 mb-0 font-weight-bold text-center">
                        {{ __('EACHRights\' links shortener') }}
                    </h1>

                    <p class="text-muted font-weight-normal my-4 font-size-xl text-center">
                        {{ __('360° Tech-Centric URL Shortener by EACHRights') }}
                    </p>

                    <div class="row">
                        <div class="col-2 d-none d-lg-flex">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 15.95 16" style="width: 1.4rem; height: 1.4rem; transform: rotate(-17deg); {{ (__('lang_dir') == 'rtl' ? 'left' : 'right') }}: 2rem; top: 2rem; filter: blur(1px);" class="position-absolute">
                                <path d="M10,.42,8.46,0,7.14,5,5.94.48,4.37.9,5.66,5.73,2.44,2.51,1.29,3.66,4.82,7.19.42,6,0,7.59,4.81,8.87a2.92,2.92,0,0,1-.09-.73,3.26,3.26,0,1,1,6.52,0,3.55,3.55,0,0,1-.08.73L15.52,10,16,8.47l-4.83-1.3L15.52,6,15.1,4.42l-4.83,1.3,3.22-3.23L12.34,1.34,8.86,4.83Z" style="fill: linear-gradient(to right, #8cc540, #016938);"/>
                            </svg>


                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100" style="width: 1.7rem; height: 1.7rem; transform: rotate(22deg); {{ (__('lang_dir') == 'rtl' ? 'left' : 'right') }}: 6rem; top: 0; filter: blur(1px);" class="position-absolute">
                                <polygon points="0 0 50 0 0 50 0 0" style="fill: linear-gradient(to right, #8cc540, #016938);"/>
                                <polygon points="0 50 50 50 0 100 0 50" style="fill: linear-gradient(to right, #8cc540, #016938);"/>
                                <polygon points="50 0 100 0 50 50 50 0" style="fill: linear-gradient(to right, #8cc540, #016938);"/>
                                <circle cx="75" cy="75" r="25" style="fill: linear-gradient(to right, #8cc540, #016938);"/>
                            </svg>

                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 45 45" style="width: 1.3rem; height: 1.3rem; transform: rotate(-5deg); {{ (__('lang_dir') == 'rtl' ? 'left' : 'right') }}: 4.5rem; top: 4rem; filter: blur(1px);" class="position-absolute">
                                <path d="M22.5,11.25A11.25,11.25,0,0,1,11.25,22.5H0V11.25a11.25,11.25,0,0,1,22.5,0Z" style="fill: linear-gradient(to right, #8cc540, #016938);"/>
                                <path d="M22.5,33.75A11.25,11.25,0,0,1,33.75,22.5H45V33.75a11.25,11.25,0,0,1-22.5,0Z" style="fill: linear-gradient(to right, #8cc540, #016938);"/>
                                <path d="M0,33.75A11.25,11.25,0,0,0,11.25,45H22.5V33.75a11.25,11.25,0,0,0-22.5,0Z" style="fill: linear-gradient(to right, #8cc540, #016938);"/>
                                <path d="M45,11.25A11.25,11.25,0,0,0,33.75,0H22.5V11.25a11.25,11.25,0,0,0,22.5,0Z" style="fill: linear-gradient(to right, #8cc540, #016938);"/>
                            </svg>
                        </div>

                        @if(config('settings.short_guest'))
                            <div class="col-12 col-lg-8 mt-4">
                                <div class="form-group mb-0" id="short-form-container"@if(request()->session()->get('link')) style="display: none;"@endif>
                                    <form action="{{ route('guest') }}" method="post" enctype="multipart/form-data" id="short-form">
                                        @csrf
                                        <div class="form-row">
                                            <div class="col-12 col-sm">
                                                <input type="text" dir="ltr" autocomplete="off" autocapitalize="none" spellcheck="false" name="url" class="form-control form-control-lg font-size-lg{{ $errors->has('url') || $errors->has('domain_id') || $errors->has('g-recaptcha-response') ? ' is-invalid' : '' }}" placeholder="{{ __('Shorten your link') }}" autofocus>
                                                @if ($errors->has('url'))
                                                    <span class="invalid-feedback d-block" role="alert">
                                                        <strong>{{ $errors->first('url') }}</strong>
                                                    </span>
                                                @endif

                                                @if ($errors->has('domain_id'))
                                                    <span class="invalid-feedback d-block" role="alert">
                                                        <strong>{{ $errors->first('domain_id') }}</strong>
                                                    </span>
                                                @endif

                                                @if ($errors->has('g-recaptcha-response'))
                                                    <span class="invalid-feedback d-block" role="alert">
                                                        <strong>{{ $errors->first('g-recaptcha-response') }}</strong>
                                                    </span>
                                                @endif
                                            </div>
                                            <div class="col-12 col-sm-auto">
                                                @if(config('settings.captcha_shorten'))
                                                    {!! NoCaptcha::displaySubmit('short-form', __('Shorten'), ['data-theme' => (config('settings.dark_mode') == 1 ? 'dark' : 'light'), 'data-size' => 'invisible', 'class' => 'btn btn-primary btn-lg btn-block font-size-lg mt-3 mt-sm-0']) !!}

                                                    {!! NoCaptcha::renderJs(__('lang_code')) !!}
                                                @else
                                                    <button class="btn btn-primary btn-lg btn-block font-size-lg mt-3 mt-sm-0" type="submit" data-button-loader>
                                                        <div class="position-absolute top-0 right-0 bottom-0 left-0 d-flex align-items-center justify-content-center">
                                                            <span class="d-none spinner-border spinner-border-sm width-4 height-4" role="status"></span>
                                                        </div>
                                                        <span class="spinner-text">{{ __('Shorten') }}</span>&#8203;
                                                    </button>
                                                @endif
                                            </div>
                                        </div>

                                        <input type="hidden" name="domain_id" value="{{ $defaultDomain }}">
                                    </form>
                                </div>

                                @include('home.link')
                            </div>
                        @else
                            <div class="col-12 col-lg-8 pt-2 d-flex flex-column flex-sm-row justify-content-center">
                                <a href="{{ config('settings.registration') ? route('register') : route('login') }}" class="btn btn-primary btn-lg font-size-lg align-items-center mt-3">{{ __('Get started') }}</a>

                                <a href="#features" class="btn btn-outline-primary btn-lg font-size-lg d-inline-flex align-items-center justify-content-center mt-3 {{ (__('lang_dir') == 'rtl' ? 'mr-sm-3' : 'ml-sm-3') }}">{{ __('Learn more') }}</a>
                            </div>
                        @endif

                        <div class="col-2 d-none d-lg-flex">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 40 40" style="width: 1.4rem; height: 1.4rem; transform: rotate(7deg); {{ (__('lang_dir') == 'rtl' ? 'right' : 'left') }}: 2rem; top: 2rem; filter: blur(1px);" class="position-absolute"><path d="M8.55,3.6A20,20,0,0,0,4.71,7.11c4.58-.42,10.42.27,17.18,3.66,7.23,3.61,13,3.73,17.1,3a20.14,20.14,0,0,0-1.37-3.2C33,11,27,10.36,20.11,6.9A29.64,29.64,0,0,0,8.55,3.6ZM34.91,6.67A20,20,0,0,0,15,.64a37,37,0,0,1,6.93,2.68A28.82,28.82,0,0,0,34.91,6.67Zm5,11c-4.89,1-11.65.77-19.75-3.29C12.53,10.56,6.5,10.6,2.43,11.51l-.61.14A19.82,19.82,0,0,0,.56,15.29c.32-.08.66-.17,1-.24C6.5,14,13.47,14,21.89,18.21,29.47,22,35.5,22,39.57,21.05L40,21c0-.31,0-.63,0-.95A20.66,20.66,0,0,0,39.86,17.63Zm-.54,7.54c-4.84.85-11.4.52-19.21-3.38C12.53,18,6.5,18.05,2.43,19A19.75,19.75,0,0,0,0,19.66V20a20,20,0,0,0,39.32,5.17Z" style="fill:#016938;fill-rule:evenodd"/></svg>

                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 40 40" style="width: 1.65rem; height: 1.65rem; transform: rotate(22deg); {{ (__('lang_dir') == 'rtl' ? 'right' : 'left') }}: 6rem; top: .5rem; filter: blur(1px);" class="position-absolute"><path d="M20,40A20,20,0,1,0,0,20,20,20,0,0,0,20,40ZM26.24,9.32c.3-1.08-.74-1.72-1.7-1L11.19,17.79c-1,.74-.87,2.21.25,2.21H15v0H21.8l-5.58,2-2.46,8.74c-.3,1.08.74,1.72,1.7,1l13.35-9.51c1-.74.87-2.21-.25-2.21H23.23Z" style="fill:#014e2a;fill-rule:evenodd"/></svg>

                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 40 40" style="width: 1.3rem; height: 1.3rem; transform: rotate(-20deg); {{ (__('lang_dir') == 'rtl' ? 'right' : 'left') }}: 5rem; top: 4rem; filter: blur(1px);" class="position-absolute"><path d="M20,40A20,20,0,1,0,0,20,20,20,0,0,0,20,40Zm3.09-24.55a4.37,4.37,0,1,0-6.18,0L20,18.54Zm1.46,7.64a4.37,4.37,0,1,0,0-6.18L21.46,20Zm-1.46,7.63a4.37,4.37,0,0,0,0-6.17L20,21.46l-3.09,3.09a4.37,4.37,0,0,0,6.18,6.17ZM9.28,23.09a4.37,4.37,0,1,1,6.17-6.18L18.54,20l-3.09,3.09A4.37,4.37,0,0,1,9.28,23.09Z" style="fill:#014e2a;fill-rule:evenodd"/></svg>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    @if(paymentProcessors())
        <div class="bg-base-1">
            <div class="container py-5 py-md-7 position-relative z-1">
                <div class="text-center">
                    <h3 class="h2 mb-3 font-weight-bold text-center">{{ __('Pricing') }}</h3>
                    <div class="m-auto">
                        <p class="text-muted font-weight-normal font-size-lg mb-0">{{ __('Simple pricing plans for everyone and every budget.') }}</p>
                    </div>
                </div>

                @include('shared.pricing')

                <div class="d-flex justify-content-center">
                    <a href="{{ route('pricing') }}" class="btn btn-outline-primary py-2 mt-5">{{ __('Learn more') }}</a>
                </div>
            </div>
        </div>
    @else
<div class="bg-base-1">
    <div class="container position-relative text-center py-5 py-md-7 d-flex flex-column z-1">
        <div class="flex-grow-1">
            <div class="badge badge-pill badge-success mb-3 px-3 py-2">{{ __('The East African Centre for Human Rights') }}</div>
            <div class="text-center">
                <h4 class="mb-3 font-weight-bold">{{ __('EACHRights is a non-partisan, Regional Non-Governmental Organization that seeks to initiate and undertake programmes that promote, protect, and enhance Economic, Social, and Cultural Rights (ECOSOC Rights) in Kenya, Uganda and Tanzania for vulnerable and marginalized groups. ') }}</h4>
                <div class="m-auto">
                    <p class="font-weight-normal text-muted font-size-lg mb-0">{{ __('www.eachrights.or.ke') }}</p>
                </div>
            </div>
        </div>
    </div>
</div>

                 
            </div>
        </div>
    @endif
</div>
@endsection