@extends('visitor.layout.template')

@section('content')
    <div class="flat-slider clearfix">
        <div class="rev_slider_wrapper fullwidthbanner-container">
            <div id="rev-slider1" class="rev_slider fullwidthabanner">
                <ul>
                    <!-- Slide 1 -->
                    <li data-transition="random">
                        <!-- Main Image -->
                        <img src="{{ asset('assets-2/images/gallery/01.png') }}" alt="" data-bgposition="center center"
                            data-no-retina>
                        <div class="overlay"></div>

                        <!-- Layers -->
                        <div class="tp-caption tp-resizeme text-white text-one"
                            data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                            data-y="['middle','middle','middle','middle']" data-voffset="['-162','-175','-160','-190']"
                            data-fontsize="['55','55','35','26']" data-lineheight="['82','82','50','38']" data-width="full"
                            data-height="none" data-whitespace="normal" data-transform_idle="o:1;"
                            data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;"
                            data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                            data-mask_in="x:0px;y:[100%];" data-mask_out="x:inherit;y:inherit;" data-start="1000"
                            data-splitin="none" data-splitout="none" data-responsive_offset="on">IT services built</div>

                        <div class="tp-caption tp-resizeme text-white text-two"
                            data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                            data-y="['middle','middle','middle','middle']" data-voffset="['-38','-40','-60','-80']"
                            data-fontsize="['70','70','55','42']" data-lineheight="['82','82','70','54']" data-width="full"
                            data-height="none" data-whitespace="normal" data-transform_idle="o:1;"
                            data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;"
                            data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                            data-mask_in="x:0px;y:[100%];" data-mask_out="x:inherit;y:inherit;" data-start="1600"
                            data-splitin="none" data-splitout="none" data-responsive_offset="on">Specifically for<br>
                            your business.</div>

                        <div class="tp-caption tp-resizeme text-white btn-three"
                            data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                            data-y="['middle','middle','middle','middle']" data-voffset="['83','80','40','40']"
                            data-fontsize="['19','19','17','16']" data-lineheight="['30','30','28','28']" data-width="full"
                            data-height="none" data-whitespace="normal" data-transform_idle="o:1;"
                            data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;"
                            data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                            data-mask_in="x:0px;y:[100%];" data-mask_out="x:inherit;y:inherit;" data-start="2200"
                            data-splitin="none" data-splitout="none" data-responsive_offset="on">Let us provide the
                            support you deserve.</div>
                    </li>
                    <!-- /End Slide 1 -->
                </ul>
            </div>
        </div>
    </div><!-- flat-slider -->

    <section class="features flat-row">
        <div class="container d-lg-flex">
            <div class="row">
                <div class="col-lg-4">
                    <div class="iconbox-features">
                        {{-- <div class="iconbox-icon"> --}}
                        {{-- <span class="icon-shield"></span> --}}
                        <img src="{{ asset('assets-3/images/premium-quality.jpeg') }}" alt="Premium"
                            class="rounded-circle" style="height: 150px">
                        {{-- </div> --}}
                        <div class="my-4">
                            <h3 class="title text-dark font-weight-bold">Premium Quality</h3>
                            <p>
                                Kami menyediakan berbagai produk yang hadir dengan kualitas yang maksimal dan juga premium.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="iconbox-features">
                        {{-- <div class="iconbox-icon"><span class="icon-alarm"></span></div> --}}
                        <img src="{{ asset('assets-3/images/service.jpeg') }}" alt="Guaranteed" class="rounded-circle"
                            style="height: 150px">

                        <div class="my-4">
                            <h3 class="title text-dark font-weight-bold">Reliability Service</h3>
                            <p>
                                Kami menyediakan pelayanan yang terbaik dan maksimal demi memenuhi keinginan dan
                                kebutuhan konsumen.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="iconbox-features">
                        {{-- <div class="iconbox-icon"><span class="icon-alarm"></span></div> --}}
                        <img src="{{ asset('assets-3/images/guaranteed.jpeg') }}" alt="Guaranteed" class="rounded-circle"
                            style="height: 150px">

                        <div class="my-4">
                            <h3 class="title text-dark font-weight-bold">Satisfaction Guaranteed</h3>
                            <p>
                                Kepuasan pelanggan terjamin dengan pelayanan yang maksimal serta kualitas produk yang baik.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section><!-- features -->

    <section class="who-we-are who-we-are-style1">
        <h1 class="text-center text-dark font-weight-bold">MENGAPA MEMILIH KAMI ?</h1>
        <div class="container mt-5">
            <div class="row d-flex align-items-center">
                <div class="col-lg-4 my-5">
                    <center>
                        <img width="100px" src="{{ asset('assets/images/icons/quality.png') }}" alt="">
                        <h4 class="mt-3">Berkualitas</h4>
                    </center>
                </div>
                <div class="col-lg-4 my-5">
                    <center>
                        <img width="100px" src="{{ asset('assets/images/icons/structure.png') }}" alt="">
                    </center>
                </div>
                <div class="col-lg-4 my-5">
                    <center>
                        <img width="100px" src="{{ asset('assets/images/icons/customer.png') }}" alt="">
                        <h4 class="mt-3">Mengutamakan Konsumen</h4>
                    </center>
                </div>
                <div class="col-lg-4 my-5">
                    <center>
                        <img width="100px" src="{{ asset('assets/images/icons/work.png') }}" alt="">
                        <h4 class="mt-3">Profesional</h4>
                    </center>
                </div>
                <div class="col-lg-4 my-5">
                    <center>
                        <img width="100px" src="{{ asset('assets/images/icons/experience.png') }}" alt="">
                        <h4 class="mt-3">Berpengalaman</h4>
                    </center>
                </div>
                <div class="col-lg-4 my-5">
                    <center>
                        <img width="100px" src="{{ asset('assets/images/icons/service.png') }}" alt="">
                        <h4>After Sales Service</h4>
                    </center>
                </div>
            </div>
        </div>
    </section><!-- who-we-are -->

    <section class="fact-type2">
        <h1 class="text-center text-dark font-weight-bold">JUMLAH PENGUNJUNG</h1>
        <div class="container">
            <div class="row my-5">
                <div class="counter counter-type2 col-lg-4 col-sm-12">
                    <center>
                        <div class="content-counter hv-background-before">
                            <div class="icon-count"><span class="icon-portfolio"></span></div>
                            <div class="numb-count-wrap">
                                <span class="numb-count" data-from="0" data-to="{{ $totalVisitors }}"
                                    data-speed="2000" data-inviewport="yes">{{ $totalVisitors }}</span>
                            </div>
                            <div class="name-count">Total</div>
                        </div>
                    </center>
                </div>
                <div class="counter counter-type2 col-lg-4 col-sm-12">
                    <center>
                        <div class="content-counter hv-background-before">
                            <div class="icon-count"><span class="icon-observation"></span></div>
                            <div class="numb-count-wrap">
                                <span class="numb-count" data-from="0" data-to="{{ $todayVisitors }}"
                                    data-speed="2000" data-inviewport="yes">{{ $todayVisitors }}</span>
                            </div>
                            <div class="name-count">Hari Ini</div>
                        </div>
                    </center>
                </div>
                <div class="counter counter-type2 col-lg-4 col-sm-12">
                    <center>
                        <div class="content-counter hv-background-before">
                            <div class="icon-count"><span class="icon-spam"></span></div>
                            <div class="numb-count-wrap">
                                <span class="numb-count" data-from="0" data-to="{{ $monthVisitors }}"
                                    data-speed="2000" data-inviewport="yes">{{ $monthVisitors }}</span>
                            </div>
                            <div class="name-count">Bulan Ini</div>
                        </div>
                    </center>
                </div>
            </div>
        </div>
    </section><!-- fact -->

    <section class="container-fluid px-5 my-5">
        <h1 class="text-center text-dark font-weight-bold">BERITA TERKINI</h1>
        <div class="pb-5">
            <div class="row mt-5">
                @foreach ($news as $new)
                    <div class="col-4">
                        <div class="w-100 p-5 shadow-sm">
                            <div class="">
                                <h5 class="h5 text-dark">{{ $new->title }}</h5>
                                <div>
                                    <img src="{{ asset('assets/images/icons/date.png') }}" alt="Date"
                                        class="d-inline-block" width="20px">
                                    <span class="card-subtitle my-2 text-muted">
                                        {{ now()->make($new->created_at)->format('l, d F Y') }}</span>
                                    |
                                    {{-- <img src="{{ asset('assets/images/icons/tag.png') }}" alt="Date"
                                        class="d-inline-block" width="10px"> --}}
                                    <span>Uncategorized</span>
                                </div>
                                <hr>
                                <div style="overflow: hidden; text-overflow: ellipsis; height: 135px">
                                    {!! $new->body !!}
                                </div>
                                <hr>
                                <a href="{{ route('news-detail', $new->id) }}" class="btn btn-sm btn-primary">Read
                                    More</a>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>

    <section class="cta-type2 parallax parallax3">
        <div class="section-overlay"></div>
        <div class="container position-relative text-center">
            <div class="cta-content position-relative">
                <div class="icon"><span class="icon-support"></span></div>
                <div class="f-text text-white">Are you ready for a better,</div>
                <div class="s-text text-white">More productive business?</div>
                <div class="flat-contact-now btn-linear hv-linear-gradient">
                    <a href="{{ route('kontak') }}" class="font-style linear-color border-corner">Contact Now<span
                            class="icon-arrow-pointing-to-right"></span></a>
                </div>
            </div>
            <div class="circle-border circle-border1 none-767"></div>
            <div class="circle-border circle-border2 none-767"></div>
            <div class="circle-border circle-border3 none-767"></div>
        </div>
    </section><!-- cta -->
@endsection
