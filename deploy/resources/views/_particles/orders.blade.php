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
										<li>Orders</li>
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
                    <li class="list-group-item"><a href="/dashboard">Dashboard</a></li>
                    <li class="list-group-item"><a href="/addcategories">Add Category</a></li>
                    <li class="list-group-item"><a href="/addtags">Add Tags</a></li>
                    <li class="list-group-item active"><a href="/orders" style="color:white">Orders</a></li>
                   
                   
                  </ul>
                  <div class="logout-btn mt-5 mb-5">
                    <button type="button" class="btn btn-outline-danger">Log Out</button>
                  </div>
                </div>
            </div>
    

            <div class="col-xs-12 col-md-9 col-lg-9">
                <div class="row">
                    <div class="col-12 mt-4 mb-4 d-flex justify-content-center">
                        <h1 class="avds_title" style="color : black">All Orders</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        
                        <div class="gymlisting p-2">
                            <table class="table table-hover">
                                <thead class="thead">
                                    <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Order ID</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">View</th>
                                    <th scope="col">Status</th>
                                    <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                        $c = ($orders->perPage() * ($orders->currentPage() - 1)) + 1;   
                                    @endphp

                                    @foreach ($orders as $order)
                                    <tr>
                                    <th scope="row">{{ $c }}</th>
                                        <td>{{ $order->id }}</td>
                                        <td>{{ $order->name}}</td>
                                        <td>
                                            <a href="/editorder?id={{$order->id}}"><button type="button" class="btn btn-info btn-sm"> Open</button></a>
                                        </td>
                                        <td>
                                            @if ($order->status == 1)
                                                <span class="badge badge-success">Success</span>
                                            @else
                                                <span class="badge badge-danger">Dormant</span>
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
                            
                            {{ $orders->links() }} 

                            
                        </div>

                    </div>
                </div>
            </div>
    </div>
    </div>		
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</div>





@endsection