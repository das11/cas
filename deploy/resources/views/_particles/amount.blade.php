@extends('app')
@section('content')
 <!-- breadcrumb start-->
    <section class="breadcrumb breadcrumb_bg align-items-center">
        <div class="container">
            <div class="row align-items-center justify-content-between">
                <div class="col-sm-6">
                    <div class="breadcrumb_tittle">
                        <p>home > Amount</p>
                        <h2>Amount</h2>
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
            
        <h3>Duration you booked for : {{ $duration }}</h3>
        <h4>Due Payment : {{ $amount }}</h4>

        <h4>Directions : <a href="{{ $directions }}" target="_blank">LINK</a> </h4>

        </div>
        
      </div>
    </div>
  </section>
  <!-- ================ register section end ================= -->

@endsection