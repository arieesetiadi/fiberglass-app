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

    <h1>Ubah Social Media</h1>

    <div class="container mt-4">
        <div class="row">
            <div class="col-lg-5">
                <div class="card">
                    <div class="card-header bg-white">
                        Ubah Sosial Media
                    </div>
                    <div class="card-body">
                        <form action="{{ route('social.update', $social->id) }}" method="POST">
                            @csrf
                            @method('PUT')
                            <div class="mb-3">
                                <label for="name" class="form-label">Nama Akun :</label>
                                <input name="name" type="text" class="form-control" id="name" placeholder="Nama Akun"
                                    required value="{{ $social->name }}">
                            </div>
                            <div class="mb-3">
                                <label for="name" class="form-label">Jenis Social Media :</label>
                                <select name="type" class="form-select" aria-label="Default select example" required>
                                    <option value="" hidden>Jenis Social Media</option>
                                    @foreach ($types as $type)
                                        @if ($type->slug == $social->type)
                                            <option value="{{ $type->slug }}" selected>{{ $type->name }}</option>
                                        @else
                                            <option value="{{ $type->slug }}">{{ $type->name }}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="url" class="form-label">URL :</label>
                                <input name="url" type="text" class="form-control" id="url" placeholder="URL Akun"
                                    required value="{{ $social->url }}">
                            </div>
                            <div class="mb-3">
                                <button class="btn btn-primary">Ubah</button>
                            </div>
                        </form>
                        <hr>
                    </div>
                </div>
            </div>
            <div class="col-lg-7">
                <div class="table-responsive mt-3">
                    <table class="table table-sm align-middle mb-0">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Nama</th>
                                <th>Jenis</th>
                                <th>URL</th>
                                <th>
                                    <span class="mx-4 d-inline-block">Aksi</span>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($socials as $s)
                                <tr>
                                    <td>{{ $loop->index + 1 }}</td>
                                    <td>{{ $s->name }}</td>
                                    <td>
                                        <img width="35px"
                                            src="{{ asset('assets/images/icons/') . '/' . $s->type . '.png' }}"
                                            alt="{{ $s->type }}">
                                    </td>
                                    <td>
                                        <a target="_blank" href="{{ $s->url }}">{{ $s->url }}</a>
                                    </td>
                                    <td>
                                        <form action="{{ route('social.edit', $s->id) }}" class="d-inline-block"
                                            method="GET">
                                            <button type="submit" class="btn d-inline-block">
                                                <i class="bi bi-pen"></i>
                                            </button>
                                        </form>
                                        <form action="{{ route('social.destroy', $s->id) }}" class="d-inline-block"
                                            method="POST">
                                            @csrf
                                            <input type="hidden" name="_method" value="DELETE">
                                            <button onclick="return confirm('Sosial media ini akan dihapus')" type="submit"
                                                class="btn d-inline-block">
                                                <i class="bi bi-trash-fill"></i>
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
