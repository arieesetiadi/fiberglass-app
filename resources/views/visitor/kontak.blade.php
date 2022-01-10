@extends('visitor.layout.template')

@section('content')
    <div class="page-title position-relative clearfix bg-primary">
        {{-- <img src="{{ asset('assets-2/images/gallery/01.png') }}" alt="Banner"> --}}
        <div class="section-overlay"></div>
        <div class="container">
            <div class="breadcrumbs position-relative">
                <div class="breadcrumbs-wrap">
                    <h1 class="title">Kontak</h1>
                    <ul class="breadcrumbs-inner">
                        <li><a href="/">Home</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div><!-- page-title -->
    <div class="contact flat-row-half">
        <div class="container">
            <div class="row">
                <div class="col-lg-5">
                    <div class="get-in-touch get-in-touch-type1">
                        <div class="text-contact">Jangan ragu untuk <a>menghubungi kami untuk informasi
                                apapun.</a></div>
                        <div class="info-contact">
                            <p>
                                <a target="_blank" href="https://www.youtube.com">
                                    <img width="35px" src="{{ asset('assets/images/icons/youtube.png') }}" alt="Youtube">
                                    Youtube
                                </a>
                            </p>
                            <p>
                                <a target="_blank" href="https://www.twitch.com">
                                    <img width="35px" src="{{ asset('assets/images/icons/twitch (1).png') }}"
                                        alt="Twitch">
                                    Twitch
                                </a>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-7 mb-5">
                    <form id="contactform" action="./contact/contact-process.php" method="post"
                        class="form-leave-comment form-submit">
                        <div class="text-wrap d-md-flex clearfix">
                            <div class="w-left position-relative">
                                <input type="text" name="firstname" id="firstname" value="" class="firstname"
                                    placeholder="Nama">
                                <span class="icon-user"></span>
                            </div>
                            <div class="w-right position-relative">
                                <input type="text" name="email" id="email" value="" class="email"
                                    placeholder="Email">
                                <span class="fa fa-envelope" aria-hidden="true"></span>
                            </div>
                        </div>
                        <div class="message-wrap mg-b50">
                            <textarea name="message" id="comment-message" rows="8" placeholder="Isi pesan"
                                required="required"></textarea>
                        </div>
                        <div class="flat-send-message btn-linear hv-linear-gradient text-center">
                            <button name="submit" type="submit" class="submit font-style linear-color border-corner"
                                id="submit">Kirim Pesan</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <hr>
@endsection
