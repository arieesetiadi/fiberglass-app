@extends('admin.layout.template')

@section('content')
    <h1>Settings</h1>

    <div class="container p-4">
        <h5>Ganti Logo Website</h5>
        <form action="{{ route('ganti-logo') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="mb-3">
                <label for="logo-image" class="form-label">Bagian ini akan merubah logo pada halaman admin &
                    halaman company profile</label>
                <input class="form-control" type="file" id="logo-image" multiple onchange="loadLogoImage()">
            </div>
        </form>

        <img id="logo-preview-image" src="{{ asset('assets/images/users/avatar-1.jpg') }}" alt="logo-preview"
            width="120px" class="shadow rounded">
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
