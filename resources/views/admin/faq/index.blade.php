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
                            <a class="nav-link border" href="{{ route('faq.create') }}">
                                <div class="d-flex align-items-center">
                                    <div class="tab-icon"><i class="bi bi-plus-lg"></i>
                                    </div>
                                </div>
                            </a>
                        </ul>
                        <div class="tab-content pt-3">
                            <div class="tab-pane fade show active" id="dangerhome" role="tabpanel">
                                <div class="d-flex align-items-center">
                                    <h5 class="mb-0">Tabel FAQ</h5>
                                </div>
                                <div class="table-responsive mt-3">
                                    <table class="table table-sm align-middle mb-0">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Pertanyaan</th>
                                                <th>Jawaban</th>
                                                <th>
                                                    <span class="mx-4 d-inline-block">Aksi</span>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @forelse ($faqs as $faq)
                                                <tr>
                                                    {{-- <td><img src="{{ asset('assets/images/users/avatar-1.jpg') }}"
                                                        class="product-img-2" alt="product img"></td>
                                                        <td>#9405822</td> --}}
                                                    <td>{{ $faqs->firstItem() + $loop->index }}</td>
                                                    <td>{{ $faq->question }}</td>
                                                    <td>{!! $faq->answer !!}</td>
                                                    <td>
                                                        <form action="{{ route('faq.edit', $faq->id) }}"
                                                            class="d-inline-block" method="GET">
                                                            <button type="submit" class="btn d-inline-block">
                                                                <i class="bi bi-pen"></i>
                                                            </button>
                                                        </form>
                                                        <form action="{{ route('faq.destroy', $faq->id) }}"
                                                            class="d-inline-block" method="POST">
                                                            @csrf
                                                            <input type="hidden" name="_method" value="DELETE">
                                                            <button onclick="return confirm('FAQ ini akan dihapus')"
                                                                type="submit" class="btn d-inline-block">
                                                                <i class="bi bi-trash-fill"></i>
                                                            </button>
                                                        </form>
                                                    </td>
                                                </tr>
                                            @empty
                                                <h6>Data FAQ Tidak Tersedia.</h6>
                                            @endforelse
                                        </tbody>
                                    </table>
                                    <div class="mt-4 d-flex justify-content-center">
                                        <p>{{ $faqs->links() }}</p>
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
