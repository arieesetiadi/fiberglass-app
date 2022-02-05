@extends('visitor.layout.template')

@section('content')
    <div class="page-title position-relative clearfix bg-primary">
        {{-- <img src="{{ asset('assets-2/images/gallery/01.png') }}" alt="Banner"> --}}
        <div class="section-overlay"></div>
        <div class="container">
            <div class="breadcrumbs position-relative">
                <div class="breadcrumbs-wrap">
                    <h1 class="title">Investor Relationship</h1>
                    <ul class="breadcrumbs-inner">
                        <li><a href="#">We are open to new investor in any kind of cooperation relationship & open
                                distributor or reseller
                            </a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div><!-- page-title -->
    <div class="container-fluid px-5">
        <h1 class="text-center text-dark font-weight-bold my-5">Our Partners (Brands)</h1>
        <div class="row mb-5">
            @foreach ($investors as $investor)
                <div class="col-lg-3 my-2">
                    <div class="card">
                        <div class="card-body">
                            <center style="height: 100px" class="d-flex align-items-center p-5 justify-content-center">
                                @if ($investor->image)
                                    <img style="height: 95px"
                                        src="{{ asset('assets/images/brands/') . '/' . $investor->image }}"
                                        alt="{{ $investor->name }}" class="rounded">
                                @else
                                    <h2 class="text-center text-dark">
                                        {{ strtoupper($investor->name) }}
                                    </h2>
                                @endif
                            </center>
                            <hr>
                            <center>
                                {{ $investor->name }}
                            </center>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
        <hr>
        <h1 class="text-center text-dark font-weight-bold my-5">Soon</h1>
        <div class="row mb-5">
            @foreach ($investorsSoon as $investor)
                <div class="col-lg-3 my-2">
                    <div class="card">
                        <div class="card-body">
                            <center>
                                {{ $investor->name }}
                            </center>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
@endsection
