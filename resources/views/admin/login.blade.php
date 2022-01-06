@php
use Illuminate\Support\Facades\DB;
$logo = DB::table('logos')
    ->orderBy('id', 'DESC')
    ->first()->image;
@endphp

<!doctype html>
<html lang="en">

<head>

    <meta charset="utf-8" />
    <title>Login | Phoenix Fiberglass</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
    <meta content="Themesdesign" name="author" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="{{ asset('assets/images/favicon.ico') }}">

    <!-- Bootstrap Css -->
    <link href="{{ asset('assets/css/bootstrap.min.css') }}" id="bootstrap-style" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="{{ asset('assets/css/icons.min.css') }}" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="{{ asset('assets/css/app.min.css') }}" id="app-style" rel="stylesheet" type="text/css" />

</head>

<body class="auth-body-bg">
    <div class="home-btn d-none d-sm-block">
        <a href="index.html"><i class="mdi mdi-home-variant h2 text-white"></i></a>
    </div>
    <div>
        <div class="container-fluid p-0">
            <div class="row g-0 d-flex justify-content-center">
                <div class="col-lg-5 shadow">
                    <div class="authentication-page-content p-4 d-flex align-items-center min-vh-100">
                        <div class="w-100">
                            <div class="row justify-content-center">
                                <div class="col-lg-9">
                                    <div>
                                        <div class="text-center">
                                            <div>
                                                <a href="/" class="logo">
                                                    <img src="{{ asset('assets/images/logos/') . '/' . $logo }}"
                                                        height="65" alt="logo" class="rounded">
                                                </a>
                                            </div>
                                            <h4 class="font-size-18 mt-5">Selamat Datang !</h4>
                                            <p class="text-muted">Admin Sinar Sakti Phoenix Fiberglass.</p>
                                        </div>

                                        <div class="p-2 mt-5">
                                            @if (session('status'))
                                                <span class="text-danger d-block mb-2">{{ session('status') }}</span>
                                            @endif
                                            <form action="/login" method="POST">
                                                @csrf
                                                <div class="mb-3 auth-form-group-custom mb-4">
                                                    <i class="ri-user-2-line auti-custom-input-icon"></i>
                                                    <label for="username">Username</label>
                                                    <input name="username" type="text" class="form-control"
                                                        id="username" placeholder="Masukan username" required>
                                                </div>
                                                <div class="mb-3 auth-form-group-custom mb-4">
                                                    <i class="ri-lock-2-line auti-custom-input-icon"></i>
                                                    <label for="userpassword">Password</label>
                                                    <input name="password" type="password" class="form-control"
                                                        id="userpassword" placeholder="Masukan password" required>
                                                </div>

                                                <div class="form-check">
                                                    <input name="rememberMe" type="checkbox" class="form-check-input"
                                                        id="customControlInline">
                                                    <label class="form-check-label" for="customControlInline">Remember
                                                        me</label>
                                                </div>

                                                <div class="mt-4 text-center">
                                                    <button class="btn btn-primary w-md waves-effect waves-light"
                                                        type="submit">Log In</button>
                                                </div>
                                            </form>
                                        </div>

                                        <div class="mt-5 text-center">
                                            <p>Belum memiliki akun ? <a href="/daftar" class="fw-medium text-primary">
                                                    Daftar </a> </p>
                                            <p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <!-- JAVASCRIPT -->
    <script src="{{ asset('assets/libs/jquery/jquery.min.js') }}"></script>
    <script src="{{ asset('assets/libs/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('assets/libs/metismenu/metisMenu.min.js') }}"></script>
    <script src="{{ asset('assets/libs/simplebar/simplebar.min.js') }}"></script>
    <script src="{{ asset('assets/libs/node-waves/waves.min.js') }}"></script>

    <script src="{{ asset('assets/js/app.js') }}"></script>

</body>

</html>
