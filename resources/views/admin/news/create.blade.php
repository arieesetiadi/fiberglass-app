@extends('admin.layout.template')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h6>Form Tambah Berita</h6>
                    </div>
                    <div class="card-body">
                        <form action="{{ route('news.store') }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="mb-3">
                                <label for="title" class="form-label">Judul Berita :</label>
                                <input name="title" type="text" class="form-control" id="title" placeholder="Judul berita"
                                    required>
                            </div>
                            <div class="mb-3">
                                <label for="body" class="form-label">Isi Berita :</label>
                                <textarea name="body" class="form-control" id="body" rows="4"></textarea>
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
        CKEDITOR.replace('body');
    </script>

    <script>
        function loadProductsImage() {
            let image = document.querySelector('#images');
            let imageFiles = image.files;
            let productImagesStr = ``;

            for (let i = 0; i < imageFiles.length; i++) {
                let fReader = new FileReader();
                let imageFile = imageFiles[i];
                fReader.readAsDataURL(imageFile);

                fReader.onload = function(e) {
                    productImagesStr = `
                    <div class="col-4 d-flex my-3 justify-content-center">
                        <center>
                            <img width="80%" src="${e.target.result}"
                                class="img-fluid d-block" alt="">
                            <small>${imageFile.name}</small>
                        </center>
                    </div>
                    `;

                    $('.images-preview-wrapper').append(productImagesStr);
                }
            }
        }
    </script>
@endsection
