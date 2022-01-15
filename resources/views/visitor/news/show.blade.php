@extends('visitor.layout.template')

@section('content')
    {{-- <div class="container">
        <div class="row mt-4">
            <div class="col">
                <h1 class="h2 text-dark">{{ $ne->tit }}</h1>
            </div>
        </div>
    </div> --}}
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h6>
                    <span class="font-weight-bold">News</span>
                    >
                    <span class="text-primary">{{ $news->title }}</span>
                </h6>
            </div>
        </div>
    </div>
    <div class="blog-content no-column flat-row clearfix" style="padding-top: 30px; min-height: 900px">
        <div class="container d-lg-flex">
            <div class="row d-flex justify-content-center">
                <div class="col-lg-10">
                    <article class="main-post" style="">
                        <center>
                            <div class="w3-conten" style="max-width:800px; margin-bottom: 20px">
                                <center>
                                </center>
                            </div>
                        </center>
                        <div class="">
                            <ul class="post-meta d-sm-flex">
                                <h2>{{ $news->title }}</h2>
                            </ul>
                            <ul class="post-meta d-sm-flex">
                                <div class="mr-3">
                                    <button class="btn btn-light">
                                        <i class="fas fa-tags"></i>
                                    </button>
                                    <span> {{ now()->make($news->created_at)->format('l, d F Y') }}</span>
                                </div>
                                <div>
                                    <button class="btn btn-light">
                                        <i class="fas fa-box"></i>
                                    </button>
                                    <span>Uncategorized</span>
                                </div>
                            </ul>
                        </div>
                    </article><!-- main-post -->
                    <hr>
                    <article>
                        <div class="w-100 my-2">
                            @if ($news->body)
                                {!! $news->body !!}
                            @else
                                <h6 class="h6 d-block">Deskripsi Tidak Tersedia.</h6>
                                <p class="text-white text-justify">
                                    @for ($i = 0; $i < 10; $i++)
                                        {{ $product->slug }}
                                    @endfor
                                </p>
                            @endif
                        </div>
                    </article>
                </div>
            </div>
        </div>
    </div><!-- blog-content -->
@endsection
