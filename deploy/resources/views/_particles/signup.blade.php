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
										<li>Sign Up</li>
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
                        <div class="section_title">Sign up</div>
                        <div class="section_subtitle">to continue with us</div>
						<div class="contact_form_container">
						{!! Form::open(array('url' => 'signup','class'=>'','id'=>'signup','role'=>'form')) !!}
							<form action="#" id="contact_form" class="contact_form">
                                <div class="row">
									<div class="col-xl-6">
										<!-- Name -->
										<label for="contact_name">FIRST NAME*</label>
										
										<input name="first_name" id="contact_name" type="text" placeholder="First Name" autocomplete="off" required data-msg="Please enter your First Name" class="contact_input" required="required">
									</div>
									<div class="col-xl-6 last_name_col">
										<!-- Last Name -->
										<label for="contact_last_name">LAST NAME*</label>
										<input name="last_name" id="contact_name" type="text" placeholder="Last Name" autocomplete="off" required data-msg="Please enter your Last Name" class="contact_input" required="required">
									</div>
								</div>
                                
						        <div>
									<!-- User ID -->
									<label for="contact_company">EMAIL ADDRESS</label>
									<input name="email" type="text" id="contact_company" class="contact_input" placeholder="name@address.com" required data-msg="Please enter your email">
									
                                </div>
                                <div>
									<!-- Password -->
									<label for="contact_company">PASSWORD</label>
									
									<input name="password" id="contact_company" placeholder="Password" type="password" required data-msg="Please enter your password" class="contact_input">
                                </div>
								<div>
                                        <label for="loginPassword2" class="form-label"> CONFIRM YOUR PASSWORD</label>
                                        <input name="password2" id="contact_company" placeholder=" Confirm Password" type="password" required data-msg="Please enter your password" class="contact_input">
                                </div>
                                <div>
									<!-- Phone Number -->
									<label for="contact_company">PHONE NUMBER</label>
									<input name="contact" id="contact_company" type="number"  placeholder="Phone Number"  class="contact_input">
								</div>
								
                               
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