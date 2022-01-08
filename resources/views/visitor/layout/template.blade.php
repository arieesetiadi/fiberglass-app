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

    <link href="icon/favicon.ico" rel="shortcut icon">
</head>

<body class="counter-scroll">
    <div class="top-bar top-bar-type1">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-12 d-lg-flex align-items-center">
                    <ul class="flat-information flat-information-type1">
                        <li class="phone"><a href="#" title="Phone">+00 568 468 428</a></li>
                        <li class="email"><a href="#" title="Email">softcase@gmail.com</a></li>
                    </ul>
                </div>
                <div class="col-md-4 col-12 d-flex justify-content-md-end justify-content-center">
                    <div id="quik-search-btn" class="show-search">
                        <a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
                    </div>
                    <div class="dlab-quik-search">
                        <form action="#">
                            <input name="search" value="" type="text" class="form-control"
                                placeholder="Type to search">
                            <span id="quik-search-remove"><i class="fa fa-times" aria-hidden="true"></i></span>
                        </form>
                    </div>
                    <div class="language-name">
                        <a href="#">English</a>
                        <ul class="list-chooser">
                            <li><a href="#" class="active">English</a></li>
                            <li><a href="#">France</a></li>
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
                                    <a href="index.html" class="active">Home</a>
                                </li>
                                <li>
                                    <a href="#">Products</a>
                                    <ul class="sub-menu row" style="width: 500px">
                                        @foreach ($categories as $category)
                                            <li class="col-6"><a
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
                                    <a href="#">Contact</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <div class="flat-appointment btn-linear hv-linear-gradient">
                        <a href="#" class="font-style linear-color border-corner">Let’s get started</a>
                    </div>
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
        <div class="overlay"></div>
        <div id="footer-widget" class="footer-widget-type2">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="widget-text">
                            <div class="logo"><img src="{{ asset('assets-3/images/logo/02.png') }}"
                                    alt="images"></div>
                            <p>
                                Ut enim ad minim veniam, quis nostrud commodo consequat. Duis aute irure proident,
                                sunt
                                in culpa.
                            </p>
                            <div class="socials-list">
                                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-skype" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-6">
                        <div class="mg-widget-mobi kcl-widget2">
                            <h3 class="widget widget-title">All IT Services</h3>
                            <div class="widget-services d-sm-flex">
                                <ul class="one-half first">
                                    <li><a href="#">Managed IT</a></li>
                                    <li><a href="#">IT Support</a></li>
                                    <li><a href="#">IT Consultancy</a></li>
                                    <li><a href="#">Cloud Computing</a></li>
                                    <li><a href="#">Cyber Security</a></li>
                                    <li><a href="#">Custom Software</a></li>
                                </ul>
                                <ul class="one-half second">
                                    <li><a href="#">Banking</a></li>
                                    <li><a href="#">Capital Markets</a></li>
                                    <li><a href="#">Enter Technology</a></li>
                                    <li><a href="#">Manufacturing</a></li>
                                    <li><a href="#">Healthcare</a></li>
                                    <li><a href="#">Higher Education</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="mg-widget-mobi kcl-widget">
                            <h3 class="widget widget-title">Lastest News</h3>
                            <div class="widget-latest-news">
                                <ul>
                                    <li>
                                        <div class="thumb-image">
                                            <img src="{{ asset('assets-3/images/footer/01.jpg') }}" alt="images">
                                        </div>
                                        <div class="thumb-content">
                                            <h4 class="thumb-title"><a href="#">Improving lives technology
                                                    lighthouse project</a></h4>
                                            <p class="thumb-day">May 25, 2020</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="thumb-image">
                                            <img src="{{ asset('assets-3/images/footer/02.jpg') }}" alt="images">
                                        </div>
                                        <div class="thumb-content">
                                            <h4 class="thumb-title"><a href="#">Improving lives technology
                                                    lighthouse project</a></h4>
                                            <p class="thumb-day">May 25, 2020</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="thumb-image">
                                            <img src="{{ asset('assets-3/images/footer/03.jpg') }}" alt="images">
                                        </div>
                                        <div class="thumb-content">
                                            <h4 class="thumb-title"><a href="#">Improving lives technology
                                                    lighthouse project</a></h4>
                                            <p class="thumb-day">May 25, 2020</p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="bottom" class="bottom-type3 position-relative">
            <div class="container">
                <div class="bottom-wrap text-center">
                    <div id="copyright">
                        <a href="#">Copyright © 2020 Softo.</a><span class="license"> All Rights
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
</body>

</html>
