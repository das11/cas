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
										<li>Dashboard</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</div>


<!-- Cart Info -->

<div class="cart_info">
	<div class="container">
		<div class="row mt-5">
            <div class="col-12 col-lg-3 justify-content-center">
                <div class="dashsidepanel shadow text-center mb-4" style="background-color : #ededed; border-radius : 10px; box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2); padding : 10px">
                 
                  <ul class="list-group list-group-flush p-3 mt-3 text-left font-weight-bold">
                    
                    <li class="list-group-item"><a href="/addproduct">Add Product</a></li>
                    <li class="list-group-item active">Dashboard</li>
                   
                   
                  </ul>
                  <div class="logout-btn mt-5 mb-5">
                    <button type="button" class="btn btn-outline-danger">Log Out</button>
                  </div>
                </div>
            </div>
    

            <div class="col-xs-12 col-md-9 col-lg-9">
                <div class="row">
                    <div class="col-12 mt-4 mb-4 d-flex justify-content-center">
                        <h1 class="avds_title" style="color : black">All Products</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        
                        <div class="gymlisting p-2">
                            <table class="table table-hover">
                                <thead class="thead">
                                    <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">View</th>
                                    <th scope="col">Status</th>
                                    <th scope="col">Online</th>
                                    <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                        $c = 1;   
                                    @endphp

                                    @foreach ($products as $product)
                                    <tr>
                                    <th scope="row">{{ $c }}</th>
                                        <td>{{$product->name}}</td>
                                        <td>
                                        <a href="/editproduct?id={{$product->id}}"><button type="button" class="btn btn-info btn-sm"> Open</button></a>
                                        </td>
                                        <td>
                                            @if ($product->availability == 1)
                                                <span class="badge badge-success">Published</span>
                                            @else
                                            <span class="badge badge-danger">Not Published</span>
                                            @endif
                                        </td>
                                        <td>
                                            @if ($product->online == 1)
                                                <span class="badge badge-success">Available</span>
                                            @else
                                            <span class="badge badge-danger">Not Available</span>
                                            @endif
                                        </td>
                                        <td>
                                            
                                            <button type="button" class="btn btn-danger btn-sm">Delete</button>   
                                        </td>
                                    </tr>

                                    @php
                                        $c = $c + 1
                                    @endphp

                                    @endforeach
                                </tbody>
                                
                            </table>       
                        </div>

                    </div>
                </div>
            </div>
    </div>
    </div>		
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</div>





@endsection