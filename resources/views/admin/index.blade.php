@extends('admin.layout.template')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-sm-12">
                <div class="card radius-10">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div class="">
                                <p class="mb-1">Produk</p>
                                <h4 class="mb-0 text-primary">{{ $countProducts }}</h4>
                            </div>
                            <div class="ms-auto fs-2 text-primary">
                                <i class="bi bi-box"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-12">
                <div class="card radius-10">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div class="">
                                <p class="mb-1">Gallery</p>
                                <h4 class="mb-0 text-primary">{{ $countGallery }}</h4>
                            </div>
                            <div class="ms-auto fs-2 text-primary">
                                <i class="bi bi-images"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-12">
                <div class="card radius-10">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div class="">
                                <p class="mb-1">Pengguna</p>
                                <h4 class="mb-0 text-primary">{{ $countUsers }}</h4>
                            </div>
                            <div class="ms-auto fs-2 text-primary">
                                <i class="bi bi-people"></i>
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
                        </ul>
                        <div class="tab-content pt-3">
                            <div class="tab-pane fade show active" id="dangerhome" role="tabpanel">
                                <div class="d-flex align-items-center">
                                    <h5 class="mb-0">Tabel Pengunjung</h5>
                                </div>
                                <div class="table-responsive mt-3">
                                    <table class="table table-sm align-middle mb-0">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>IP Address</th>
                                                <th>Country</th>
                                                <th>City</th>
                                                <th>State</th>
                                                <th>Time Zone</th>
                                                <th>Diakses Pada</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @forelse ($visitors as $i => $visitor)
                                                <tr>
                                                    <td>{{ $visitors->firstItem() + $i }}</td>
                                                    <td>{{ $visitor->ip }}</td>
                                                    <td>{{ $visitor->country }}</td>
                                                    <td>{{ $visitor->city }}</td>
                                                    <td>{{ $visitor->state }}</td>
                                                    <td>{{ $visitor->time_zone }}</td>
                                                    <td>{{ $visitor->created_at }}</td>
                                                </tr>
                                            @empty
                                                <h6>Data pengunjung tidak tersedia</h6>
                                            @endforelse
                                        </tbody>
                                    </table>
                                    <div class="mt-4 d-flex justify-content-center">
                                        <p></p>
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
