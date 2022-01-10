@php
use Illuminate\Support\Facades\DB;
$logo = DB::table('logos')
    ->orderBy('id', 'DESC')
    ->first()->image;
@endphp
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <title>{{ $title ??= 'Title' }} | Phoenix Fiberglass</title>

    <!-- Mobile Specific Metas-->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- Bootstrap-->
    <link rel="stylesheet" href="{{ asset('assets-3/stylesheet/bootstrap.css') }}">

    <!-- Template Style-->
    <link rel="stylesheet" href="{{ asset('assets-3/stylesheet/font-awesome.css') }}">
    <link rel="stylesheet" href="{{ asset('assets-3/stylesheet/owl.theme.default.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets-3/stylesheet/owl.carousel.min.css') }}">
    {{-- <link rel="stylesheet" href="{{ asset('assets-3/stylesheet/animate.css') }}"> --}}
    <link rel="stylesheet" href="{{ asset('assets-3/stylesheet/icomoon.css') }}">
    <link rel="stylesheet" href="{{ asset('assets-3/stylesheet/jquery-fancybox.css') }}">
    <link rel="stylesheet" href="{{ asset('assets-3/stylesheet/style.css') }}">
    <link rel="stylesheet" href="{{ asset('assets-3/stylesheet/shortcodes.css') }}">
    <link rel="stylesheet" href="{{ asset('assets-3/stylesheet/responsive.css') }}">
    <link rel="stylesheet" href="{{ asset('assets-3/stylesheet/flexslider.css') }}">
    <link rel="stylesheet" href="{{ asset('assets-3/rev-slider/css/layers.css') }}">
    <link rel="stylesheet" href="{{ asset('assets-3/rev-slider/css/navigation.css') }}">
    <link rel="stylesheet" href="{{ asset('assets-3/rev-slider/css/settings.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
        integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>
        .mySlides {
            display: none
        }

        article p {
            text-align: justify;
            line-height: 25px;
        }

    </style>
</head>

<body class="counter-scroll">
    <div class="top-bar top-bar-type1">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-12 d-lg-flex align-items-center">
                    <ul class="flat-information flat-information-type1">
                        <li class="email"><a href="{{ route('login') }}" title="Email">Administrator</a></li>
                    </ul>
                </div>
                <div class="col-md-4 col-12 d-flex justify-content-md-end justify-content-center">
                    <div class="language-name">
                        <a href="#">Indonesian</a>
                        <ul class="list-chooser">
                            <li><a href="#" class="active">Indonesian</a></li>
                            <li><a href="#">English</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- top-bar -->
    <header id="header" class="header header-type1 bg-header-s1 bg-color">
        <div class="container">
            <div class="flex-header d-flex">
                <div id="logo" class="logo d-flex align-items-center justify-content-start">
                    <a href="/" title="Logo"><img src="{{ asset('assets/images/logos/') . '/' . $logo }}"
                            data-width="60" alt="images"
                            data-retina="{{ asset('assets/images/logos/') . '/' . $logo }}"></a>
                </div>
                <div class="content-menu d-flex align-items-center justify-content-end">
                    <div class="nav-wrap">
                        <div class="btn-menu"><span></span></div>
                        <nav id="mainnav" class="mainnav">
                            <ul class="menu">
                                <li>
                                    <a href="/">Home</a>
                                </li>
                                <li>
                                    <a href="#">Produk</a>
                                    <ul class="sub-menu row" style="width: 500px">
                                        @foreach ($categories as $category)
                                            <li class="col-6">
                                                <a
                                                    href="{{ route('produk.kategori', $category->id) }}">{{ $category->name }}</a>
                                            </li>
                                        @endforeach
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Case study</a>
                                    <ul class="sub-menu">
                                        <li><a href="#">Case study</a></li>
                                        <li><a href="#">Case details</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Blog</a>
                                    <ul class="sub-menu">
                                        <li><a href="#">Blog</a></li>
                                        <li><a href="#">Blog details</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Pages</a>
                                    <ul class="sub-menu">
                                        <li><a href="#">About</a></li>
                                        <li><a href="#">FAQ</a></li>
                                        <li><a href="#">Team members</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="{{ route('kontak') }}">Kontak</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    {{-- <div class="flat-appointment btn-linear hv-linear-gradient">
                        <a href="#" class="font-style linear-color border-corner">Let’s get started</a>
                    </div> --}}
                </div>
            </div>
        </div>
    </header><!-- header -->

    {{-- Content --}}
    <div>
        @yield('content')
    </div>
    {{-- End Content --}}

    <footer id="footer" class="footer footer-bg-3">
        <div id="bottom" class="bottom-type3 position-relative">
            <div class="container">
                <div class="bottom-wrap text-center">
                    <div id="copyright">
                        <a href="/">Copyright © {{ now()->year }} Sinar Sakti Phoenix Fiberglass</a><span
                            class="license"> All Rights
                            Reserved</span>
                    </div>
                </div>
            </div>
        </div>
        <a id="scroll-top" class="show"></a>
    </footer><!-- footer -->

    <script src="{{ asset('assets-3/javascript/jquery.min.js') }}"></script>
    <script src="{{ asset('assets-3/javascript/parallax.js') }}"></script>
    <script src="{{ asset('assets-3/javascript/plugins.js') }}"></script>
    <script src="{{ asset('assets-3/javascript/jquery-ui.js') }}"></script>
    <script src="{{ asset('assets-3/javascript/gmap3.min.js') }}"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAOvgMzMavm0loFdwqNrzzVh42X_-lDZ3w"></script>
    <script src="{{ asset('assets-3/javascript/jquery-isotope.js') }}"></script>
    <script src="{{ asset('assets-3/javascript/owl.carousel.min.js') }}"></script>
    <script src="{{ asset('assets-3/javascript/equalize.min.js') }}"></script>
    <script src="{{ asset('assets-3/javascript/jquery-fancybox.js') }}"></script>
    <script src="{{ asset('assets-3/javascript/jquery-countTo.js') }}"></script>
    <script src="{{ asset('assets-3/javascript/flex-slider.min.js') }}"></script>
    <script src="{{ asset('assets-3/javascript/wow.min.js') }}"></script>
    <script src="{{ asset('assets-3/javascript/jquery-validate.js') }}"></script>
    <script src="{{ asset('assets-3/javascript/main.js') }}"></script>

    <!-- slider -->
    <script src="{{ asset('assets-3/rev-slider/js/jquery.themepunch.tools.min.js') }}"></script>
    <script src="{{ asset('assets-3/rev-slider/js/jquery.themepunch.revolution.min.js') }}"></script>
    <script src="{{ asset('assets-3/javascript/rev-slider.js') }}"></script>

    <!-- Load Extensions only on Local File Systems ! The following part can be removed on Server for On Demand Loading -->
    <script src="{{ asset('assets-3/rev-slider/js/extensions/extensionsrevolution.extension.actions.min.js') }}">
    </script>
    <script src="{{ asset('assets-3/rev-slider/js/extensions/extensionsrevolution.extension.carousel.min.js') }}">
    </script>
    <script src="{{ asset('assets-3/rev-slider/js/extensions/extensionsrevolution.extension.kenburn.min.js') }}">
    </script>
    <script src="{{ asset('assets-3/rev-slider/js/extensions/extensionsrevolution.extension.layeranimation.min.js') }}">
    </script>
    <script src="{{ asset('assets-3/rev-slider/js/extensions/extensionsrevolution.extension.migration.min.js') }}">
    </script>
    <script src="{{ asset('assets-3/rev-slider/js/extensions/extensionsrevolution.extension.navigation.min.js') }}">
    </script>
    <script src="{{ asset('assets-3/rev-slider/js/extensions/extensionsrevolution.extension.parallax.min.js') }}">
    </script>
    <script src="{{ asset('assets-3/rev-slider/js/extensions/extensionsrevolution.extension.slideanims.min.js') }}">
    </script>
    <script src="{{ asset('assets-3/rev-slider/js/extensions/extensionsrevolution.extension.video.min.js') }}"></script>

    <script>
        var slideIndex = 1;
        showDivs(slideIndex);

        function plusDivs(n) {
            showDivs(slideIndex += n);
        }

        function currentDiv(n) {
            showDivs(slideIndex = n);
        }

        function showDivs(n) {
            var i;
            var x = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("demo");
            if (n > x.length) {
                slideIndex = 1
            }
            if (n < 1) {
                slideIndex = x.length
            }
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" w3-red", "");
            }
            x[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " w3-red";
        }
    </script>
</body>

</html>
