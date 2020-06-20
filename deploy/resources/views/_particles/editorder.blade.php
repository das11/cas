@extends('layouts.app')
@section('content')

<div class="home">
		<div class="home_container">
			<div class="home_background" style="background-image:url(site_assets/images/contact.jpg)"></div>
			<div class="home_content_container">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="home_content">
								<div class="breadcrumbs">
									<ul>
										<li><a href="index.html">Home</a></li>
										<li>Edit Order</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</div>

<div class="cart_info">
	<div class="container">
		<div class="row mt-5">
				<div class="col-12 col-lg-3 justify-content-center">
					<div class="dashsidepanel shadow text-center mb-4" style="background-color : #ededed; border-radius : 10px; box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2); padding : 10px">
					
					<ul class="list-group list-group-flush p-3 mt-3 text-left font-weight-bold">
						
					<li class="list-group-item active"><a href="/addproduct" style="color:white">Add Product</a></li>
                    <li class="list-group-item"><a href="/dashboard">Dashboard</a></li>
					<li class="list-group-item"><a href="/addcategories">Add Category</a></li>
					<li class="list-group-item"><a href="/addtags">Add Tags</a></li>
					
					
					</ul>
					<div class="logout-btn mt-5 mb-5">
						<button type="button" class="btn btn-outline-danger">Log Out</button>
					</div>
					</div>
				</div>
				
				<div class="col-xs-12 col-md-8 col-lg-8 " style="margin-top:-30px">
					<div class="get_in_touch">
					
						<div class="contact_form_container">
							{!! Form::open(array('url' => '','class'=>'','id'=>'signup','role'=>'form', 'enctype' => 'multipart/form-data')) !!}
							<form action="#" id="contact_form" class="contact_form">
								
								<div>
									<label for="contact_company"><b>Order ID</b></label>
									<br>
										<input name="name" id="contact_company" type="text" value="{{ $order->id }}" class="form-control">
								</div>
								<br>
								<div>
									<label for="contact_company"><b>Payment ID</b></label>
									<br>
										<input name="name" id="contact_company" type="text" value="{{ $order->payment_id }}" class="form-control">
								</div>
								<br>
								<div>
									<label for="contact_company"><b>Name</b></label>
									<br>
									<input name="price" id="contact_company" placeholder="Price" type="text" value="{{ $order->name }}" class="form-control">
								</div>
								<br>
								<div>
									<label for="contact_company"><b>Address</b></label>
									<br>
									<input name="price" id="contact_company" placeholder="Price" type="text"
									value="{{ $order->address }} CITY : {{ $order->city }} ZIP : {{ $order->zip}}" class="form-control">
								</div>
								<br>
								<div class="form-group">
								<div class="order_list_container">
									<div class="order_list_bar d-flex flex-row align-items-center justify-content-start">
										<div class="order_list_title" style="font-size: 1.2rem">Products</div>
										<div class="order_list_value ml-auto" style="font-size: 1.2rem">Total</div>
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
										<hr>
										<li class="d-flex flex-row align-items-center justify-content-start">
											<div class="order_list_title">Total</div>
											<div class="order_list_value ml-auto">{{ $total }}</div>
										</li>
										<hr>
									</ul>
								</div>
								</div>
								<br>
							
							</form>
							{!! Form::close() !!} 
							<a href="/orders">
								<button type="" class="button contact_button"><span>Back</span></button>
							</a>
						</div>
					</div>
				</div>
		</div>
	</div>
	<br><br><br><br><br><br><br>
</div>
	
@endsection