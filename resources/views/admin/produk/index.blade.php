@extends('admin.layout.template')

@section('content')
    @if (session('status'))
        <div class="alert alert-dismissible alert-success d-flex align-items-center" role="alert">
            <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:">
                <use xlink:href="#check-circle-fill" />
            </svg>
            <div>
                {{ session('status') }}
            </div>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    @endif
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-sm-12">
                <div class="card radius-10">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div class="">
                                <p class="mb-1">Produk</p>
                                <h4 class="mb-0 text-pink">{{ $counts }}</h4>
                            </div>
                            <div class="ms-auto fs-2 text-pink">
                                <i class="bi bi-box"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <ul class="nav nav-tabs nav-light d-flex justify-content-between" role="tablist">
                            <li class="nav-item" role="presentation">
                                <a class="nav-link active" data-bs-toggle="tab" href="#dangerhome" role="tab"
                                    aria-selected="true">
                                    <div class="d-flex align-items-center">
                                        <div class="tab-icon"><i class='bi bi-box font-18 me-1'></i>
                                        </div>
                                        <div class="tab-title">Semua</div>
                                    </div>
                                </a>
                            </li>
                            <a class="nav-link border" href="{{ route('produk.create') }}">
                                <div class="d-flex align-items-center">
                                    <div class="tab-icon"><i class="bi bi-plus-lg"></i>
                                    </div>
                                </div>
                            </a>
                        </ul>
                        <div class="tab-content pt-3">
                            <div class="tab-pane fade show active" id="dangerhome" role="tabpanel">
                                <div class="d-flex align-items-center">
                                    <h5 class="mb-0">Tabel Produk</h5>
                                    <form action="{{ route('produk.search') }}" method="GET"
                                        class="ms-auto position-relative">
                                        <div class="position-absolute top-50 translate-middle-y search-icon px-3"><i
                                                class="bi bi-search"></i></div>
                                        <input name="search" class="form-control ps-5" type="text" placeholder="search">
                                    </form>
                                </div>
                                <div class="table-responsive mt-3">
                                    <table class="table table-sm align-middle mb-0">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Nama</th>
                                                <th>Stok</th>
                                                <th>Kategori</th>
                                                <th>Dibuat Oleh</th>
                                                <th>Dibuat Pada</th>
                                                <th>Diubah Pada</th>
                                                <th>
                                                    <span class="mx-4 d-inline-block">Aksi</span>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @forelse ($products as $product)
                                                <tr>
                                                    {{-- <td><img src="{{ asset('assets/images/users/avatar-1.jpg') }}"
                                                        class="product-img-2" alt="product img"></td>
                                                        <td>#9405822</td> --}}
                                                    <td>{{ $products->firstItem() + $loop->index }}</td>
                                                    <td>{{ $product->name }}</td>
                                                    <td>{{ $product->stock }}</td>
                                                    <td>{{ $product->category }}</td>
                                                    <td>{{ $product->user }}</td>
                                                    <td>{{ $product->created_at }}</td>
                                                    <td>{{ $product->updated_at ??= '-' }}</td>
                                                    <td>
                                                        <form action="{{ route('produk.edit', $product->id) }}"
                                                            class="d-inline-block" method="GET">
                                                            <button type="submit" class="btn d-inline-block">
                                                                <i class="bi bi-pen"></i>
                                                            </button>
                                                        </form>
                                                        <form action="#" class="d-inline-block" method="POST">
                                                            @csrf
                                                            <input type="hidden" name="_method" value="DELETE">
                                                            <button onclick="return confirm('Produk ini akan dihapus')"
                                                                type="submit" class="btn d-inline-block">
                                                                <i class="bi bi-trash-fill"></i>
                                                            </button>
                                                        </form>
                                                    </td>
                                                </tr>
                                            @empty
                                                <h6>Data Produk Tidak Tersedia.</h6>
                                            @endforelse
                                        </tbody>
                                    </table>
                                    <div class="mt-4 d-flex justify-content-center">
                                        <p>{{ $products->links() }}</p>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="dangerprofile" role="tabpanel">
                                <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid.
                                    Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson
                                    artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo
                                    enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud
                                    organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia
                                    yr, vero magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes
                                    anderson 8-bit, sustainable jean shorts beard ut DIY ethical culpa terry richardson
                                    biodiesel. Art party scenester stumptown, tumblr butcher vero sint qui sapiente
                                    accusamus tattooed echo park.</p>
                            </div>
                            <div class="tab-pane fade" id="dangercontact" role="tabpanel">
                                <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's
                                    organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify
                                    pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy
                                    hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred
                                    pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie
                                    etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl
                                    craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
