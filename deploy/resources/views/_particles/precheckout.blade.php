@extends('layouts.app')
@section('content')

<!-- Home -->

<div class="home">
	<div class="home_container">
		<div class="home_background" style="background-image:url(site_assets/images/cart.jpg)"></div>
		<div class="home_content_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="home_content">
							<div class="breadcrumbs">
								<ul>
									<li><a href="index.html">Home</a></li>
									<li><a href="">Cart</a></li>
									<li>Checkout</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<div class="checkout">
	<div class="container">
		<div class="row">

			<!-- Billing Info -->
			<div class="col-lg-6">
				<div class="billing checkout_section">
					<div class="section_title">Billing Address</div>
					<div class="section_subtitle">Enter your address info</div>
					<div class="checkout_form_container">
						{!! Form::open(array('url' => 'checkout','class'=>'','id'=>'form','role'=>'form', 'enctype' => 'multipart/form-data')) !!}
						<form action="#" id="checkout_form" class="checkout_form">
							<div class="row">
								<div class="col-xl-12">
									<!-- Name -->
									<label for="checkout_name">Name*</label>
									<input type="text" name="name" id="checkout_name" class="checkout_input" required="required">
								</div>
							</div>
							<div>
								<!-- Address -->
								<label for="checkout_address">Address*</label>
								<input type="text" id="checkout_address" class="checkout_input" required="required" name="address">
							</div>
							<div>
								<!-- Zipcode -->
								<label for="checkout_zipcode">Zipcode*</label>
								<input type="text" id="checkout_zipcode" class="checkout_input" name="zip" required="required">
							</div>
							<div>
								<!-- City / Town -->
								<label for="checkout_city">City/Town</label>
								<input name="checkout_city" id="checkout_city" name="city" class="checkout_input">
							</div>
							<div>
								<!-- Phone no -->
								<label for="checkout_phone">Phone no*</label>
								<input type="phone" name="contact" id="checkout_phone" class="checkout_input" required="required">
							</div>

							<input value="{{ $cart_id }}" hidden name="cart_id">
							
							{{-- <div class="checkout_extra">
								<div>
									<input type="checkbox" id="checkbox_terms" name="regular_checkbox" class="regular_checkbox" checked="checked">
									<label for="checkbox_terms"><img src="images/check.png" alt=""></label>
									<span class="checkbox_title">Terms and conditions</span>
								</div>
								<div>
									<input type="checkbox" id="checkbox_account" name="regular_checkbox" class="regular_checkbox">
									<label for="checkbox_account"><img src="images/check.png" alt=""></label>
									<span class="checkbox_title">Create an account</span>
								</div>
								<div>
									<input type="checkbox" id="checkbox_newsletter" name="regular_checkbox" class="regular_checkbox">
									<label for="checkbox_newsletter"><img src="images/check.png" alt=""></label>
									<span class="checkbox_title">Subscribe to our newsletter</span>
								</div>
							</div> --}}
						</form>
						{!! Form::close() !!}
					</div>
				</div>
			</div>

			<!-- Order Info -->

			<div class="col-lg-6">
				<div class="order checkout_section">
					<div class="section_title">Your order</div>
					<div class="section_subtitle">Order details</div>

					<!-- Order details -->
					<div class="order_list_container">
						<div class="order_list_bar d-flex flex-row align-items-center justify-content-start">
							<div class="order_list_title">Products</div>
							<div class="order_list_value ml-auto">Total</div>
						</div>
						<ul class="order_list">
							@foreach ($products as $item)
								<li class="d-flex flex-row align-items-center justify-content-start">
								<div class="order_list_title">{{ $item->name }}</div>
									<div class="order_list_value ml-auto">{{ $item->price }}</div>
								</li>
							@endforeach

							@php
								$total = 0;
								foreach ($products as $item) {
									$total += $item->price;
								}
							@endphp
							<li class="d-flex flex-row align-items-center justify-content-start">
								<div class="order_list_title">Subtotal</div>
							<div class="order_list_value ml-auto">{{ $total }}</div>
							</li>
							<li class="d-flex flex-row align-items-center justify-content-start">
								<div class="order_list_title">Shipping</div>
								<div class="order_list_value ml-auto">Free</div>
							</li>
							<li class="d-flex flex-row align-items-center justify-content-start">
								<div class="order_list_title">Total</div>
								<div class="order_list_value ml-auto">{{ $total }}</div>
							</li>
						</ul>
					</div>

					{{-- <!-- Payment Options -->
					<div class="payment">
						<div class="payment_options">
							<label class="payment_option clearfix">Paypal
								<input type="radio" name="radio">
								<span class="checkmark"></span>
							</label>
							<label class="payment_option clearfix">Cach on delivery
								<input type="radio" name="radio">
								<span class="checkmark"></span>
							</label>
							<label class="payment_option clearfix">Credit card
								<input type="radio" name="radio">
								<span class="checkmark"></span>
							</label>
							<label class="payment_option clearfix">Direct bank transfer
								<input type="radio" checked="checked" name="radio">
								<span class="checkmark"></span>
							</label>
						</div>
					</div> --}}

					<br><br>
					<!-- Order Text -->
					{{-- <div class="order_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pharetra temp or so dales. Phasellus sagittis auctor gravida. Integ er bibendum sodales arcu id te mpus. Ut consectetur lacus.</div> --}}
					{{-- <div class="button order_button"><a href="/pre">Proceed</a></div> --}}

					<button type="submit" class="button contact_button" form="form">
						<span>Proceed</span>
					</button>

					
				</div>
			</div>
		</div>
	</div>
</div>



@endsection