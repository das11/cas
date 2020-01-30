@extends('app')
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
							<form action="#" id="contact_form" class="contact_form">
                                
						        <div>
									<!-- User ID -->
									<label for="contact_company">EMAIL ADDRESS</label>
									<input type="text" id="contact_company" class="contact_input">
                                </div>
                                <div>
									<!-- Password -->
									<label for="contact_company">PASSWORD</label>
									<input type="text" id="contact_company" class="contact_input">
								</div>
								
                                <button class="button contact_button"><span>Log In</span></button>
                                <button class="button contact_button"><span>Sign Up</span></button>
							</form>
						</div>
					</div>
				</div>
@endsection