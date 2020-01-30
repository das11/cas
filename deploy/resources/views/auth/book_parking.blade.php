@extends('app')
@section('content')
 <!-- breadcrumb start-->
    <section class="breadcrumb breadcrumb_bg align-items-center">
        <div class="container">
            <div class="row align-items-center justify-content-between">
                <div class="col-sm-6">
                    <div class="breadcrumb_tittle">
                        <p>home > Book Parking</p>
                        <h2>Book Parking</h2>
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

            @if($parking->active == 1)
                <h5 class="btn-danger">This parking has been Booked!</h5>
            @endif
            
            
            <form method="POST" action="/bookparkingslot">
                @csrf

                <div class="form-group row">
                        <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Name') }}</label>
    
                        <div class="col-md-6">
                            <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>
    
                            @error('name')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
    
                    <div class="form-group row">
                        <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>
    
                        <div class="col-md-6">
                            <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">
    
                            @error('email')
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

                    <div class="form-group row">
                        <label for="duration" class="col-md-4 col-form-label text-md-right">{{ __('Duration') }}</label>
    
                        <div class="col-md-6">
                            <input id="dob" type="number" class="form-control" required autocomplete="email" name="duration">
    
                            @error('email')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>


                    <div class="form-group row">
                        <label for="contact" class="col-md-4 col-form-label text-md-right">{{ __('Timings') }}</label>
    
                        <div class="col-md-6">
                            <p>
                                Date : <input type ="text" name="date" id="datepicker" class="t-d" placeholder="Select Date" />
                            </p>
                            <p>
                                Time : <input type="text" name="time" id="timepicker" class="t-d" placeholder="Select Time" />
                            </p>
                        </div>
                    </div>

                   

    
                    <div class="form-group row mb-0">
                        <div class="col-md-6 offset-md-4">
                            <button type="submit" class="btn btn-primary">
                                {{ __('Book Parking Slot') }}
                            </button>
                        </div>
                    </div>

                    <input id="parking_id" value="{{ $parkingid }}" hidden name="parkingid">

            </form>

        </div>
        
      </div>
    </div>
  </section>
  <!-- ================ register section end ================= -->


<script type="text/javascript">

    function date(){
        $('.datepicker').datepicker();
        console.log("test");
    }

    date();

</script>

@endsection