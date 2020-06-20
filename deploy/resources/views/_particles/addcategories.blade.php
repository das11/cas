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
										<li>Categories</li>
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
                    <li class="list-group-item active"><a href="/addcategories" style="color:white">Add Category</a></li>
                    <li class="list-group-item"><a href="/addtags">Add Tags</a></li>
                   
                   
                  </ul>
                  <div class="logout-btn mt-5 mb-5">
                    <button type="button" class="btn btn-outline-danger">Log Out</button>
                  </div>
                </div>
            </div>
    

            <div class="col-xs-12 col-md-9 col-lg-9">
                <div class="row">
                    <div class="col-12 mt-4 mb-4 d-flex justify-content-center">
                        <h1 class="avds_title" style="color : black">Categories</h1>
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
                                    <th scope="col">Slug</th>
                                    <th scope="col">Status</th>
                                    <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                        $c = 1;   
                                    @endphp

                                    @foreach ($categories as $category)
                                    <tr>
                                    <th scope="row">{{ $c }}</th>
                                        <td>{{ $category->category_name }}</td>
                                        <td>
                                            {{ $category->category_slug }}
                                        </td>
                                        <td>
                                                @if ($category->status == 1)
                                                    <span class="badge badge-success">Active</span>
                                                @else
                                                    <span class="badge badge-info">Inactive</span>
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

                            <hr>

                            {!! Form::open(array('url' => 'pushaddcategory','class'=>'','id'=>'signup','role'=>'form', 'enctype' => 'multipart/form-data')) !!}
							<form action="#" id="contact_form" class="contact_form">

                                <div class="form-group row">
									
                                    <input name="name" id="contact_company" placeholder="New Category Name" type="text"  class="form-control col-md-5">

                                    &nbsp;

                                    <input name="slug" id="contact_company" placeholder="Category Slug" type="text"  class="form-control col-md-4">

                                    <a href="" class="col-md-2">     
                                        <button type="button | submit" class="btn btn-success btn-sm"><i class="fa fa-plus"></i> Add New</button>   
                                    </a>

								</div>

							</form>
                        </div>

                    </div>
                </div>
            </div>
    </div>
    </div>		
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</div>





@endsection