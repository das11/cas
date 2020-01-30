<!DOCTYPE html>
<html lang="en">
<head>
<title>CAS Computers</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="CAS Computers project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="{{ URL::asset('site_assets/css/bootstrap4/bootstrap.min.css') }}">
<link href="{{ URL::asset('site_assets/plugins/font-awesome-4.7.0/css/font-awesome.min.css') }}" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="{{ URL::asset('site_assets/plugins/OwlCarousel2-2.2.1/owl.carousel.css') }}">
<link rel="stylesheet" type="text/css" href="{{ URL::asset('site_assets/plugins/OwlCarousel2-2.2.1/owl.theme.default.css') }}">
<link rel="stylesheet" type="text/css" href="{{ URL::asset('site_assets/plugins/OwlCarousel2-2.2.1/animate.css') }}">
<link rel="stylesheet" type="text/css" href="{{ URL::asset('site_assets/css/main_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ URL::asset('site_assets/css/responsive.css') }}">

<!-- LOGIN  -->
<link href="{{ URL::asset('site_assets/plugins/font-awesome-4.7.0/css/font-awesome.min.css') }}" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="{{ URL::asset('site_assets/css/contact.css') }}">

<link rel="stylesheet" type="text/css" href="{{ URL::asset('site_assets/css/contact_responsive.css') }}">

<!-- PRODUCT -->

<link rel="stylesheet" type="text/css" href="{{ URL::asset('site_assets/css/product.css') }}">
<link rel="stylesheet" type="text/css" href="{{ URL::asset('site_assets/css/product_responsive.css') }}">

<!-- CATEGORIES -->
<link rel="stylesheet" type="text/css" href="{{ URL::asset('site_assets/css/categories.css') }}">

<link rel="stylesheet" type="text/css" href="{{ URL::asset('site_assets/css/categories_responsive.css') }}">
</head>
<body>
@include("_particles.header")
    @yield('content')
  @include("_particles.footer")


<script src="{{ URL::asset('site_assets/js/jquery-3.2.1.min.js') }}"></script>
<script src="{{ URL::asset('site_assets/css/bootstrap4/popper.js') }}"></script>
<script src="{{ URL::asset('site_assets/css/bootstrap4/bootstrap.min.js') }}"></script>
<script src="{{ URL::asset('site_assets/plugins/greensock/TweenMax.min.js') }}"></script>
<script src="{{ URL::asset('site_assets/plugins/greensock/TimelineMax.min.js') }}"></script>
<script src="{{ URL::asset('site_assets/plugins/scrollmagic/ScrollMagic.min.js') }}"></script>
<script src="{{ URL::asset('site_assets/plugins/greensock/animation.gsap.min.js') }}"></script>
<script src="{{ URL::asset('site_assets/plugins/greensock/ScrollToPlugin.min.js') }}"></script>
<script src="{{ URL::asset('site_assets/plugins/OwlCarousel2-2.2.1/owl.carousel.js') }}"></script>
<script src="{{ URL::asset('site_assets/plugins/Isotope/isotope.pkgd.min.js') }}"></script>
<script src="{{ URL::asset('site_assets/plugins/easing/easing.js') }}"></script>
<script src="{{ URL::asset('site_assets/plugins/parallax-js-master/parallax.min.js') }}"></script>
<script src="{{ URL::asset('site_assets/js/custom.js') }}"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
<script src="{{ URL::asset('site_assets/js/contact.js') }}"></script>
<script src="{{ URL::asset('site_assets/js/product.js') }}"></script>
<script src="{{ URL::asset('site_assets/js/categories.js') }}"></script>
</body>
</html>