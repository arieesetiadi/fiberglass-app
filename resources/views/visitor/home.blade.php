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
            <div class="iconbox-features hv-background-before">
                <div class="iconbox-icon"><span class="icon-shield"></span></div>
                <div class="iconbox-content">
                    <h3 class="title">Protect Business</h3>
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                        labore.
                    </p>
                    <div class="discover-more">
                        <a href="#">Discover More</a>
                    </div>
                </div>
            </div>
            <div class="iconbox-features hv-background-before active">
                <div class="iconbox-icon"><span class="icon-optimization"></span></div>
                <div class="iconbox-content">
                    <h3 class="title">Optimize IT systems</h3>
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                        labore.
                    </p>
                    <div class="discover-more">
                        <a href="#">Discover More</a>
                    </div>
                </div>
            </div>
            <div class="iconbox-features hv-background-before">
                <div class="iconbox-icon"><span class="icon-alarm"></span></div>
                <div class="iconbox-content">
                    <h3 class="title">Digital Enablement</h3>
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                        labore.
                    </p>
                    <div class="discover-more">
                        <a href="#">Discover More</a>
                    </div>
                </div>
            </div>
        </div>
    </section><!-- features -->
    <section class="who-we-are who-we-are-style1">
        <div class="container">
            <div class="row d-flex align-items-center">
                <div class="col-lg-5 col-12">
                    <div class="featured-post position-relative">
                        <div class="entry-image">
                            <img src="{{ asset('assets-3/images/home1/default.png') }}" alt="images"
                                class="rounded">
                        </div>
                        <div class="iconbox-award">
                            <span class="icon-trophy"></span>
                            <div class="spinning-circle"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-7 col-12">
                    <div class="flat-spacer" data-desktop="0" data-sdesktop="0" data-mobi="50" data-smobi="50"></div>
                    <div class="content">
                        <blockquote>
                        </blockquote>
                        <div class="title d-lg-flex align-items-center">
                            Over<span> 25 </span>years experience
                        </div>
                        <p>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section><!-- who-we-are -->
    <section class="fact-type2">
        <h1 class="text-center text-dark font-weight-bold">JUMLAH PENGUNJUNG</h1>
        <div class="container mt-5 d-flex justify-content-lg-between justify-content-center flex-lg-nowrap flex-wrap mb-5">
            {{-- <div class="counter counter-type2">
                <div class="content-counter hv-background-before">
                    <div class="icon-count"><span class="icon-team"></span></div>
                    <div class="numb-count-wrap">
                        <span class="numb-count" data-from="0" data-to="856" data-speed="2000"
                            data-inviewport="yes">856</span>
                        <span class="numb-plus">+</span>
                    </div>
                    <div class="name-count">Happy Clients</div>
                </div>
            </div> --}}
            <div class="counter counter-type2">
                <div class="content-counter hv-background-before">
                    <div class="icon-count"><span class="icon-portfolio"></span></div>
                    <div class="numb-count-wrap">
                        <span class="numb-count" data-from="0" data-to="{{ $totalVisitors }}" data-speed="2000"
                            data-inviewport="yes">{{ $totalVisitors }}</span>
                    </div>
                    <div class="name-count">Total</div>
                </div>
            </div>
            <div class="counter counter-type2">
                <div class="content-counter hv-background-before">
                    <div class="icon-count"><span class="icon-observation"></span></div>
                    <div class="numb-count-wrap">
                        <span class="numb-count" data-from="0" data-to="{{ $todayVisitors }}" data-speed="2000"
                            data-inviewport="yes">{{ $todayVisitors }}</span>
                    </div>
                    <div class="name-count">Hari Ini</div>
                </div>
            </div>
            <div class="counter counter-type2">
                <div class="content-counter hv-background-before">
                    <div class="icon-count"><span class="icon-spam"></span></div>
                    <div class="numb-count-wrap">
                        <span class="numb-count" data-from="0" data-to="{{ $monthVisitors }}" data-speed="2000"
                            data-inviewport="yes">{{ $monthVisitors }}</span>
                    </div>
                    <div class="name-count">Bulan Ini</div>
                </div>
            </div>
        </div>
    </section><!-- fact -->
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
