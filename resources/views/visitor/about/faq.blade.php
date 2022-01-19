@extends('visitor.layout.template')

@section('content')
    <div class="page-title position-relative clearfix bg-primary">
        <div class="section-overlay"></div>
        <div class="container">
            <div class="breadcrumbs position-relative">
                <div class="breadcrumbs-wrap">
                    <h1 class="title">FAQ</h1>
                    <ul class="breadcrumbs-inner">
                        <li><a href="#">Frequently Asked Questions</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="container py-5">
        @foreach ($faqs as $faq)
            <div class="row d-flex justify-content-center">
                <div class="col-lg-10">
                    <table border="0" class="table table-borderless">
                        <tr>
                            <td>
                                <img width="40px" src="{{ asset('assets/images/icons/question.png') }}" alt="">
                            </td>
                            <th> : </th>
                            <th>
                                <p class="text-dark font-weight-bold">{{ $faq[0] }}</p>
                            </th>
                        </tr>
                        <tr>
                            <td>
                                <img width="40px" src="{{ asset('assets/images/icons/ceo.png') }}" alt="">
                            </td>
                            <td> : </td>
                            <td>
                                <p>{{ $faq[1] }}</p>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <hr>
        @endforeach
    </div>
@endsection
