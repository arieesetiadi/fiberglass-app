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

    <!-- Chatra {literal} -->
    <script>
        (function(d, w, c) {
            w.ChatraID = '6ZBcuLWc8GivFTrdw';
            var s = d.createElement('script');
            w[c] = w[c] || function() {
                (w[c].q = w[c].q || []).push(arguments);
            };
            s.async = true;
            s.src = 'https://call.chatra.io/chatra.js';
            if (d.head) d.head.appendChild(s);
        })(document, window, 'Chatra');
    </script>
    <!-- /Chatra {/literal} -->
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
                        <div class="col-lg-12" id="google_translate_element">
                        </div>
                        <script type="text/javascript">
                            // <![CDATA[
                            function googleTranslateElementInit() {
                                new google.translate.TranslateElement({
                                    // pageLanguage: 'id',
                                    layout: google.translate.TranslateElement.InlineLayout.SIMPLE
                                }, 'google_translate_element');
                            }
                            // ]]>
                        </script>
                        <script src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit" type="text/javascript">
                        </script>
                        {{-- <a href="#">Indonesian</a>
                        <ul class="list-chooser">
                            <li><a href="#" class="active">Indonesian</a></li>
                            <li><a href="#">English</a></li>
                        </ul> --}}
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
                                    <a href="#">Products</a>
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
                                    <a href="{{ route('investor') }}">Investor Relationship</a>
                                </li>
                                <li>
                                    <a href="{{ route('job') }}">Job Vacancy</a>
                                </li>
                                <li>
                                    <a href="#">About Us</a>
                                    <ul class="sub-menu row" style="width: 350px">
                                        <li class="col-6">
                                            <a href="{{ route('about', 'FAQ') }}">FAQ</a>
                                        </li>
                                        {{-- <li class="col-6">
                                            <a href="{{ route('about', 'Fiberglass') }}">Fiberglass</a>
                                        </li> --}}
                                        {{-- <li class="col-6">
                                            <a href="{{ route('about', 'Yacht') }}">Yacht</a>
                                        </li> --}}
                                        {{-- <li class="col-6">
                                            <a href="{{ route('about', 'Kancing') }}">Kancing</a>
                                        </li> --}}
                                        <li class="col-6">
                                            <a href="{{ route('about', 'Gallery') }}">Gallery</a>
                                        </li>
                                        <li class="col-6">
                                            <a href="{{ route('about', 'Event') }}">Event</a>
                                        </li>
                                        <li class="col-6">
                                            <a href="{{ route('about', 'Our Client') }}">Our Client</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="{{ route('kontak') }}">Contact</a>
                                </li>
                                <li>
                                    <a target="_blank" href="{{ route('download') }}" title="Download Our Brochure">
                                        <i class="fas fa-cloud-download-alt fa-2x"></i>
                                    </a>
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
        {{-- <div class="container">
            <div class="row py-5">
                <div class="col-lg-3">
                    <a href="/" title="Logo" class="mb-2"><img width="100px"
                            src="{{ asset('assets/images/logos/') . '/' . $logo }}" data-width="30" alt="images"
                            data-retina="{{ asset('assets/images/logos/') . '/' . $logo }}"></a>
                </div>
                <div class="col-lg-9 col-md-6 d-flex align-items-center">
                    <h6>
                        <strong>Information</strong> : "Pengunjung hari ini berjumlah <strong>20</strong> orang,
                        pengunjung
                        bulan Januari 2022 berjumlah <strong>100</strong> orang.
                    </h6>
                </div>
            </div>
        </div> --}}
        <div id="bottom" class="bottom-type3 position-relative">
            <div class="container">
                <div class="bottom-wrap text-center">
                    <div id="copyright">
                        <a class="text-secondary" href="/">Copyright © {{ now()->year }} Sinar Sakti Phoenix
                            Fiberglass</a><span class="license"> All Rights
                            Reserved</span>
                    </div>
                </div>
            </div>
        </div>
        {{-- <a id="scroll-top" class="show"></a> --}}
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

        let height = screen.height;
    </script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.4/js/bootstrap.js"
        integrity="sha512-Jp3bCw/xkeMs5f1y6U/ytOnQC+X0Xny7ZZlStxH4BAwUvG0TeCM1ZNnZGreBrnNYbWQQcSknDDtnYybCNSVOVA=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    {{-- <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit">
    </script>

    <script type="text/javascript">
        function googleTranslateElementInit() {
            new google.translate.TranslateElement({
                pageLanguage: 'en',
                layout: google.translate.TranslateElement.InlineLayout.HORIZONTAL
            }, 'google_translate_element');
        }
    </script> --}}

</body>

</html>
