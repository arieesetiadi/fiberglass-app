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

    <h1>Kategori</h1>

    <div class="container mt-4">
        <div class="row">
            <div class="col-6">
                <div class="card">
                    <div class="card-header bg-white">
                        Kategori Produk
                    </div>
                    <div class="card-body">
                        <form action="{{ route('kategori.store') }}" method="POST">
                            @csrf
                            {{-- <label for="kategori" class="form-label">Kategori :</label> --}}
                            <div class="d-flex align-content-center">
                                <input name="kategori" type="text" class="form-control" id="kategori"
                                    placeholder="Nama kategori" required>
                                <div style="width: 5px"></div>
                                <button type="submit" class="btn btn-primary">
                                    <i class="bi bi-plus-lg"></i>
                                </button>
                            </div>
                        </form>
                        <hr>
                        <table class="table table-sm">
                            <tr>
                                <th>#</th>
                                <th>Kategori</th>
                                <th>
                                    <p class="d-inline-block mx-4">Aksi</p>
                                </th>
                            </tr>
                            @foreach ($categories as $category)
                                <tr>
                                    <td>{{ $loop->index + 1 }}</td>
                                    <td>{{ $category->name }}</td>
                                    <td>
                                        <form action="{{ route('kategori.edit', $category->id) }}" class="d-inline-block"
                                            method="GET">
                                            <button type="submit" class="btn d-inline-block">
                                                <i class="bi bi-pen"></i>
                                            </button>
                                        </form>
                                        <form action="{{ route('kategori.destroy', $category->id) }}"
                                            class="d-inline-block" method="POST">
                                            @csrf
                                            <input type="hidden" name="_method" value="DELETE">
                                            <button onclick="return confirm('Kategori ini akan dihapus')" type="submit"
                                                class="btn d-inline-block">
                                                <i class="bi bi-trash-fill"></i>
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
