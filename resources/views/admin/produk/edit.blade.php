@extends('admin.layout.template')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h6>Form Ubah Produk</h6>
                    </div>
                    <div class="card-body">
                        <form action="{{ route('produk.store') }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="mb-3">
                                <label for="name" class="form-label">Nama Produk :</label>
                                <input name="name" type="text" class="form-control" id="name" placeholder="Nama produk"
                                    required value="{{ $product->name }}">
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <div class="mb-3">
                                        <label for="stok" class="form-label">Stok Produk :</label>
                                        <input name="stock" type="number" class="form-control" id="stok"
                                            placeholder="Stok Produk" required value="{{ $product->stock }}">
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="mb-3">
                                        <label for="category" class="form-label">Kategori Produk :</label>
                                        <select name="category" class="form-select" aria-label="Default select example"
                                            required>
                                            @foreach ($categories as $category)
                                                @if ($category->id == $product->category_id)
                                                    <option selected value="{{ $category->id }}">{{ $category->name }}
                                                    </option>
                                                @else
                                                    <option value="{{ $category->id }}">{{ $category->name }}
                                                    </option>
                                                @endif
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="description" class="form-label">Deskripsi Produk :</label>
                                <textarea name="description" class="form-control" id="description"
                                    rows="4">{{ $product->description }}</textarea>
                            </div>
                            <div class="mb-3">
                                <label for="images" class="form-label">Upload Foto Produk :</label>
                                <input name="images[]" class="form-control" type="file" id="images" multiple
                                    onchange="loadProductsImage()">
                            </div>
                            <div class="mb-3">
                                <div class="row images-preview-wrapper d-flex align-items-end">
                                    @forelse ($images as $image)
                                        <div class="col-3 d-flex my-3 justify-content-center">
                                            <div>
                                                <center>
                                                    <img id="{{ $image->id }}" width="80%"
                                                        src="{{ asset('assets/images/products/') . '/' . $image->image }}"
                                                        class="img-fluid d-block {{ $image->is_hide ? 'hide' : '' }}"
                                                        alt="">
                                                    <small class="d-inline-block my-2">{{ $image->image }}</small>
                                                </center>
                                                <div class="form-check form-switch px-5">
                                                    <input class="form-check-input arsip-switch" type="checkbox" id="arsip"
                                                        {{ $image->is_hide ? 'checked' : '' }}
                                                        data-id="{{ $image->id }}"
                                                        data-url="{{ route('toggle-arsip') }}">
                                                    <label class="form-check-label">Arsip</label>
                                                </div>
                                            </div>
                                        </div>
                                    @empty
                                        <div></div>
                                    @endforelse
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
