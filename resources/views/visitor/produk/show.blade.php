@extends('visitor.layout.template')

@section('content')
    {{-- <div class="container">
        <div class="row mt-4">
            <div class="col">
                <h1 class="h2 text-dark">{{ $product->name }}</h1>
            </div>
        </div>
    </div> --}}
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h6>
                    <span class="text-primary">Produk</span>
                    >
                    <a href="{{ route('produk.kategori', $category->id) }}"
                        class="text-primary">{{ $category->name }}</a>
                    >
                    <span class="text-dark">{{ $product->name }}</span>
                </h6>
            </div>
        </div>
    </div>
    <div class="blog-content no-column flat-row clearfix" style="padding-top: 30px">
        <div class="container d-lg-flex">
            <div class="row d-flex justify-content-center">
                <div class="col-lg-10">
                    <article class="main-post" style="">
                        <center>
                            <div class="w3-conten" style="max-width:800px; margin-bottom: 20px">
                                <center>
                                    @forelse ($images as $image)
                                        <img class="mySlides"
                                            src="{{ asset('assets/images/products/') . '/' . $image->image }}"
                                            style="height: 350px;">
                                    @empty
                                        <img class="mySlides"
                                            src="{{ asset('assets/images/products/default.png') }}"
                                            style="height: 350px;">
                                    @endforelse
                                </center>
                            </div>
                        </center>
                        <div class="w3-center">
                            <button class="btn btn-light btn-sm" onclick="plusDivs(-1)">❮</button>
                            @forelse ($images as $i => $image)
                                <button class="btn btn-light btn-sm"
                                    onclick="currentDiv({{ $i + 1 }})">{{ $i + 1 }}</button>
                            @empty
                                <button class="btn btn-light btn-sm" onclick="currentDiv(1)">1</button>
                            @endforelse
                            <button class="btn btn-light btn-sm" onclick="plusDivs(1)">❯</button>
                        </div>
                        <div class="">
                            <ul class="post-meta d-sm-flex">
                                <h2>{{ $product->name }}</h2>
                            </ul>
                            <ul class="post-meta d-sm-flex">
                                <div class="mr-3">
                                    <button class="btn btn-light">
                                        <i class="fas fa-tags"></i>
                                    </button>
                                    <span>{{ $category->name }}</span>
                                </div>
                                <div>
                                    <button class="btn btn-light">
                                        <i class="fas fa-box"></i>
                                    </button>
                                    <span>Stock : {{ $product->stock }}</span>
                                </div>
                            </ul>
                        </div>
                    </article><!-- main-post -->
                    <hr>
                    <article>
                        <div class="w-100">
                            @if ($product->description)
                                {!! $product->description !!}
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
