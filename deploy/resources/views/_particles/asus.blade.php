@extends('layouts.app')
@section('content')
	<div class="home">
		<div class="home_container">
			<div class="home_background" style="background-image:url(site_assets/images/categories.jpg)"></div>
			<div class="home_content_container">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="home_content">
								<div class="home_title">Asus Exclusive<span>.</span></div>
								<!-- <div class="home_text"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam a ultricies metus. Sed nec molestie eros. Sed viverra velit venenatis fermentum luctus.</p></div> -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Products -->

	<div class="products">
		<div class="container">
			<div class="row">
				<div class="col">

					<div class="search_panel trans_300">
						<div class="container">
							<div class="row">
								<div class="col">
									<div class="search_panel_content d-flex flex-row align-items-center justify-content-end">
										{!! Form::open(array('url' => '/search','class'=>'','id'=>'signup','role'=>'form', 'enctype' => 'multipart/form-data')) !!}
										<form action="#">
											<input type="text | submit" name="key" class="search_input" placeholder="Search" required="required">
										</form>
										{!! Form::close() !!} 
									</div>
								</div>
							</div>
						</div>
					</div>
				
				</div>
			</div>


			<div class="row">
				<div class="col">
					
					<div class="product_grid">

						@foreach ($products as $product)
							<!-- Product -->
							<div class="product">
							<div class="product_image">
								<a href="/product?id={{ $product->id }}">
									<img src="{{URL::asset("upload/featured_image/". $product->featured_image . "-b.jpg")}}" height="250px"
								style="object-fit: cover" alt="">
								</a>
							</div>
							<div class="product_extra product_new"><a href="/product?id={{ $product->id }}">New</a></div>
								<div class="product_content">
									<div class="product_title"><a href="/product?id={{ $product->id }}">{{ $product->name }}</a></div>
								<div class="product_price">{{ $product->price }}</div>
								</div>
							</div>
						@endforeach

						{{-- <div class="product">
							<div class="product_image"><img src="site_assets/images/product_2.jpg" alt=""></div>
							<div class="product_extra product_sale"><a href="categories.html">Sale</a></div>
							<div class="product_content">
								<div class="product_title"><a href="product.html">Smart Phone</a></div>
								<div class="product_price">$520</div>
							</div>
						</div>

						<div class="product">
							<div class="product_image"><img src="site_assets/images/product_3.jpg" alt=""></div>
							<div class="product_content">
								<div class="product_title"><a href="product.html">Smart Phone</a></div>
								<div class="product_price">$710</div>
							</div>
						</div>

						<div class="product">
							<div class="product_image"><img src="site_assets/images/product_4.jpg" alt=""></div>
							<div class="product_content">
								<div class="product_title"><a href="product.html">Smart Phone</a></div>
								<div class="product_price">$330</div>
							</div>
						</div>

						<div class="product">
							<div class="product_image"><img src="site_assets/images/product_5.jpg" alt=""></div>
							<div class="product_content">
								<div class="product_title"><a href="product.html">Smart Phone</a></div>
								<div class="product_price">$170</div>
							</div>
						</div>

						<div class="product">
							<div class="product_image"><img src="site_assets/images/product_6.jpg" alt=""></div>
							<div class="product_extra product_hot"><a href="categories.html">Hot</a></div>
							<div class="product_content">
								<div class="product_title"><a href="product.html">Smart Phone</a></div>
								<div class="product_price">$240</div>
							</div>
						</div>

						<div class="product">
							<div class="product_image"><img src="site_assets/images/product_7.jpg" alt=""></div>
							<div class="product_content">
								<div class="product_title"><a href="product.html">Smart Phone</a></div>
								<div class="product_price">$70</div>
							</div>
						</div>

						<div class="product">
							<div class="product_image"><img src="site_assets/images/product_8.jpg" alt=""></div>
							<div class="product_extra product_sale"><a href="categories.html">Hot</a></div>
							<div class="product_content">
								<div class="product_title"><a href="product.html">Smart Phone</a></div>
								<div class="product_price">$490</div>
							</div>
						</div>

						<div class="product">
							<div class="product_image"><img src="site_assets/images/product_9.jpg" alt=""></div>
							<div class="product_extra product_sale"><a href="categories.html">Hot</a></div>
							<div class="product_content">
								<div class="product_title"><a href="product.html">Smart Phone</a></div>
								<div class="product_price">$410</div>
							</div>
						</div>

						<div class="product">
							<div class="product_image"><img src="site_assets/images/product_10.jpg" alt=""></div>
							<div class="product_extra product_sale"><a href="categories.html">Hot</a></div>
							<div class="product_content">
								<div class="product_title"><a href="product.html">Smart Phone</a></div>
								<div class="product_price">$365</div>
							</div>
						</div>

						<div class="product">
							<div class="product_image"><img src="site_assets/images/product_11.jpg" alt=""></div>
							<div class="product_extra product_sale"><a href="categories.html">Hot</a></div>
							<div class="product_content">
								<div class="product_title"><a href="product.html">Smart Phone</a></div>
								<div class="product_price">$195</div>
							</div>
						</div>

						<div class="product">
							<div class="product_image"><img src="site_assets/images/product_12.jpg" alt=""></div>
							<div class="product_extra product_sale"><a href="categories.html">Hot</a></div>
							<div class="product_content">
								<div class="product_title"><a href="product.html">Smart Phone</a></div>
								<div class="product_price">$580</div>
							</div>
						</div> --}}

					</div>
					<div class="product_pagination">
						<ul>
							<li class="active"><a href="#">01.</a></li>
							<li><a href="#">02.</a></li>
							<li><a href="#">03.</a></li>
						</ul>
					</div>
						
				</div>
			</div>
		</div>
	</div>
    @endsection