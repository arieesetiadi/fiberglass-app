@extends('visitor.layout.template')

@section('content')
    <div class="page-title position-relative clearfix bg-primary">
        {{-- <img src="{{ asset('assets-2/images/gallery/01.png') }}" alt="Banner"> --}}
        <div class="section-overlay"></div>
        <div class="container">
            <div class="breadcrumbs position-relative">
                <div class="breadcrumbs-wrap">
                    <h1 class="title">Job Vacancy</h1>
                    {{-- <ul class="breadcrumbs-inner">
                        <li><a href="#">Marketing Full Time & Part Time & Business Development
                            </a></li>
                    </ul> --}}
                </div>
            </div>
        </div>
    </div><!-- page-title -->

    <div class="container my-5">
        <div class="row">
            @forelse ($jobs as $job)
                <div class="col-12 col-sm-6 col-lg-3 col-md-4">
                    <div class="w-100 p-5 border rounded">
                        <div class="">
                            <h5 class="h5 text-dark">{{ $job->title }}</h5>
                            <div>
                                {{-- <img src="{{ asset('assets/images/icons/date.png') }}" alt="Date"
                                            class="d-inline-block" width="20px"> --}}
                                <span class="card-subtitle my-2 text-muted">
                                    {{ now()->make($job->created_at)->format('l, d F Y') }}</span>
                                |
                                {{-- <img src="{{ asset('assets/images/icons/tag.png') }}" alt="Date"
                                            class="d-inline-block" width="10px"> --}}
                                <span>Job Vacancy</span>
                            </div>
                            <hr>
                            <div style="overflow: hidden; text-overflow: ellipsis; height: 135px">
                                {!! $job->body !!}
                            </div>
                            <hr>
                            {{-- {{ route('jobs-detail', $job->id) }} --}}
                            <a href="{{ route('detail-job', $job->id) }}" class="btn btn-light btn-block">
                                More <i class="fas fa-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                </div>

                <center>
                    <p class="d-block mt-3">{{ $jobs->links() }}</p>
                </center>
            @empty
                <h6 class="m-5 text-justify">We have no job vacancy currently, please check our website regularly to find
                    out
                    our job vacancy later.
                    You can also send your Resume to our email and we will contact you when we have suitable opportunity for
                    you</h6>
            @endforelse
        </div>
    </div>
@endsection
