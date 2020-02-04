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
										<li>Log In</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
    </div>
    
    <!-- Contact -->
	
	<div class="contact">
		<div class="container">
			<div class="row">

				<!-- Get in touch -->
				<div class="col-lg-8 contact_col">
					<div class="get_in_touch">
                        <div class="section_title">Sign in</div>
                        <div class="section_subtitle">to continue with us</div>
						<div class="contact_form_container">
						{!! Form::open(array('url' => 'login','class'=>'','id'=>'signup','role'=>'form')) !!}
							<form action="#" id="contact_form" class="contact_form">
                                
						        <div>
									<!-- User ID -->
									<label for="contact_company">EMAIL ADDRESS</label>
									<input name="email" id="contact_company" placeholder="name@address.com" type="email" required data-msg="Please enter your email" class="contact_input">
                                </div>
                                
								<div>
									<!-- Password -->
									<label for="contact_company">PASSWORD</label>
									<input name="password" id="contact_company" placeholder="Password" type="password" required data-msg="Please enter your password" class="contact_input">
									
								</div>
								
                                <button type="submit" class="button contact_button"><span>Log In</span></button>
                                <button type="submit" class="button contact_button"><span>Sign Up</span></button>
							</form>
						{!! Form::close() !!} 
						</div>
					</div>
				</div>
				</div>
			</div>
		</div>
@endsection