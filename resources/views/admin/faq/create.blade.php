@extends('admin.layout.template')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h6>Form Tambah FAQ</h6>
                    </div>
                    <div class="card-body">
                        <form action="{{ route('faq.store') }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="mb-3">
                                <label for="question" class="form-label">Pertanyaan :</label>
                                <input name="question" type="text" class="form-control" id="question"
                                    placeholder="Pertanyaan" required>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="mb-3">
                                        <label for="answer" class="form-label">Jawaban :</label>
                                        <textarea name="answer" class="form-control" id="answer" rows="4"
                                            required></textarea>
                                    </div>
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
        CKEDITOR.replace('answer');
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
