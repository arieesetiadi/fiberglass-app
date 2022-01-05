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

    <h1>Settings</h1>

    <div class="container p-4">
        <h5>Ganti Logo Website</h5>

        <form action="{{ route('ganti-logo') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="w-50">
                <label for="logo-image" class="form-label">Bagian ini akan merubah logo pada halaman admin &
                    halaman company profile</label>
                <input name="image" class="form-control" type="file" id="logo-image" multiple onchange="loadLogoImage()"
                    required>
            </div>
            <div class="my-3">
                <img id="logo-preview-image" src="{{ asset('assets/images/users/avatar-1.jpg') }}" alt="logo-preview"
                    width="120px">
            </div>
            <button type="submit" class="btn btn-primary" style="width: 120px">Simpan Logo</button>
        </form>

    </div>

    <script>
        function loadLogoImage() {
            let fReader = null;
            let image = document.querySelector('#logo-image');
            let imagePreview = document.querySelector('#logo-preview-image');

            fReader = new FileReader();
            fReader.readAsDataURL(image.files[0]);

            fReader.onload = function(e) {
                imagePreview.src = e.target.result;
            }
        }
    </script>
@endsection
