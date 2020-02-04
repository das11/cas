@extends('layouts.app')
@section('content')

<div class="row mt-5" style="padding-top:8%">
        <div class="col-12 col-lg-3 d-flex justify-content-center">
            <div class="dashsidepanel shadow text-center mb-4">
             
              <ul class="list-group list-group-flush p-3 mt-3 text-left font-weight-bold">
                
                <li class="list-group-item active">Add Product</li>
                <li class="list-group-item">Dashboard</li>
               
               
              </ul>
              <div class="logout-btn mt-5 mb-5">
                <button type="button" class="btn btn-outline-danger">Log Out</button>
              </div>
            </div>
        </div>
	
<div class="col-xs-12 col-md-9 col-lg-9">
                <div class="row">
                    <div class="col-12 mt-4 mb-4 d-flex justify-content-center">
                        <h1 class="text-dark">All Products</h1>
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
                                    
                                    <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <tr> 
                                    <th scope="row">1</th>
                                    <td>Samsung S9</td>
                                    <td>
                                        <a href="/"><button type="button" class="btn btn-info btn-sm"> Open</button></a>
                                    </td>
                                    <td><span class="badge badge-success">Unavailable</span></td>
                                    <td>
                                       
                                        <button type="button" class="btn btn-danger btn-sm">Delete</button>
                                    </td>
                                    </tr>
                                    <tr>
                                    <th scope="row">2</th>
                                    <td>Iphone Xr</td>
                                    <td>
                                        <a href="/"><button type="button" class="btn btn-info btn-sm"> Open</button></a>
                                    </td>
                                    <td><span class="badge badge-danger">Available</span></td>
                                    <td>
                                       
                                        <button type="button" class="btn btn-danger btn-sm">Delete</button>   
                                    </td>
                                    </tr> 

                                </tbody>
                               
                            </table>       
                        </div>

                    </div>
                </div>
            </div>





@endsection