@extends('visitor.layout.template')

@section('content')
    <div class="page-title position-relative clearfix bg-primary">
        <div class="section-overlay"></div>
        <div class="container">
            <div class="breadcrumbs position-relative">
                <div class="breadcrumbs-wrap">
                    <h1 class="title">Gallery</h1>
                    {{-- <ul class="breadcrumbs-inner">
                        <li><a href="#">About</a></li>
                        <li><a href="#">Gallery</a></li>
                    </ul> --}}
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row my-5">
            @forelse ($galleries as $gallery)
                <div class="col-lg-3 my-4">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="{{ asset('assets-3/images/gallery/') . '/' . $gallery->image }}"
                            alt="Card image cap">
                        <div class="card-body">
                            <center>
                                <h5 class="card-title">{{ $gallery->name }}</h5>
                            </center>
                        </div>
                    </div>
                </div>
            @empty
                <h1>Gambar tidak tersedia.</h1>
            @endforelse
        </div>
        <div class="mb-5 d-flex justify-content-center">
            <p>{{ $galleries->links() }}</p>
        </div>
    </div>
@endsection
