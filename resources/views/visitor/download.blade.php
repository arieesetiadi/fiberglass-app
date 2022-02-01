@extends('visitor.layout.template')

@section('content')
    <style>
        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
            padding: 12px 16px;
            z-index: 1;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }

    </style>
    <div class="page-title position-relative clearfix bg-primary">
        <div class="section-overlay"></div>
        <div class="container">
            <div class="breadcrumbs position-relative">
                <div class="breadcrumbs-wrap">
                    <h1 class="title">Downloads</h1>
                </div>
            </div>
        </div>
    </div>

    <div class="container py-5">
        @if (isset($downloads2))
            @foreach ($categories2 as $cCategory)
                <h1 class="my-4 text-dark">{{ $cCategory }}</h1>
                <div class="row my-4">
                    @foreach ($downloads2[$cCategory] as $item)
                        <div class="col-lg-2 my-1">
                            <div class="dropdown w-100">
                                <button class="btn btn-block btn-light border w-100">
                                    <span>{{ $item[1] }} </span> <i class="bi bi-chevron-compact-down"></i>
                                </button>
                                @foreach ($item[0] as $subItem)
                                    <div class="dropdown-content">
                                        <a target="_blank"
                                            href="{{ asset('downloadable') . '/' . $subItem->content }}">{{ $subItem->name }}</a>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    @endforeach
                </div>
                <hr>
            @endforeach
        @else
            <h1 class="my-5">Content not available</h1>
        @endif

        @if (isset($downloads1))
            @foreach ($categories1 as $cCategory)
                <h1 class="my-4 text-dark">{{ $cCategory }}</h1>
                <div class="row my-4">
                    @foreach ($downloads1[$cCategory] as $item)
                        <div class="col-lg-2">
                            <center>
                                <a target="_blank" href="{{ asset('downloadable') . '/' . $item->content }}"
                                    class="my-3 d-inline-block">
                                    @if ($item->category == 'Kartu Nama')
                                        <img src="{{ asset('downloadable') . '/' . $item->content }}"
                                            alt="{{ $item->category }}" class="rounded w-100 my-2">
                                    @endif
                                    <p class="d-inline-block mt-1 mb-2">
                                        {{ $item->name }}
                                    </p>
                                </a>
                            </center>
                        </div>
                    @endforeach
                </div>
                <hr>
            @endforeach
        @else
            <h1></h1>
        @endif


    </div>
@endsection
