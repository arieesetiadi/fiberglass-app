@php
use Illuminate\Support\Facades\DB;
$logo = DB::table('logos')
    ->orderBy('id', 'DESC')
    ->first()->image;
@endphp

<!doctype html>
<html lang="en" class="semi-dark">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    {{-- <link rel="icon" href="assets/images/favicon-32x32.png" type="image/png" /> --}}
    <!--plugins-->
    <link href="{{ asset('assets-2/plugins/vectormap/jquery-jvectormap-2.0.2.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets-2/plugins/simplebar/css/simplebar.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets-2/plugins/perfect-scrollbar/css/perfect-scrollbar.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets-2/plugins/metismenu/css/metisMenu.min.css') }}" rel="stylesheet" />
    <!-- Bootstrap CSS -->
    <link href="{{ asset('assets-2/css/bootstrap.min.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets-2/css/bootstrap-extended.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets-2/css/style.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets-2/css/icons.css') }}" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    {{-- ajax header --}}
    <meta name="csrf-token" content="{{ csrf_token() }}">


    <!-- loader-->
    <link href="{{ asset('assets-2/css/pace.min.css') }}" rel="stylesheet" />

    <!--Theme Styles-->
    <link href="{{ asset('assets-2/css/dark-theme.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets-2/css/light-theme.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets-2/css/semi-dark.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets-2/css/header-colors.css') }}" rel="stylesheet" />

    <title>{{ $title ??= 'Title' }} | Phoenix Fiberglass</title>
</head>

<body>
    <!--start wrapper-->
    <div class="wrapper">
        <!--start top header-->
        <header class="top-header">
            <nav class="navbar navbar-expand gap-3">
                <div class="mobile-toggle-icon fs-3">
                    <i class="bi bi-list"></i>
                </div>
                <div class="top-navbar-right ms-auto">
                    <ul class="navbar-nav align-items-center">
                        <li class="nav-item search-toggle-icon">
                            <a class="nav-link" href="#">
                                <div class="">
                                    <i class="bi bi-search"></i>
                                </div>
                            </a>
                        </li>
                        <li class="nav-item dropdown dropdown-user-setting">
                            <a class="nav-link dropdown-toggle dropdown-toggle-nocaret" href="#"
                                data-bs-toggle="dropdown">
                                <div class="user-setting d-flex align-items-center">
                                    <img src="{{ asset('assets-2/images/avatars/man.png') }}" alt=""
                                        class="rounded-circle" width="35" height="35">
                                </div>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end">
                                <li>
                                    <div class="d-flex align-items-center">
                                        <img src="{{ asset('assets-2/images/avatars/man.png') }}" alt=""
                                            class="rounded-circle" width="54" height="54">
                                        <div class="ms-3">
                                            <h6 class="mb-0 dropdown-user-name">{{ auth()->user()->name }}</h6>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li>
                                    <a class="dropdown-item" href="pages-user-profile.html">
                                        <div class="d-flex align-items-center">
                                            <div class=""><i class="bi bi-person-fill"></i></div>
                                            <div class="ms-3"><span>Profile</span></div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li>
                                    <a class="dropdown-item" href="{{ route('logout') }}">
                                        <div class="d-flex align-items-center">
                                            <div class=""><i class="bi bi-lock-fill"></i></div>
                                            <div class="ms-3"><span>Logout</span></div>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>

        <!--end top header-->

        <!--start sidebar -->
        <aside class="semi-dark sidebar-wrapper" data-simplebar="true">
            <div class="sidebar-header">
                <div>
                    <img src="{{ asset('assets/images/logos/') . '/' . $logo }}" class="logo-icon w-75"
                        alt="logo icon">
                </div>
                <div>
                    <h5 class="logo-text">Phoenix</h5>
                </div>
                <div class="toggle-icon ms-auto"> <i class="bi bi-list"></i>
                </div>
            </div>
            <!--navigation-->
            <ul class="metismenu" id="menu">
                <li>
                    <a href="{{ route('dashboard') }}" class="" aria-expanded="true">
                        <div class="parent-icon"><i class="bi bi-house-fill"></i>
                        </div>
                        <div class="menu-title">Dashboard</div>
                    </a>
                </li>

                <li>
                    <a href="{{ route('produk.index') }}" class="" aria-expanded="true">
                        <div class="parent-icon"><i class="bi bi-box"></i>
                        </div>
                        <div class="menu-title">Produk</div>
                    </a>
                </li>

                <li>
                    <a href="{{ route('kategori.index') }}" class="" aria-expanded="true">
                        <div class="parent-icon"><i class="bi bi-card-checklist"></i>
                        </div>
                        <div class="menu-title">Kategori</div>
                    </a>
                </li>

                <hr>

                <li>
                    <a href="{{ route('settings') }}" class="" aria-expanded="true">
                        <div class="parent-icon"><i class="bi bi-card-checklist"></i>
                        </div>
                        <div class="menu-title">Settings</div>
                    </a>
                </li>
            </ul>
            <!--end navigation-->
        </aside>
        <!--end sidebar -->

        <!--start content-->
        <main class="page-content">
            @yield('content')
        </main>

    </div>
    <!--start overlay-->
    <div class="overlay nav-toggle-icon"></div>
    <!--end overlay-->

    <!--Start Back To Top Button-->
    <a href="javaScript:;" class="back-to-top"><i class='bx bxs-up-arrow-alt'></i></a>
    <!--End Back To Top Button-->
    </div>
    <!--end wrapper-->


    <!-- Bootstrap bundle JS -->
    <script src="{{ asset('assets-2/js/bootstrap.bundle.min.js') }}"></script>
    <!--plugins-->
    <script src="{{ asset('assets-2/js/jquery.min.js') }}"></script>
    {{-- <script src="{{ asset('assets-2/plugins/simplebar/js/simplebar.min.js') }}"></script> --}}
    <script src="{{ asset('assets-2/plugins/metismenu/js/metisMenu.min.js') }}"></script>
    {{-- <script src="{{ asset('assets-2/plugins/perfect-scrollbar/js/perfect-scrollbar.js') }}"></script> --}}
    {{-- <script src="{{ asset('assets-2/plugins/vectormap/jquery-jvectormap-2.0.2.min.js') }}"></script> --}}
    {{-- <script src="{{ asset('assets-2/plugins/vectormap/jquery-jvectormap-world-mill-en.js') }}"></script> --}}
    {{-- <script src="{{ asset('assets-2/js/pace.min.js') }}"></script> --}}
    {{-- <script src="{{ asset('assets-2/plugins/chartjs/js/Chart.min.js') }}"></script>
<script src="{{ asset('assets-2/plugins/chartjs/js/Chart.extension.js') }}"></script> --}}
    {{-- <script src="{{ asset('assets-2/plugins/apexcharts-bundle/js/apexcharts.min.js') }}"></script> --}}
    <!--typeahead-->
    <script src="{{ asset('assets-2/js/typeahead.min.js') }}"></script>
    <script src="{{ asset('assets-2/js/search.js') }}"></script>
    <!--app-->
    <script src="{{ asset('assets-2/js/app.js') }}"></script>
    {{-- <script src="{{ asset('assets-2/js/index2.js') }}"></script> --}}

    {{-- show/hide password --}}
    <script src="{{ asset('assets-2/js/password.js') }}"></script>


</body>

</html>

{{-- <!doctype html>
<html lang="en">

<head>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
    <meta content="Themesdesign" name="author" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="assets/images/favicon.ico">
    
    <!-- Bootstrap Css -->
    <link href="{{ asset('assets/css/bootstrap.min.css') }}" id="bootstrap-style" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="{{ asset('assets/css/icons.min.css') }}" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="{{ asset('assets/css/app.min.css') }}" id="app-style" rel="stylesheet" type="text/css" />
    <!-- Custom Css -->
    <link href="{{ asset('assets/css/custom.css') }}" rel="stylesheet" type="text/css" />
    
    <title>{{ $title ??= 'Title' }} | Phoenix Fiberglass</title>
</head>

<body data-sidebar="dark">

    <!-- Begin page -->
    <div id="layout-wrapper">

        <header id="page-topbar">
            <div class="navbar-header">
                <div class="d-flex">
                    <!-- LOGO -->
                    <div class="navbar-brand-box">
                        <a href="{{ route('dashboard') }}" class="logo logo-dark">
                            <span class="logo-sm">
                                <img src="assets/images/logo-sm-dark.png" alt="logo-sm-dark" height="22">
                            </span>
                            <span class="logo-lg">
                                <img src="assets/images/logo-dark.png" alt="logo-dark" height="20">
                            </span>
                        </a>

                        <a href="{{ route('dashboard') }}" class="logo logo-light">
                            <span class="logo-sm">
                                <img src="assets/images/logo-sm-light.png" alt="logo-sm-light" height="22">
                            </span>
                            <span class="logo-lg">
                                <img src="assets/images/logo-light.png" alt="logo-light" height="20">
                            </span>
                        </a>
                    </div>

                    <button type="button" class="btn btn-sm px-3 font-size-24 header-item waves-effect"
                        id="vertical-menu-btn">
                        <i class="ri-menu-2-line align-middle"></i>
                    </button>
                </div>

                <div class="d-flex">
                    <div class="dropdown d-inline-block user-dropdown">
                        <button type="button" class="btn header-item waves-effect" id="page-header-user-dropdown"
                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img class="rounded-circle header-profile-user"
                                src="{{ asset('assets/images/users/man.png') }}" alt="Header Avatar">
                            <span class="d-none d-xl-inline-block ms-1">{{ auth()->user()->name }}</span>
                            <i class="mdi mdi-chevron-down d-none d-xl-inline-block"></i>
                        </button>
                        <div class="dropdown-menu dropdown-menu-end">
                            <!-- item-->
                            <a class="dropdown-item" href=""><i class="ri-user-line align-middle me-1"></i> Profile</a>
                            <a class="dropdown-item d-block" href="">
                                <i class="ri-settings-2-line align-middle me-1"></i> Settings
                            </a>
                            <div class="dropdown-divider"></div>
                            <form action="{{ route('logout') }}" method="POST">
                                @csrf
                                <button type="submit" class="dropdown-item text-danger" href="/test">
                                    <i class="ri-shut-down-line align-middle me-1 text-danger"></i> Logout
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <!-- ========== Left Sidebar Start ========== -->
        <div class="vertical-menu">
            <div data-simplebar class="h-100">
                <!--- Sidemenu -->
                <div id="sidebar-menu">
                    <!-- Left Menu Start -->
                    <ul class="metismenu list-unstyled" id="side-menu">
                        <li class="menu-title">Menu</li>
                        <li>
                            <form action="{{ route('dashboard') }}" method="GET">
                                <button type="submit" class="btn btn-block w-100 waves-effect">
                                    <div class="d-flex justify-content-start">
                                        <i class="ri-dashboard-line"></i>
                                        <span class="d-inline-block mx-2">Dashboard</span>
                                    </div>
                                </button>
                            </form>
                        </li>
                        <li>
                            <form action="{{ route('produk.index') }}" method="GET">
                                <button type="submit" class="btn btn-block w-100 waves-effect">
                                    <div class="d-flex justify-content-start">
                                        <i class="ri-dashboard-line"></i>
                                        <span class="d-inline-block mx-2">Produk</span>
                                    </div>
                                </button>
                            </form>
                        </li>
                    </ul>
                </div>
                <!-- Sidebar -->
            </div>
        </div>
        <!-- Left Sidebar End -->

        <!-- ============================================================== -->
        <!-- Start right Content here -->
        <!-- ============================================================== -->
        <div class="main-content" id="result">
            @yield('content')
        </div>
        <!-- end main content-->

        <footer class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-6">
                        <script>
                            document.write(new Date().getFullYear())
                        </script> © Nazox.
                    </div>
                    <div class="col-sm-6">
                        <div class="text-sm-end d-none d-sm-block">
                            Crafted with <i class="mdi mdi-heart text-danger"></i> by Themesdesign
                        </div>
                    </div>
                </div>
            </div>
        </footer>

    </div>
    <!-- END layout-wrapper -->

    <!-- Right bar overlay-->
    <div class="rightbar-overlay"></div>

    <!-- JAVASCRIPT -->
    <script src="assets/libs/jquery/jquery.min.js"></script>
    <script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/libs/metismenu/metisMenu.min.js"></script>
    <script src="assets/libs/simplebar/simplebar.min.js"></script>
    <script src="assets/libs/node-waves/waves.min.js"></script>
    <script src="assets/libs/jquery-sparkline/jquery.sparkline.min.js"></script>
    <script src="https://maps.google.com/maps/api/js?key=AIzaSyCtSAR45TFgZjOs4nBFFZnII-6mMHLfSYI"></script>

    <!-- App js -->
    <script src="assets/js/app.js"></script>
    <script src="assets/js/ajax.js"></script>
</body>

</html> --}}
