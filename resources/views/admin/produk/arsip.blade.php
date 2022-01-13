@extends('admin.layout.template')

@section('content')
    <h1>Gambar Arsip</h1>

    <div class="container">
        <div class="row images-preview-wrapper d-flex align-items-end">
            @forelse ($arsips as $i => $arsip)
                <div class="col-3 d-flex my-3 justify-content-center">
                    <div>
                        <center>
                            <img id="{{ $arsip->id }}" width="80%"
                                src="{{ asset('assets/images/products/') . '/' . $arsip->image }}"
                                class="img-fluid d-block {{ $arsip->is_hide ? 'hide' : '' }}" alt="">
                            <small class="d-inline-block my-2">{{ $arsip->image }}</small>
                        </center>
                        <div class="form-check form-switch px-5">
                            <input class="form-check-input arsip-switch" type="checkbox" id="arsip"
                                {{ $arsip->is_hide ? 'checked' : '' }} data-id="{{ $arsip->id }}"
                                data-url="{{ route('toggle-arsip') }}">
                            <label class="form-check-label">Arsip</label>
                        </div>
                    </div>
                </div>
            @empty
                <h1>Arsip tidak tersedia</h1>
            @endforelse
        </div>
    </div>
@endsection
