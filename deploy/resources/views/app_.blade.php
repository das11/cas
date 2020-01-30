<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <title>Parking</title>
    <link rel="icon" href="site_assets/img/favicon.png" />
    {{-- <link rel="shortcut icon" href="{{ URL::asset('site_assets/img/'.config('site_favicon')) }}" type="image/x-icon"> --}}
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="{{ URL::asset('site_assets/css/bootstrap.min.css') }}" />
    <!-- animate CSS -->
    <link rel="stylesheet" href="{{ URL::asset('site_assets/css/animate.css') }}" />
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="{{ URL::asset('site_assets/css/owl.carousel.min.css') }}" />
    <!-- themify CSS -->
    <link rel="stylesheet" href="{{ URL::asset('site_assets/css/themify-icons.css') }}" />
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="{{ URL::asset('site_assets/css/flaticon.css') }}" />
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="{{ URL::asset('site_assets/css/magnific-popup.css') }}" />
    <!-- swiper CSS -->
    <link rel="stylesheet" href="{{ URL::asset('site_assets/css/slick.css') }}" />
    <!-- style CSS -->
    <link rel="stylesheet" href="{{ URL::asset('site_assets/css/style.css') }}" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.css" />

    <link rel="stylesheet" href="{{ URL::asset('site_assets/niceselect/css/nice-select.css') }}" />

   
  </head>
  <body>



  @include("_particles.header")
    @yield('content')
  @include("_particles.footer")




  <script>
    function myFunction() { // Declare a function
      console.log("hey");
    }
 
  myFunction(); // Call the function
  </script>



    <script>

      //Google map link generator
      function generate(){
        var address = document.querySelector('#address').value;

        function slugify(str){
            return str.toLowerCase()
            .replace(/\s+/g, '+') 
          }
        if(address.length != 0){
            var addr = slugify(address)
            var googlemap = 'https://www.google.com/maps/search/?api=1&query=' + addr
            document.querySelector('#googlemap').value = '';
            document.querySelector('#googlemap').value = googlemap;
        }else{
            document.querySelector('#googlemap').value = '';
        }
        
      }

    </script>

  
     <!-- jquery plugins here-->

      <script src="https://use.fontawesome.com/d8775d5df2.js"></script>
    <script src="{{ URL::asset('site_assets/js/jquery-1.12.1.min.js') }}"></script>
    <!-- popper js -->
    <script src="{{ URL::asset('site_assets/js/popper.min.js') }}"></script>
    <!-- bootstrap js -->
    <script src="{{ URL::asset('site_assets/js/bootstrap.min.js') }}"></script>
    <!-- easing js -->
    <script src="{{ URL::asset('site_assets/js/jquery.magnific-popup.js') }}"></script>
    <!-- isotope js -->
    <script src="{{ URL::asset('site_assets/js/isotope.pkgd.min.js') }}"></script>
    <!-- particles js -->
    <script src="{{ URL::asset('site_assets/js/owl.carousel.min.js') }}"></script>
    <script src="{{ URL::asset('site_assets/js/jquery.nice-select.min.js') }}"></script>
    <!-- custom js -->
    <script src="{{ URL::asset('site_assets/js/custom.js') }}"></script>
    <!--register js-->
    {{-- <script src="{{ URL::asset('site_assets/js/contact.js') }}"></script> --}}
    <script src="{{ URL::asset('site_assets/js/jquery.ajaxchimp.min.js') }}"></script>
    <script src="{{ URL::asset('site_assets/js/jquery.form.js') }}"></script>
    <script src="{{ URL::asset('site_assets/js/jquery.validate.min.js') }}"></script>
    <script src="{{ URL::asset('site_assets/js/mail-script.js') }}"></script>
    <!-- register js -->

    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.js"></script>


    <script src="{{ URL::asset('site_assets/niceselect/js/jquery.nice-select.js') }}"></script>

  </body>
</html>