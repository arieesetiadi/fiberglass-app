@extends('admin.layout.template')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h6>Form Tambah Gallery</h6>
                    </div>
                    <div class="card-body">
                        <form action="{{ route('gallery.store') }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="mb-3">
                                <label for="name" class="form-label">Nama Gallery :</label>
                                <input name="name" type="text" class="form-control" id="name" placeholder="Nama gallery"
                                    required>
                            </div>
                            <div class="mb-3">
                                <label for="images" class="form-label">Upload Foto Gallery :</label>
                                <input name="images[]" class="form-control" type="file" id="images" multiple
                                    onchange="loadGalleryImage()">
                            </div>
                            <div class="mb-3">
                                <div class="row images-preview-wrapper d-flex align-items-end">

                                </div>
                            </div>
                            <div class="mb-3">
                                <button type="submit" class="btn btn-primary">Simpan</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        CKEDITOR.replace('description');
    </script>

    <script>
        function loadGalleryImage() {
            resetInputFiles();
            let image = document.querySelector('#images');
            let imageFiles = image.files;
            let galleryImagesStr = ``;

            for (let i = 0; i < imageFiles.length; i++) {
                let fReader = new FileReader();
                let imageFile = imageFiles[i];
                fReader.readAsDataURL(imageFile);

                fReader.onload = function(e) {
                    galleryImagesStr = `
                    <div id="new${i}" class="image-preview-wrapper col-4 d-flex my-3 justify-content-center">
                        <div>
                            <center>
                                <img width="80%" src="${e.target.result}"
                                    class="img-fluid d-block" alt="">
                                <small>${imageFile.name}</small>
                            </center>
                            
                        </div>
                    </div>
                    `;

                    $('.images-preview-wrapper').append(galleryImagesStr);
                }
            }
        }

        function resetInputFiles() {
            $('#images').on('click', function() {
                $('#images').val('');
                $('.image-preview-wrapper').remove();
            });
        }
    </script>
@endsection
