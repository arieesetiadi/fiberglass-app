@extends('visitor.layout.template')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h6>
                    <span class="font-weight-bold">Produk</span>
                    >
                    @if (!isset($category))
                        <a href="#" class="text-primary">Semua</a>
                    @else
                        <a href="{{ route('produk.kategori', $category->id) }}"
                            class="text-primary">{{ $category->name }}</a>
                    @endif
                </h6>
            </div>
        </div>
    </div>
    <div class="container py-4">
        <div class="row">
            <div class="col">
                <h1 class="h1 text-dark mb-5">{{ $title }}</h1>
            </div>
        </div>
        <div class="row">
            @forelse ($products->unique('id') as $product)
                <div class="col-lg-3 p-4">
                    <div class="card" style="width: 18rem;">
                        <div class="p-5" style="min-height: 300px">
                            @php
                                $cover = DB::table('product_images')
                                    ->where('product_id', $product->id)
                                    ->where('is_hide', false)
                                    ->get();
                            @endphp

                            @if (count($cover) > 0)
                                <img src="{{ asset('assets/images/products/') . '/' . $cover[0]->image }}"
                                    class="card-img-top" alt="{{ $product->name }}">
                            @else
                                <img src="{{ asset('assets/images/products/') . '/' . 'default.png' }}"
                                    class="card-img-top" alt="{{ $product->name }}">
                            @endif
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">{{ $product->name }}</h5>
                            <h5 class="card-text mb-3">Stok : {{ $product->stock }}</h5>
                            <a href="{{ route('product-detail', $product->id) }}" class="btn btn-primary">Detail</a>
                        </div>
                    </div>
                </div>
            @empty
                <h1>Kategori "{{ $title }}" tidak tersedia</h1>
            @endforelse
        </div>
        <div class="d-flex justify-content-center">
            <div class="my-3 mt-4">{{ $products->links() }}</div>
        </div>
    </div>
@endsection
