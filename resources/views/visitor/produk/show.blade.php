@extends('visitor.layout.template')

@section('content')
    <div class="page-title parallax parallax1 position-relative clearfix">
        <div class="section-overlay"></div>
        <div id="abc">
            <div class="container">
                <div class="breadcrumbs position-relative">
                    <div class="breadcrumbs-wrap">
                        <h1 class="title">{{ $product->name }}</h1>
                        <ul class="breadcrumbs-inner">
                            <li class="text-light">Detail</li>
                            <li class="text-light">Produk</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- page-title -->
    <div class="blog-content no-column flat-row clearfix">
        <div class="container d-lg-flex">
            <div class="col-left">
                <article class="main-post">
                    <div class="w3-content" style="max-width:800px">
                        <center>
                            <img class="mySlides"
                                src="{{ asset('assets/images/products/1641464319 1641387618 stikombaru.png') }}"
                                style="height: 500px;">
                            <img class="mySlides"
                                src="{{ asset('assets/images/products/1641542984 1641387649 office.png') }}"
                                style="height: 500px;">
                            <img class="mySlides" src="{{ asset('assets/images/products/1641464320 phoenix.jpg') }}"
                                style="height: 500px;">
                        </center>
                    </div>

                    <div class="w3-center">
                        <div class="w3-section">
                            <button class="w3-button w3-light-grey" onclick="plusDivs(-1)">❮ Prev</button>
                            <button class="w3-button w3-light-grey" onclick="plusDivs(1)">Next ❯</button>
                        </div>
                        <button class="w3-button demo" onclick="currentDiv(1)">1</button>
                        <button class="w3-button demo" onclick="currentDiv(2)">2</button>
                        <button class="w3-button demo" onclick="currentDiv(3)">3</button>
                    </div>
                    <div class="content-blog content-blog-single">
                        <ul class="post-meta d-sm-flex">
                            <li class="author"><a href="#">By David Arham</a></li>
                            <li class="date"><span>02 January, 2020</span></li>
                        </ul>
                        <h2 class="title"><a href="#">Commonly used in the graphic, print, & publishing industries
                                for previewing layouts and visual mockups.</a></h2>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                            laboris nisi ut aliquip ex ea commo do consequat. Duis aute irure dolor in reprehenderit in
                            voluptate velit esse cilm dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non
                            proident.
                        </p>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                            laboris nisi ut aliquip ex ea commo do consequat. Duis aute irure dolor in reprehenderit in
                            voluptate velit esse cilm dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non
                            proident.
                        </p>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                            laboris nisi ut aliquip ex ea commo do consequat. Duis aute irure dolor in reprehenderit in
                            voluptate velit esse cilm dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non
                            proident.
                        </p>
                        <blockquote>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.
                        </blockquote>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                            laboris nisi ut aliquip ex ea commo do consequat. Duis aute irure dolor in reprehenderit in
                            voluptate velit esse cilm dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non
                            proident.
                        </p>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                            laboris nisi ut aliquip ex ea commo do consequat. Duis aute irure dolor in reprehenderit in
                            voluptate velit esse cilm dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non
                            proident.
                        </p>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                            laboris nisi ut aliquip ex ea commo do consequat. Duis aute irure dolor in reprehenderit in
                            voluptate velit esse cilm dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non
                            proident.
                        </p>
                        <div class="tags-bar d-md-flex justify-content-between align-items-center">
                            <div class="tags-list tags-list bg-linear-gradient">
                                <a href="#">Managed</a>
                                <a href="#">Corporate</a>
                                <a href="#">Business</a>
                            </div>
                            <div class="socials-list">
                                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-skype" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a>
                            </div>
                        </div><!-- tags-bar -->
                        <div class="quote">
                            <div class="quote-bg border-corner clearfix">
                                <div class="avatar btn-linear hv-linear-gradient">
                                    <img src="{{ asset('assets-3/images/blog/04.jpg') }}" alt="images">
                                    <a href="#" class="linear-color"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                </div>
                                <div class="content-text">
                                    <h3 class="name">Tang Xiulan</h3>
                                    <p class="description">
                                        Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et magna
                                        aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco do consequat.
                                        Duis aute irure dolor in reprehenderi.
                                    </p>
                                </div>
                            </div>
                        </div><!-- quote -->
                        <div class="navigation">
                            <ul class="nav-links d-md-flex">
                                <li class="previous">
                                    <div class="meta-nav">Previous</div>
                                    <div class="name-nav">Managed IT</div>
                                </li>
                                <li class="next">
                                    <div class="meta-nav">Next</div>
                                    <div class="name-nav">Cyber security</div>
                                </li>
                            </ul>
                        </div><!-- navigation -->
                    </div>
                </article><!-- main-post -->
                <div class="comments-area">
                    <div class="comments">
                        <h2 class="title">Comments (25)</h2>
                        <ul class="comments-list">
                            <li>
                                <div class="comment-wrap">
                                    <div class="avatar">
                                        <img src="{{ asset('assets-3/images/blog/05.jpg') }}" alt="images">
                                    </div>
                                    <div class="comment-content">
                                        <div class="comment-meta d-sm-flex">
                                            <h3 class="name">Zhang Chen</h3>
                                            <div class="date">02 January, 2020</div>
                                        </div>
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                            incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
                                            nostrud exercitation ullam laboris nisi ut aliquip ex ea commodo consequat.
                                        </p>
                                        <div class="comment-reply bg-linear-gradient">
                                            <a href="#"><i class="fa fa-arrow-left" aria-hidden="true"></i>Reply</a>
                                        </div>
                                    </div>
                                </div>
                                <ul class="sub-comment">
                                    <li>
                                        <div class="comment-wrap">
                                            <div class="avatar">
                                                <img src="images/blog/05.jpg" alt="images">
                                            </div>
                                            <div class="comment-content">
                                                <div class="comment-meta d-sm-flex">
                                                    <h3 class="name">Tao Ruog</h3>
                                                    <div class="date">02 January, 2020</div>
                                                </div>
                                                <p>
                                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                                                    tempor ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
                                                    nostrud ullam laboris nisi ut aliquip ex ea commodo consequat.
                                                </p>
                                                <div class="comment-reply bg-linear-gradient">
                                                    <a href="#"><i class="fa fa-arrow-left" aria-hidden="true"></i>Reply</a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="comment-wrap">
                                            <div class="avatar">
                                                <img src="images/blog/05.jpg" alt="images">
                                            </div>
                                            <div class="comment-content">
                                                <div class="comment-meta d-sm-flex">
                                                    <h3 class="name">Hou Yong</h3>
                                                    <div class="date">02 January, 2020</div>
                                                </div>
                                                <p>
                                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                                                    tempor ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
                                                    nostrud ullam laboris nisi ut aliquip ex ea commodo consequat.
                                                </p>
                                                <div class="comment-reply bg-linear-gradient">
                                                    <a href="#"><i class="fa fa-arrow-left" aria-hidden="true"></i>Reply</a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div><!-- comments-area -->
                <div class="leave-comment">
                    <div class="comment-respond">
                        <h4 class="title">Leave a comment</h4>
                        <form id="contactform" action="./contact/contact-process.php" method="post"
                            class="form-leave-comment form-submit">
                            <div class="text-wrap d-md-flex clearfix">
                                <div class="w-left position-relative">
                                    <input type="text" name="firstname" id="firstname" value="" class="firstname"
                                        placeholder="Name*">
                                    <span class="icon-user"></span>
                                </div>
                                <div class="w-right position-relative">
                                    <input type="text" name="email" id="email" value="" class="email"
                                        placeholder="Email">
                                    <span class="fa fa-envelope" aria-hidden="true"></span>
                                </div>
                            </div>
                            <div class="message-wrap mg-b40">
                                <textarea name="message" id="comment-message" rows="8" placeholder="Message here"
                                    required="required"></textarea>
                            </div>
                            <div class="flat-send-message btn-linear hv-linear-gradient">
                                <button name="submit" type="submit" class="submit font-style linear-color border-corner"
                                    id="submit">send message</button>
                            </div>
                        </form>
                    </div>
                </div><!-- leave-comment -->
            </div>
            <div class="col-right">
                <div class="sidebar">
                    {{-- <div class="widget widget-search">
                        <form action="#" class="form-search btn-linear hv-linear-gradient">
                            <input type="text" class="search" placeholder="Search here">
                            <button class="btn-search linear-color"><i class="fa fa-search"
                                    aria-hidden="true"></i></button>
                        </form>
                    </div> --}}
                    <div class="widget widget-category widget-bg">
                        <h2 class="widget-title">category</h2>
                        <ul class="category-wrap">
                            <li>
                                <div class="block-inside border-corner hv-background-before">
                                    <a href="#">IT consultancy</a>
                                </div>
                            </li>
                            <li>
                                <div class="block-inside border-corner hv-background-before">
                                    <a href="#">Hosting & cloud</a>
                                </div>
                            </li>
                            <li>
                                <div class="block-inside border-corner hv-background-before">
                                    <a href="#">Cyber security</a>
                                </div>
                            </li>
                            <li>
                                <div class="block-inside border-corner hv-background-before">
                                    <a href="#">Business reform</a>
                                </div>
                            </li>
                            <li>
                                <div class="block-inside border-corner hv-background-before">
                                    <a href="#">IT Management</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="widget widget-recent-posts widget-bg">
                        <h2 class="widget-title">recent posts</h2>
                        <ul class="recent-news">
                            <li>
                                <div class="thumb-image">
                                    <img src="images/blog/03.jpg" alt="images">
                                </div>
                                <div class="thumb-content clearfix">
                                    <h3 class="thumb-title"><a href="#">Data secure transition to a new office.</a></h3>
                                    <p class="thumb-day">02 January, 2020</p>
                                </div>
                            </li>
                            <li>
                                <div class="thumb-image">
                                    <img src="images/blog/16.jpg" alt="images">
                                </div>
                                <div class="thumb-content clearfix">
                                    <h3 class="thumb-title"><a href="#">Data secure transition to a new office.</a></h3>
                                    <p class="thumb-day">02 January, 2020</p>
                                </div>
                            </li>
                            <li>
                                <div class="thumb-image">
                                    <img src="images/blog/17.jpg" alt="images">
                                </div>
                                <div class="thumb-content clearfix">
                                    <h3 class="thumb-title"><a href="#">Data secure transition to a new office.</a></h3>
                                    <p class="thumb-day">02 January, 2020</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="widget widget-tags widget-bg">
                        <h2 class="widget-title">tags</h2>
                        <div class="tags-list bg-linear-gradient">
                            <a href="#">business</a>
                            <a href="#">agency</a>
                            <a href="#">agency</a>
                            <a href="#">business</a>
                            <a href="#">business</a>
                            <a href="#">agency</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- blog-content -->
    <div class="cta">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-8 col-12">
                    <div class="cta-content position-relative">
                        <div class="caption">Are you ready for a better,</div>
                        <div class="flat-spacer" data-desktop="10" data-sdesktop="10" data-mobi="10" data-smobi="10">
                        </div>
                        <h2 class="title">Stop wasting time & money on technology.</h2>
                    </div>
                </div>
                <div class="col-lg-4 col-12">
                    <div class="flat-contact-now">
                        <a href="#" class="border-corner">Contact Now<span
                                class="icon-arrow-pointing-to-right"></span></a>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- cta -->
@endsection
