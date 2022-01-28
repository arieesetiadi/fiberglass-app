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
                                <p class="mb-1">Berita</p>
                                <h4 class="mb-0 text-primary">{{ $count }}</h4>
                            </div>
                            <div class="ms-auto fs-2 text-primary">
                                <i class="bi bi-newspaper"></i>
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
                            <a class="nav-link border" href="{{ route('news.create') }}">
                                <div class="d-flex align-items-center">
                                    <div class="tab-icon"><i class="bi bi-plus-lg"></i>
                                    </div>
                                </div>
                            </a>
                        </ul>
                        <div class="tab-content pt-3">
                            <div class="tab-pane fade show active" id="dangerhome" role="tabpanel">
                                <div class="d-flex align-items-center">
                                    <h5 class="mb-0">Tabel Berita</h5>
                                    {{-- <form action="{{ route('produk.search') }}" method="GET"
                                        class="ms-auto position-relative">
                                        <div class="position-absolute top-50 translate-middle-y search-icon px-3"><i
                                                class="bi bi-search"></i></div>
                                        <input name="search" class="form-control ps-5" type="text" placeholder="search">
                                    </form> --}}
                                </div>
                                <div class="table-responsive mt-3">
                                    <table class="table table-sm align-middle mb-0">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Judul</th>
                                                <th>Dibuat Pada</th>
                                                <th>Diubah Pada</th>
                                                <th>
                                                    <span class="mx-4 d-inline-block">Aksi</span>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($news as $new)
                                                <tr>
                                                    <td>{{ $news->firstItem() + $loop->index }}</td>
                                                    <td>{{ $new->title }}</td>
                                                    <td>{{ $new->created_at }}</td>
                                                    <td>{{ $new->updated_at ??= '-' }}</td>
                                                    <td>
                                                        {{-- <form action="{{ route('news.show', $new->id) }}"
                                                            class="d-inline-block" method="GET">
                                                            <button type="submit" class="btn d-inline-block">
                                                                <i class="bi bi-info-lg"></i>
                                                            </button>
                                                        </form> --}}
                                                        <form action="{{ route('news.edit', $new->id) }}"
                                                            class="d-inline-block" method="GET">
                                                            <button type="submit" class="btn d-inline-block">
                                                                <i class="bi bi-pen"></i>
                                                            </button>
                                                        </form>
                                                        <form action="{{ route('news.destroy', $new->id) }}"
                                                            class="d-inline-block" method="POST">
                                                            @csrf
                                                            <input type="hidden" name="_method" value="DELETE">
                                                            <button onclick="return confirm('Berita ini akan dihapus')"
                                                                type="submit" class="btn d-inline-block">
                                                                <i class="bi bi-trash-fill"></i>
                                                            </button>
                                                        </form>
                                                    </td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                    <div class="mt-4 d-flex justify-content-center">
                                        <p>{{ $news->links() }}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
