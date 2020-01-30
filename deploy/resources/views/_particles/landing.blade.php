@extends('app') @section('content')

<!-- banner part start-->
<section class="banner_part">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-6 offset-lg-1">
                <div class="banner_text">
                    <div class="banner_text_iner">
                        <h1>Crowdsourced Parking</h1>
                        <!-- <a href="#" class="btn_1">Explore Work</a> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- banner part start-->

<!-- about part start-->
{{--
<section class="about_part section_padding">
    <div class="container">
        <div class="row align-items-center justify-content-between">
            <div class="col-md-6">
                <div class="about_part_text">
                    <h5>About Us</h5>
                    <h2>Digital design and development company</h2>
                    <p>
                        There winged grass midst moving earth seed herb fifth you're multiply, you divide cattle stars first cattle was had spirit you're thing, night darkness. Which itself stars creature.
                    </p>
                    <a href="#" class="btn_1">explore us</a>
                </div>
            </div>
            <div class="col-md-6">
                <div class="about_part_img">
                    <img src="site_assets/img/about_part_img.png" alt="" />
                </div>
            </div>
        </div>
    </div>
</section> --}}
<!-- about part end-->

<br>
<br>
<br>
<br>
<br>




<!-- our_connect start-->
<section class="our_service">
  <div class="container">
      <div class="white_field"></div>
      <div id="1" class="black_field">
          <div class="row justify-content-between align-items-center">
              <div class="col-lg-4">
                  <div class="section_tittle">
                      <p>Our Reach</p>
                      <h2>Our Presence</h2>
                  </div>
              </div>
          </div>
          <div class="row">
            <table class="table table-hover">
              <thead class="thead">
                  <tr>
                  <th scope="col">#</th>
                  <th scope="col">Name</th>
                  <th scope="col">Status</th>
                  <th scope="col">Action</th>
                  </tr>
              </thead>
              <tbody>

              @if(isset($parkings))
                @php
                  $c = 1;   
                @endphp
                @foreach ($parkings as $parking)
                  <tr>
                  <th scope="row">{{ $c }}</th>
                    <td>{{ $parking->address }}</td>
                    <td>
                      @if ($parking->active == 1)
                        <span class="badge badge-danger">Booked</span>
                      @else
                        <span class="badge badge-success">Available</span>  
                      @endif

                      {{-- <span class="badge badge-success">{{ ($parking->active == 0) ? "Avaialable" : "Booked" }}</span> --}}
                      {{-- <span class="badge badge-success">{{ ($parking->active == 0) ? "Avaialable" : "Booked" }}</span> --}}
                    </td>
                    <td>
                        <a href="/bookparking?id={{ $parking->id }}"> <button type="button" class="btn btn-success btn-sm">Book</button>
                        <button type="button" class="btn btn-danger btn-sm">Request</button>
                    </td>
                  </tr>
                  @php 
                    $c = $c + 1;
                  @endphp
                @endforeach
              @endif

              </tbody>
          </table>    
          </div>
      </div>
</section>
<!-- our_connect part end-->





<!-- our_connect start-->
<section class="our_service">
    <div class="container">
        <div class="white_field"></div>
        <div id="1" class="black_field">
            <div class="row justify-content-between align-items-center">
                <div class="col-lg-4">
                    <div class="section_tittle">
                        <p>Our Connections</p>
                        <h2>We Connect</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6 col-xl-4">
                        <div class="single_feature">
                            <div class="single_service">
                                <span>01</span>

                                <h4> <i class="fa fa-hand-o-right" aria-hidden="true"></i>
                  Industry
                </h4>
                                <p>
                                    <i class="fa fa-thumb-tack" style="color: #4d376f" aria-hidden="true"></i> Academia for new research papers, projects guidance.
                                    <br>
                                    <br>
                                    <i class="fa fa-thumb-tack" style="color: #4d376f" aria-hidden="true"></i> Students for project implementations, surveys, hiring interns and future employees.
                                    <br>
                                    <br>
                                    <i class="fa fa-thumb-tack" style="color: #4d376f" aria-hidden="true"></i> Freelancers for project implementation, surveys etc.

                                </p>
                                <br>
                                <!-- <i class="fa fa-space-shuttle fa-4x" style="margin-left: 10px; color:#8BC34A;"></i> -->
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xl-4">
                        <div class="single_feature">
                            <div class="single_service">
                                <span>02</span>
                                <h4> <i class="fa fa-hand-o-right" aria-hidden="true"></i> Academia</h4>
                                <p>
                                    <i class="fa fa-thumb-tack" style="color: #4d376f" aria-hidden="true"></i> Industry for technology transfer, project guidance, industrial knowhow.
                                    <br>
                                    <br>
                                    <i class="fa fa-thumb-tack" style="color: #4d376f" aria-hidden="true"></i> Students for teaching, training and guiding them.
                                </p>
                                <br>
                                <!--<i class="fa fa-rss fa-4x" style="margin-left: 10px; color:thistle;"></i>-->
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xl-4">
                        <div class="single_feature">
                            <div class="single_service">
                                <span>03</span>
                                <h4> <i class="fa fa-hand-o-right" aria-hidden="true"></i> Students</h4>
                                <p>
                                    <i class="fa fa-thumb-tack" style="color: #4d376f" aria-hidden="true"></i> Industry for industrial knowhow, projects, internships, jobs.
                                    <br>
                                    <br>
                                    <i class="fa fa-thumb-tack" style="color: #4d376f" aria-hidden="true"></i> Academia for education, training, guidance.
                                </p>
                                <br>
                                <!-- <i class="fa fa-calendar fa-4x" style="margin-left: 10px; color:#2196F3;"></i> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</section>
<!-- our_connect part end-->

<br>
<br>

<!-- our_service start-->
<section class="our_service">
    <div class="container">
        <div class="row justify-content-between align-items-center">
            <div class="col-lg-4">
                <div class="section_tittle">
                    <p>Our Services</p>
                    <h2>We Provide</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-xl-4">
                    <div class="single_feature">
                        <div class="single_service">
                            <span>01</span>
                            <h4>
                  Products
                </h4>
                            <p>
                                There winged grass midst moving earth seed herb fifth you multiply you divide cattle stars first cattle.
                            </p>
                            <br>
                            <i class="fa fa-space-shuttle fa-4x" style="margin-left: 10px; color:#8BC34A;"></i>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-4">
                    <div class="single_feature">
                        <div class="single_service">
                            <span>02</span>
                            <h4>Blogger's Hub</h4>
                            <p>
                                There winged grass midst moving earth seed herb fifth you multiply you divide cattle stars first cattle.
                            </p>
                            <br>
                            <i class="fa fa-rss fa-4x" style="margin-left: 10px; color:thistle;"></i>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-4">
                    <div class="single_feature">
                        <div class="single_service">
                            <span>03</span>
                            <h4>Events</h4>
                            <p>
                                There winged grass midst moving earth seed herb fifth you multiply you divide cattle stars first cattle.
                            </p>
                            <br>
                            <i class="fa fa-calendar fa-4x" style="margin-left: 10px; color:#2196F3;"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</section>
<!-- our_service part end-->

<!-- about part start-->
<section class="about_part section_padding">
    <div class="container">
        <div class="row align-items-center justify-content-between">
            <div class="col-md-10">
                <div class="about_part_text">
                    <h5>Who are we ?</h5>
                    <h2>About Us </h2>
                    <p>
                        We provide expertise and skills to help companies solve business inefficiencies and identify business opportunities. If a process or technology is not working smoothly in a business, we go into the business and dig deep to get to the bottom of the problem. We then propose a suitable solution or soludons, whether it's changing an IT system, the way business processes work or even the work that people do.
                    </p>
                    <a href="#" class="btn_1">Read More</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- about part end-->

<!--::client logo part end::-->
<section class="client_logo">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-12">
                <div class="client_logo_slider owl-carousel d-flex justify-content-between">
                    <div class="single_client_logo">
                        <img src="site_assets/img/logo/Logo1.png" alt="" />
                    </div>
                    <div class="single_client_logo">
                        <img src="site_assets/img/logo/Logo2.png" alt="" />
                    </div>
                    <div class="single_client_logo">
                        <img src="site_assets/img/logo/Logo3.png" alt="" />
                    </div>
                    <div class="single_client_logo">
                        <img src="site_assets/img/logo/Logo4.png" alt="" />
                    </div>
                    <div class="single_client_logo">
                        <img src="site_assets/img/logo/Logo5.png" alt="" />
                    </div>
                    <div class="single_client_logo">
                        <img src="site_assets/img/logo/Logo6.png" alt="" />
                    </div>
                    <div class="single_client_logo">
                        <img src="site_assets/img/logo/Logo1.png" alt="" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--::client logo part end::-->

<br>
<br>
<br>
<br>
<br>
<br>

<!--::review_part end::-->
<div class="review_part padding_bottom" id="testimonial">
    <div class="container">
        <div class="row justify-content-center align-items-center">
            <div class="col-lg-7">
                <div class="section_tittle text-center">
                    <p>Testimonials</p>
                    <h2>What our Client say</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="review_part_text owl-carousel">
                    <div class="singler_eview_part">
                        <div class="client_info">
                            <img src="site_assets/img/client_1.png" alt="" />
                            <h4>Justine Miller</h4>
                            <p>Web developer at Envato</p>
                        </div>
                        <p>
                            “There winged grass midst moving earth seed herb fifth you multiply you divide cattle stars first cattle was had spirit you're thing, night darkness. Which itself stars creature.
                        </p>
                    </div>
                    <div class="singler_eview_part">
                        <div class="client_info">
                            <img src="site_assets/img/client_2.png" alt="" />
                            <h4>Danny Jonson</h4>
                            <p>Creative director at Apple</p>
                        </div>
                        <p>
                            “There winged grass midst moving earth seed herb fifth you multiply you divide cattle stars first cattle was had spirit you're thing, night darkness. Which itself stars creature.
                        </p>
                    </div>
                    <div class="singler_eview_part">
                        <div class="client_info">
                            <img src="site_assets/img/client_1.png" alt="" />
                            <h4>Justine Miller</h4>
                            <p>Web developer at Envato</p>
                        </div>
                        <p>
                            “There winged grass midst moving earth seed herb fifth you multiply you divide cattle stars first cattle was had spirit you're thing, night darkness. Which itself stars creature.
                        </p>
                    </div>
                    <div class="singler_eview_part">
                        <div class="client_info">
                            <img src="site_assets/img/client_2.png" alt="" />
                            <h4>Danny Jonson</h4>
                            <p>Creative director at Apple</p>
                        </div>
                        <p>
                            “There winged grass midst moving earth seed herb fifth you multiply you divide cattle stars first cattle was had spirit you're thing, night darkness. Which itself stars creature.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <img src="site_assets/img/animate_icon/icon_3.png" class="animation_icon_3" alt="">
</div>
<!--::review_part end::-->
{{--
<!-- our_project part start-->
<section class="our_project section_padding" id="portfolio">
    <div class="container">
        <div class="row justify-content-between align-items-center">
            <div class="col-lg-4">
                <div class="section_tittle">
                    <p>our project</p>
                    <h2>Our Projects</h2>
                </div>
            </div>
            <div class="col-lg-5 col-md-6">
                <div class="filters portfolio-filter project_menu_item">
                    <ul>
                        <li class="active" data-filter="*">All</li>
                        <li data-filter=".buildings">Web Design</li>
                        <li data-filter=".rebuild">Mobile App</li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="more_btn d-none d-md-block">
                    <a href="#" class="more_btn_iner">more projects</a>
                </div>
            </div>
        </div>
        <div class="filters-content">
            <div class="row justify-content-between portfolio-grid">
                <div class="col-lg-6 col-sm-6 all buildings">
                    <div class="single_our_project">
                        <div class="single_offer">
                            <img src="site_assets/img/project_1.png" alt="offer_img_1" />
                            <div class="hover_text">
                                <p>Web development</p>
                                <a href="#"><h2>Web design & development</h2></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-sm-6 all rebuild">
                    <div class="single_our_project">
                        <div class="single_offer">
                            <img src="site_assets/img/project_2.png" alt="offer_img_1" />
                            <div class="hover_text">
                                <p>Web design</p>
                                <a href="#"><h2>Web design & development</h2></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <img src="site_assets/img/animate_icon/icon_2.png" class="animation_icon_2" alt="">
</section>
<!-- our_project part end-->

<!-- about part start-->
<section class="creative padding_bottom">
    <div class="container-fluid">
        <div class="row align-items-center justify-content-start">
            <div class="col-md-6 col-xl-6">
                <div class="creative_img">
                    <img src="site_assets/img/creative_img.png" alt="" />
                </div>
            </div>
            <div class="col-md-6 col-xl-4">
                <div class="creative_part_text">
                    <h2>We work hard and think creatively</h2>
                    <p>
                        There winged grass midst moving earth seed herb fifth you multiply you divide cattle stars first cattle.
                    </p>
                    <span>“There winged grass midst moving earth seed herb fifth you
                multiply you divide cattle stars first cattle.</span
              >
              <a
                href="https://www.youtube.com/watch?v=tDiJnd7SM2Y"
                class="popup-youtube"
                ><i class="ti-control-play"></i> See how we work</a
              >
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- about part end-->

    <!--::cta_part start::-->
    <div class="cta_part">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-7">
            <div class="cta_iner">
              <h1>Let’s create something awesome together</h1>
              <a href="#" class="btn_1">Discuss project</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--::cta_part end::--> --}}

    @endsection