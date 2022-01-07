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
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h6>Form Ubah Produk</h6>
                    </div>
                    <div class="card-body">
                        <form action="{{ route('produk.update', $product->id) }}" method="POST"
                            enctype="multipart/form-data">
                            @csrf
                            @method('PUT')
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
                                <label for="images" class="form-label">Gambar Produk Saat Ini :</label>
                            </div>
                            <div class="mb-3">
                                <div class="row d-flex align-items-end">
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
                                                    <a href="{{ route('produk.hapus-gambar', $image->id) }}"
                                                        class="text-dark mx-3"
                                                        onclick="return confirm('Gambar akan dihapus')">
                                                        <i class="bi bi-trash"></i>
                                                        Hapus
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    @empty
                                        <div></div>
                                    @endforelse
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="images" class="form-label">Tambah Gambar Produk Lagi :</label>
                                <div class="d-flex align-items-center">
                                    <input name="images[]" class="form-control" type="file" id="images" multiple
                                        onchange="loadProductsImage()">
                                    <div class="mx-1"></div>
                                    <a role="button" class="btn btn-danger" onclick="resetInputFiles()">
                                        <i class="bi bi-arrow-repeat"></i>
                                    </a>
                                </div>
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

                    $('.images-preview-wrapper').append(productImagesStr);
                }
            }
            // <a role="button" class="hapus-gambar text-dark mx-3"
            //                     onclick="hapusGambar('${i}')"
            //                     data-target="${imageFile.name}">
            //                     <i class="bi bi-trash"></i>
            //                     Hapus
            //                 </a>

        }

        function resetInputFiles() {
            if (confirm('Input file akan dikosongkan')) {
                $('#images').val('');
                $('.image-preview-wrapper').remove();
            }
        }
    </script>
@endsection
