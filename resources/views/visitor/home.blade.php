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
                            <img src="images/home1/01.jpg" alt="images">
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
                            Ut enim minim veniam quis nostrud exercitation ullamc and aliquip ex ea commodo consequat
                            aute irure dolor innerem voluptate velit esse cillum.
                        </blockquote>
                        <div class="title d-lg-flex align-items-center">
                            Over<span> 25 </span>years experience
                        </div>
                        <p>
                            Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip commodo
                            consequat. Duis aute irure dolor in reprehenderit in voluptate velit ess cillum dolore eu
                            fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
                            officia deserunt.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section><!-- who-we-are -->
    <section class="fact-type2">
        <div class="container d-flex justify-content-lg-between justify-content-center flex-lg-nowrap flex-wrap">
            <div class="counter counter-type2">
                <div class="content-counter hv-background-before">
                    <div class="icon-count"><span class="icon-team"></span></div>
                    <div class="numb-count-wrap">
                        <span class="numb-count" data-from="0" data-to="856" data-speed="2000"
                            data-inviewport="yes">856</span>
                        <span class="numb-plus">+</span>
                    </div>
                    <div class="name-count">Happy Clients</div>
                </div>
            </div>
            <div class="counter counter-type2">
                <div class="content-counter hv-background-before">
                    <div class="icon-count"><span class="icon-portfolio"></span></div>
                    <div class="numb-count-wrap">
                        <span class="numb-count" data-from="0" data-to="934" data-speed="2000"
                            data-inviewport="yes">934</span>
                    </div>
                    <div class="name-count">Finished Project</div>
                </div>
            </div>
            <div class="counter counter-type2">
                <div class="content-counter hv-background-before">
                    <div class="icon-count"><span class="icon-observation"></span></div>
                    <div class="numb-count-wrap">
                        <span class="numb-count" data-from="0" data-to="534" data-speed="2000"
                            data-inviewport="yes">534</span>
                    </div>
                    <div class="name-count">Skilled Experts</div>
                </div>
            </div>
            <div class="counter counter-type2">
                <div class="content-counter hv-background-before">
                    <div class="icon-count"><span class="icon-spam"></span></div>
                    <div class="numb-count-wrap">
                        <span class="numb-count" data-from="0" data-to="438" data-speed="2000"
                            data-inviewport="yes">438</span>
                    </div>
                    <div class="name-count">Media Posts</div>
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
                    <a href="#" class="font-style linear-color border-corner">Contact Now<span
                            class="icon-arrow-pointing-to-right"></span></a>
                </div>
            </div>
            <div class="circle-border circle-border1 none-767"></div>
            <div class="circle-border circle-border2 none-767"></div>
            <div class="circle-border circle-border3 none-767"></div>
        </div>
    </section><!-- cta -->
    <div class="flat-it-services flat-it-services-style1">
        <div class="container">
            <div class="title-section text-center">
                <p class="sub-title">Services</p>
                <h2 class="flat-title">Managed IT services<br> for your industry</h2>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6 col-12 wow fadeInUp" data-wow-delay="200ms">
                    <div class="service-image-box2 hv-background-before">
                        <div class="order-number">01.</div>
                        <div class="featured-post">
                            <div class="entry-image">
                                <img src="images/services/09.jpg" alt="images">
                            </div>
                        </div>
                        <div class="content-service">
                            <h3 class="title"><a href="#">IT helpdesk support</a></h3>
                            <div class="link-arrow"><a href="#"><span class="icon-arrow-pointing-to-right"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-12 wow fadeInUp" data-wow-delay="400ms">
                    <div class="service-image-box2 hv-background-before">
                        <div class="order-number">02.</div>
                        <div class="featured-post">
                            <div class="entry-image">
                                <img src="images/services/10.jpg" alt="images">
                            </div>
                        </div>
                        <div class="content-service">
                            <h3 class="title"><a href="#">Managed IT</a></h3>
                            <div class="link-arrow"><a href="#"><span class="icon-arrow-pointing-to-right"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-12  wow fadeInUp" data-wow-delay="800ms">
                    <div class="service-image-box2 hv-background-before">
                        <div class="order-number">03.</div>
                        <div class="featured-post">
                            <div class="entry-image">
                                <img src="images/services/11.jpg" alt="images">
                            </div>
                        </div>
                        <div class="content-service">
                            <h3 class="title"><a href="#">Cyber security</a></h3>
                            <div class="link-arrow"><a href="#"><span class="icon-arrow-pointing-to-right"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-12 wow fadeInUp" data-wow-delay="200ms">
                    <div class="service-image-box2 hv-background-before">
                        <div class="order-number">04.</div>
                        <div class="featured-post">
                            <div class="entry-image">
                                <img src="images/services/12.jpg" alt="images">
                            </div>
                        </div>
                        <div class="content-service">
                            <h3 class="title"><a href="#">Business Reform</a></h3>
                            <div class="link-arrow"><a href="#"><span class="icon-arrow-pointing-to-right"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-12 wow fadeInUp" data-wow-delay="400ms">
                    <div class="service-image-box2 hv-background-before">
                        <div class="order-number">05.</div>
                        <div class="featured-post">
                            <div class="entry-image">
                                <img src="images/services/13.jpg" alt="images">
                            </div>
                        </div>
                        <div class="content-service">
                            <h3 class="title"><a href="#">Hosting & cloud</a></h3>
                            <div class="link-arrow"><a href="#"><span class="icon-arrow-pointing-to-right"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-12 wow fadeInUp" data-wow-delay="800ms">
                    <div class="service-image-box2 hv-background-before">
                        <div class="order-number">06.</div>
                        <div class="featured-post">
                            <div class="entry-image">
                                <img src="images/services/14.jpg" alt="images">
                            </div>
                        </div>
                        <div class="content-service">
                            <h3 class="title"><a href="#">Infrastructure Plan</a></h3>
                            <div class="link-arrow"><a href="#"><span class="icon-arrow-pointing-to-right"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- flat-it-services -->
    <div class="background-two-section">
        <div class="partners">
            <div class="container">
                <div class="banners-z">
                    <div class="flat-carousel-box data-effect clearfix" data-zero="0" data-gap="70" data-column="6"
                        data-column2="5" data-column3="4" data-column4="2" data-dots="false" data-auto="true"
                        data-nav="false" data-loop="true">
                        <div class="owl-carousel">
                            <img src="images/partners/01.png" alt="images">
                            <img src="images/partners/02.png" alt="images">
                            <img src="images/partners/03.png" alt="images">
                            <img src="images/partners/04.png" alt="images">
                            <img src="images/partners/05.png" alt="images">
                            <img src="images/partners/06.png" alt="images">
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- partners -->
        <div class="flat-case-study flat-case-study-type1 flat-case-study-style1">
            <div class="container">
                <div class="title-section text-center">
                    <p class="sub-title">Case Study</p>
                    <h2 class="flat-title text-white">Eliminate the IT challenges<br> your business is facing</h2>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-sm-6 wow fadeInLeft" data-wow-delay="200ms">
                        <div class="flat-case-service2">
                            <div class="featured-post position-relative">
                                <div class="entry-image">
                                    <img src="images/services/21.jpg" alt="images">
                                </div>
                                <span>IT Manages</span>
                            </div>
                            <div class="case-content text-center">
                                <h3 class="title"><a href="#">When viruses attack so does teamlogic IT</a>
                                </h3>
                                <div class="link-arrow"><a href="#"><span
                                            class="icon-arrow-pointing-to-right"></span></a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 wow fadeInUp" data-wow-delay="400ms">
                        <div class="flat-case-service2">
                            <div class="featured-post position-relative">
                                <div class="entry-image">
                                    <img src="images/services/22.jpg" alt="images">
                                </div>
                                <span>IT Manages</span>
                            </div>
                            <div class="case-content text-center">
                                <h3 class="title"><a href="#">Subscription licensing unlocks spike in IT
                                        orders</a></h3>
                                <div class="link-arrow"><a href="#"><span
                                            class="icon-arrow-pointing-to-right"></span></a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 wow fadeInRight" data-wow-delay="200ms">
                        <div class="flat-case-service2">
                            <div class="featured-post position-relative">
                                <div class="entry-image">
                                    <img src="images/services/23.jpg" alt="images">
                                </div>
                                <span>IT Manages</span>
                            </div>
                            <div class="case-content text-center">
                                <h3 class="title"><a href="#">Ideas for high returns on investment</a></h3>
                                <div class="link-arrow"><a href="#"><span
                                            class="icon-arrow-pointing-to-right"></span></a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- flat-case-study -->
    </div><!-- background-two-section -->
    <section class="testimonial testimonial-style1">
        <div class="container">
            <div class="title-section text-center">
                <p class="sub-title">Testimonial</p>
                <h2 class="flat-title">What says our<br> honorable customers!</h2>
            </div>
            <div class="custom-nav-testimonial">
                <div class="banners-z">
                    <div class="flat-carousel-box data-effect clearfix" data-zero="0" data-gap="30" data-column="2"
                        data-column2="1" data-column3="1" data-column4="1" data-column5="1" data-dots="false"
                        data-auto="false" data-nav="false" data-loop="true">
                        <div class="owl-carousel">
                            <div class="testimonial-box testimonial-box-type1 position-relative">
                                <div class="endorser d-sm-flex align-items-center">
                                    <div class="avatar"><img src="images/testimonial/02.jpg" alt="images">
                                    </div>
                                    <div class="info">
                                        <h3 class="name">Kang Qiang</h3>
                                        <p class="role">Marketing Officer</p>
                                    </div>
                                </div>
                                <div class="flat-spacer" data-desktop="26" data-sdesktop="26" data-mobi="15"
                                    data-smobi="15"></div>
                                <div class="content-testimonial">
                                    <div class="text-bold">
                                        Ut enim ad minim veniam, quis nostrud exercitation ullamco labo commodo
                                        consequat sint occaecatproident, sunt in culpa.
                                    </div>
                                    <p>
                                        Ut enim ad minim veniam, quis nostrud exercitation ullamco labo commodo
                                        consequat. Duis aute irure in reprehenderit in voluptate proident, sunt in culpa
                                        qui officia deserunt.
                                    </p>
                                </div>
                                <div class="spinning-circle"></div>
                                <div class="icon-represent"><span class="icon-trophy"></span></div>
                            </div>
                            <div class="testimonial-box testimonial-box-type1 position-relative">
                                <div class="endorser d-sm-flex align-items-center">
                                    <div class="avatar"><img src="images/testimonial/03.jpg" alt="images">
                                    </div>
                                    <div class="info">
                                        <h3 class="name">Critean Prinka</h3>
                                        <p class="role">CEO of Parko</p>
                                    </div>
                                </div>
                                <div class="flat-spacer" data-desktop="26" data-sdesktop="26" data-mobi="15"
                                    data-smobi="15"></div>
                                <div class="content-testimonial">
                                    <div class="text-bold">
                                        Ut enim ad minim veniam, quis nostrud exercitation ullamco labo commodo
                                        consequat sint occaecatproident, sunt in culpa.
                                    </div>
                                    <p>
                                        Ut enim ad minim veniam, quis nostrud exercitation ullamco labo commodo
                                        consequat. Duis aute irure in reprehenderit in voluptate proident, sunt in culpa
                                        qui officia deserunt.
                                    </p>
                                </div>
                                <div class="spinning-circle"></div>
                                <div class="icon-represent"><span class="icon-trophy"></span></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section><!-- testimonial -->
    <section class="get-in-touch-type3 get-in-touch-style1 parallax parallax4 position-relative">
        <div class="section-overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-12">
                    <div class="contact-address">
                        <div class="flat-spacer" data-desktop="112" data-sdesktop="112" data-mobi="0" data-smobi="0">
                        </div>
                        <span class="icon-support"></span>
                        <ul class="contact-details">
                            <li>+00 568 428 943</li>
                            <li>support24@gmail.com</li>
                        </ul>
                        <div class="text">
                            Preparing for your success,we provide truly prominent IT solutions. trusted source in IT
                            services and support.
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-12">
                    <form id="contactform" action="./contact/contact-process.php" method="post"
                        class="form-git2 form-submit">
                        <h3 class="title text-center">Get in touch We’ll help your business</h3>
                        <div class="text-wrap">
                            <div class="has-icon position-relative">
                                <input type="text" name="firstname" id="firstname" value="" class="firstname"
                                    placeholder="Name here">
                                <span class="icon-user"></span>
                            </div>
                            <div class="has-icon position-relative">
                                <input type="text" name="email" id="email" value="" class="email"
                                    placeholder="Email here">
                                <span class="fa fa-envelope" aria-hidden="true"></span>
                            </div>
                            <textarea name="message" id="comment-message" rows="8" placeholder="Message here"
                                required="required"></textarea>
                        </div>
                        <div class="flat-send-message btn-linear hv-linear-gradient">
                            <button name="submit" type="submit" class="submit font-style linear-color border-corner"
                                id="submit">send message now</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section><!-- get-in-touch -->
    <div class="blog-post blog-post-style1">
        <div class="container">
            <div class="title-section text-center">
                <p class="sub-title">Blog Post</p>
                <h2 class="flat-title">More articles from our<br> resource library</h2>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6 col-12 wow fadeInLeft" data-wow-delay="200ms">
                    <article class="blog-grid blog-grid-type1">
                        <div class="featured-post">
                            <div class="entry-image">
                                <a href="#"><img src="images/blog/09.jpg" alt="images"></a>
                            </div>
                        </div>
                        <div class="content-inside">
                            <div class="info-author d-flex align-items-center">
                                <div class="avatar"><img src="images/blog/12.jpg" alt="images"></div>
                                <div class="name">By David Arham</div>
                            </div>
                            <h3 class="title"><a href="#">Let us provide the support you deserve.</a></h3>
                            <p class="time">02 January, 2020</p>
                        </div>
                    </article>
                </div>
                <div class="col-lg-4 col-md-6 col-12 wow fadeInUp" data-wow-delay="400ms">
                    <article class="blog-grid blog-grid-type1">
                        <div class="featured-post">
                            <div class="entry-image">
                                <a href="#"><img src="images/blog/10.jpg" alt="images"></a>
                            </div>
                        </div>
                        <div class="content-inside">
                            <div class="info-author d-flex align-items-center">
                                <div class="avatar"><img src="images/blog/12.jpg" alt="images"></div>
                                <div class="name">By David Arham</div>
                            </div>
                            <h3 class="title"><a href="#">Let us provide the support you deserve.</a></h3>
                            <p class="time">02 January, 2020</p>
                        </div>
                    </article>
                </div>
                <div class="col-lg-4 col-md-6 col-12 wow fadeInRight" data-wow-delay="200ms">
                    <article class="blog-grid blog-grid-type1">
                        <div class="featured-post">
                            <div class="entry-image">
                                <a href="#"><img src="images/blog/11.jpg" alt="images"></a>
                            </div>
                        </div>
                        <div class="content-inside">
                            <div class="info-author d-flex align-items-center">
                                <div class="avatar"><img src="images/blog/12.jpg" alt="images"></div>
                                <div class="name">By David Arham</div>
                            </div>
                            <h3 class="title"><a href="#">Let us provide the support you deserve.</a></h3>
                            <p class="time">02 January, 2020</p>
                        </div>
                    </article>
                </div>
            </div>
        </div>
    </div><!-- blog-post -->
@endsection
