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
        <div class="row">
            @foreach ($faqs as $i => $faq)
                <div class="col-lg-6 col-12">
                    <table border="0" class="table table-responsive-sm table-borderless">
                        <tr>
                            <td style="width: 50px">
                                <img width="25px" src="{{ asset('assets/images/icons/question.png') }}" alt="">
                            </td>
                            <th style="width: 10px"> : </th>
                            <th style="word-wrap: break-word">
                                <a type="button" class="faq-modal-button" data-toggle="modal"
                                    data-target="#faqModal{{ $i }}">
                                    {{ $faq->question }}
                                </a>
                            </th>
                        </tr>
                        <!-- Modal -->
                        <div class="modal fade" id="faqModal{{ $i }}" tabindex="-1" role="dialog"
                            aria-labelledby="faqModalTitle" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header p-4">
                                        <h5 class="modal-title text-dark font-weight-bold" id="faq-modal-title">
                                            {{ $faq->question }}</h5>
                                    </div>
                                    <div id="faq-modal-body-{{ $i }}" class="p-4">
                                        {!! $faq->answer !!}
                                    </div>
                                    <div class="modal-footer">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </table>
                </div>
            @endforeach
        </div>
    </div>
@endsection
