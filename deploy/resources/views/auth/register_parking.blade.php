@extends('app')
@section('content')
 <!-- breadcrumb start-->
    <section class="breadcrumb breadcrumb_bg align-items-center">
        <div class="container">
            <div class="row align-items-center justify-content-between">
                <div class="col-sm-6">
                    <div class="breadcrumb_tittle">
                        <p>home > Register Parking</p>
                        <h2>register</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->

  <!-- ================ register section start ================= -->
  <section class="contact-section section_padding">
    <div class="container">
      <div class="row justify-content-center">
        
        <div class="col-lg-8">
            
            <form method="POST" action="/addparkingslot">
                @csrf

                <div class="form-group row">
                    <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Address') }}</label>

                    <div class="col-md-6">
                        <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="address" value="{{ old('address') }}" required autocomplete="address" autofocus>

                        @error('address')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>

                <div class="form-group row">
                    <label for="contact" class="col-md-4 col-form-label text-md-right">{{ __('Contact') }}</label>

                    <div class="col-md-6">
                        <input id="dob" type="number" class="form-control" required autocomplete="email" name="contact">

                        @error('email')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>

                <input id="user_id" value="{{ $user_id }}" hidden name="user_id">

                <div class="form-group row mb-0">
                    <div class="col-md-6 offset-md-4">
                        <button type="submit" class="btn btn-primary">
                            {{ __('Register') }}
                        </button>
                    </div>
                </div>
            </form>

        </div>
        
      </div>
    </div>
  </section>
  <!-- ================ register section end ================= -->

@endsection