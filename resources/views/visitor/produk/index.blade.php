@extends('visitor.layout.template')

@section('content')
    <div class="container py-5">
        <div class="row">
            @forelse ($products->unique('id') as $product)
                <div class="col-lg-3 p-1">
                    <div class="card" style="width: 18rem;">
                        <div class="p-5">
                            <img src="{{ asset('assets/images/products/') . '/' . ($product->image ??= 'default.png') }}"
                                class="card-img-top" alt="{{ $product->name }}">
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">{{ $product->name }}</h5>
                            <p class="card-text">Stok : {{ $product->stock }}</p>
                            <a href="{{ route('produk.show', $product->id) }}" class="btn btn-primary">Detail</a>
                        </div>
                    </div>
                </div>
            @empty
                <h1>Kategori "{{ $title }}" tidak tersedia</h1>
            @endforelse
        </div>
        <div class="d-flex justify-content-center">
            <div class="my-3">{{ $products->links() }}</div>
        </div>
    </div>
@endsection
