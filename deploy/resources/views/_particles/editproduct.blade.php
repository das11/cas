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
							{!! Form::open(array('url' => 'pusheditproduct','class'=>'','id'=>'signup','role'=>'form', 'enctype' => 'multipart/form-data')) !!}
							<form action="#" id="contact_form" class="contact_form">
								
								<div>
									
									<label for="contact_company"><b>Product Name</b></label>
									<br>
										<input name="name" id="contact_company" placeholder="{{ $product->name }}" type="text" value="{{ $product->name }}" class="form-control">
								</div>
								<br>
								<div>
									
									<label for="contact_company"><b>Price</b></label>
									<br>
									<input name="price" id="contact_company" placeholder="Price" type="text" value="{{ $product->price }}" class="form-control">
								</div>
								<br>
								<div>
									
									<label for="contact_company"><b>Description</b></label>
									<br>
									<textarea name="description" id="product_description"  type="text"  class="form-control" rows="3">{{ $product->description }}</textarea>
								</div>
								<br>
								<div class="form-group">
									<label for="contact_compan"><b>Add Featured Image</b></label>
									<br><br>
									<input type="file" class="form-control-file" id="exampleFormControlFile1" name="featured_image" onchange="preview_image(event)">
									<div class="preview_image mb-2">
										<img id="output_image" style="max-height : 200px"/>
									</div>
									
									@if ($product->featured_image != "0")
										<img src="{{ URL::asset('upload/featured_image/'.$product->featured_image.'-b.jpg') }}" height="100" width="100" alt="featured_image" class="img-fluid">
									@endif
								</div>
								<br>
								<div class="form-group">
									<label for="contact_compan"><b>Add Gallery Images</b></label>
									<br><br>
									<input type="file" name="gallery_file[]" multiple id="input-file" class="form-control-file">
								</div>
								<div class="preview_image mb-2">
									<img id="output_image" style="max-height : 200px"/>
								</div>
								<br>
								
								<div class="form-group">
									<div class="details_image">
										<div class="details_image_thumbnails d-flex flex-row align-items-start justify-content-start">
											@foreach ($product_gallery_images as $i => $gallery_img)
												<div class="details_image_thumbnail" data-image="{{ URL::asset('upload/gallery/'.$gallery_img->image_name) }}">
													<img src="{{ URL::asset('upload/gallery/'.$gallery_img->image_name) }}" height="200px" style="object-fit: cover" alt="">
												</div>
											@endforeach
										</div>
									</div>
								</div>

								<div class="form-group row">
									<label for="status" class="col-md-3 col-form-label"><b>Category</b></label>
									<div class="col-md-9">
							
										<select name="category" id="select-status" class="form-control">
											<option value="select">Select</option>
											@foreach ($categories as $category)
												<option value="{{$category->category_name}}">{{$category->category_name}}</option>	
											@endforeach
								
										</select>
									</div>
								</div>

								<div class="form-group row">
									<label for="status" class="col-md-3 col-form-label"><b>Product Tag</b></label>
									<div class="col-md-9">
										<select multiple name="tag[]" id="select-status" class="form-control">
											<option value="select">Select</option>
											@foreach ($tags as $tag)
												@if ( strpos($selectedTags, $tag->tag_name) !== false)
													<option selected value="{{$tag->tag_name}}">{{$tag->tag_name}}</option>	
												@else
													<option value="{{$tag->tag_name}}">{{$tag->tag_name}}</option>
												@endif
												
											@endforeach

										</select>
									</div>
								</div>

								<div class="form-group row">
									<label for="status" class="col-md-3 col-form-label"><b>Exclusive Store</b></label>
									<div class="col-md-9">
							
										<select name="store" id="select-status" class="form-control">
											<option value="0">Select</option>
											<option value="asus_store">Asus</option>
											<option value="mi_store">Mi</option>
											<option value="hp_store">HP World</option>
										</select>
									</div>
								</div>
							
								<div class="form-group row">
									<label for="status" class="col-md-3 col-form-label"><b>Status</b></label>
									<div class="col-md-9">
										
										<select name="availability" id="select-status" class="form-control">
											<option value="Available">Available</option>
											<option value="Unavailable">Unavailable</option>
										</select>
									</div>
								
								</div>
								<div class="form-group row">
									<label for="status" class="col-md-3 col-form-label"><b>Online Status</b></label>
									<div class="col-md-9">
							
										<select name="online" id="select-status" class="form-control">
											<option value="Available">Available</option>
											<option value="Unavailable">Unavailable</option>
										</select>
									</div>
								
								</div>
								<br>
								
								<input name="productid" value="{{ $product->id }}" hidden>
								
								<button type="submit" class="button contact_button"><span>Submit</span></button>
							
							</form>
							{!! Form::close() !!} 
						</div>
					</div>
				</div>
		</div>
	</div>
	<br><br><br><br><br><br><br>
</div>
	
@endsection