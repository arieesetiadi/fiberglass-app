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

    <h1>Download Content</h1>

    <div class="container mt-4">
        <div class="row">
            <div class="col-lg-5">
                <div class="card">
                    <div class="card-header bg-white">
                        Tambah Downloads
                    </div>
                    <div class="card-body">
                        <ul class="nav nav-tabs nav-primary" role="tablist">
                            <li class="nav-item" role="presentation">
                                <a class="nav-link active" data-bs-toggle="tab" href="#primaryhome" role="tab"
                                    aria-selected="true">
                                    <div class="d-flex align-items-center">
                                        <div class="tab-icon"><i class="bx bx-home font-18 me-1"></i>
                                        </div>
                                        <div class="tab-title">URL</div>
                                    </div>
                                </a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" data-bs-toggle="tab" href="#primaryprofile" role="tab"
                                    aria-selected="false">
                                    <div class="d-flex align-items-center">
                                        <div class="tab-icon"><i class="bx bx-user-pin font-18 me-1"></i>
                                        </div>
                                        <div class="tab-title">Files / Image</div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        <div class="tab-content py-3">
                            <div class="tab-pane fade active show" id="primaryhome" role="tabpanel">
                                <form action="{{ route('downloads.store') }}" method="POST">
                                    @csrf
                                    <div class="mb-3">
                                        <label for="name" class="form-label">Nama Konten :</label>
                                        <input name="name" type="text" class="form-control" id="name"
                                            placeholder="Nama Konten" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="content" class="form-label">URL :</label>
                                        <input name="content" type="text" class="form-control" id="content"
                                            placeholder="URL" required>
                                    </div>
                                    <div class="mb-3">
                                        <button class="btn btn-primary">Simpan</button>
                                    </div>
                                </form>
                            </div>
                            <div class="tab-pane fade" id="primaryprofile" role="tabpanel">
                                <form action="{{ route('downloads.store') }}" method="POST" enctype="multipart/form-data">
                                    @csrf
                                    <div class="mb-3">
                                        <label for="name" class="form-label">Nama Konten :</label>
                                        <input name="name" type="text" class="form-control" id="name"
                                            placeholder="Nama Konten" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="content" class="form-label">File / Image :</label>
                                        <input name="content" type="file" class="form-control" id="content" required>
                                    </div>
                                    <div class="mb-3">
                                        <button class="btn btn-primary">Simpan</button>
                                    </div>
                                </form>
                            </div>
                        </div>
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
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
