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

    {{-- SVG's --}}
    <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
        <symbol id="check-circle-fill" fill="currentColor" viewBox="0 0 16 16">
            <path
                d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z" />
        </symbol>
        <symbol id="info-fill" fill="currentColor" viewBox="0 0 16 16">
            <path
                d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z" />
        </symbol>
        <symbol id="exclamation-triangle-fill" fill="currentColor" viewBox="0 0 16 16">
            <path
                d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
        </symbol>
    </svg>

    <!-- loader-->
    <link href="{{ asset('assets-2/css/pace.min.css') }}" rel="stylesheet" />

    <!--Theme Styles-->
    <link href="{{ asset('assets-2/css/dark-theme.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets-2/css/light-theme.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets-2/css/semi-dark.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets-2/css/header-colors.css') }}" rel="stylesheet" />
    <script src="{{ asset('assets-2/js/jquery.min.js') }}"></script>
    <script src="//cdn.ckeditor.com/4.14.1/standard/ckeditor.js"></script>

    <title>{{ $title ??= 'Title' }} | Phoenix Fiberglass</title>
</head>

<body>
    <!--start wrapper-->
    <div class="wrapper">
        {{-- Include tob bar --}}
        @include('admin.layout.topbar')

        {{-- Include side bar --}}
        @include('admin.layout.sidebar')

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
    <script src="{{ asset('assets-2/js/arsip.js') }}"></script>
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
