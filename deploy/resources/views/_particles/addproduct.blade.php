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
										<li>Product Listing</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</div>

<div class="row mt-5">
        <div class="col-12 col-lg-3 d-flex justify-content-center">
            <div class="dashsidepanel shadow text-center mb-4">
             
              <ul class="list-group list-group-flush p-3 mt-3 text-left font-weight-bold">
                
                <li class="list-group-item active">Add Product</li>
                <li class="list-group-item"><a href="/dashboard">Dashboard</a></li>
               
               
              </ul>
              <div class="logout-btn mt-5 mb-5">
                <button type="button" class="btn btn-outline-danger">Log Out</button>
              </div>
            </div>
		</div>
		
		<div class="col-xs-12 col-md-8 col-lg-8 " style="margin-top:-30px">
			<div class="get_in_touch">
			   
				<div class="contact_form_container">
					{!! Form::open(array('url' => 'pushaddproduct','class'=>'','id'=>'signup','role'=>'form')) !!}
					<form action="#" id="contact_form" class="contact_form">
						
						<div>
							
							<label for="contact_company">Product Name</label>
							<input name="name" id="contact_company" placeholder="Product Name" type="text"  class="form-control">
						</div>
						<br>
						<div>
							
							<label for="contact_company">Price</label>
							<input name="price" id="contact_company" placeholder="Price" type="text"  class="form-control">
						</div>
						<br>
						<div>
							
							<label for="contact_company">Description</label>
							<textarea name="description" id="contact_company"  type="text"  class="form-control" rows="3"></textarea>
						</div>
						<br>
						<div class="form-group">
							<label for="contact_compan">Add Featured Image</label>
							<input type="file" class="form-control-file" id="exampleFormControlFile1" name="featured_image" onchange="preview_image(event)">
						</div>
						<br>
						<div class="preview_image mb-2">
							<img id="output_image"/>
						</div>
					   
						
						<button type="submit" class="button contact_button"><span>Submit</span></button>
					   
					</form>
					{!! Form::close() !!} 
				</div>
			</div>
		</div>
</div>

<br><br><br><br><br><br><br>
	
@endsection