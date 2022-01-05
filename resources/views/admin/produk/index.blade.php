@extends('admin.layout.template')

@section('content')
    <h1>Produk</h1>

    <div class="container mt-4">
        <div class="row">
            <div class="col-lg-3 col-sm-12">
                <div class="card radius-10">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div class="">
                                <p class="mb-1">Produk</p>
                                <h4 class="mb-0 text-pink">542</h4>
                            </div>
                            <div class="ms-auto fs-2 text-pink">
                                <i class="bi bi-box"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <ul class="nav nav-tabs nav-danger" role="tablist">
                            <li class="nav-item" role="presentation">
                                <a class="nav-link active" data-bs-toggle="tab" href="#dangerhome" role="tab"
                                    aria-selected="true">
                                    <div class="d-flex align-items-center">
                                        <div class="tab-icon"><i class='bi bi-box font-18 me-1'></i>
                                        </div>
                                        <div class="tab-title">Semua</div>
                                    </div>
                                </a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" data-bs-toggle="tab" href="#dangerprofile" role="tab"
                                    aria-selected="false">
                                    <div class="d-flex align-items-center">
                                        <div class="tab-icon"><i class='bi bi-box font-18 me-1'></i>
                                        </div>
                                        <div class="tab-title">Fiberglass</div>
                                    </div>
                                </a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" data-bs-toggle="tab" href="#dangercontact" role="tab"
                                    aria-selected="false">
                                    <div class="d-flex align-items-center">
                                        <div class="tab-icon"><i class='bi bi-box font-18 me-1'></i>
                                        </div>
                                        <div class="tab-title">Yacht & Boat</div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        <div class="tab-content py-3">
                            <div class="tab-pane fade show active" id="dangerhome" role="tabpanel">
                                <div class="d-flex align-items-center">
                                    <h5 class="mb-0">Order Table</h5>
                                    <form class="ms-auto position-relative">
                                        <div class="position-absolute top-50 translate-middle-y search-icon px-3"><i
                                                class="bi bi-search"></i></div>
                                        <input class="form-control ps-5" type="text" placeholder="search">
                                    </form>
                                </div>
                                <div class="table-responsive mt-3">
                                    <table class="table align-middle mb-0">
                                        <thead class="table-light">
                                            <tr>
                                                <th>Product</th>
                                                <th>Photo</th>
                                                <th>Product ID</th>
                                                <th>Status</th>
                                                <th>Amount</th>
                                                <th>Date</th>
                                                <th>Shipping</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Sport Shoes</td>
                                                <td><img src="assets/images/products/01.png" class="product-img-2"
                                                        alt="product img"></td>
                                                <td>#9405822</td>
                                                <td><span class="badge bg-light-success text-success w-100">Paid</span></td>
                                                <td>$1250.00</td>
                                                <td>03 Feb 2020</td>
                                                <td>
                                                    <div class="progress" style="height: 5px;">
                                                        <div class="progress-bar bg-success" role="progressbar"
                                                            style="width: 100%"></div>
                                                    </div>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>Man Headcap</td>
                                                <td><img src="assets/images/products/02.png" class="product-img-2"
                                                        alt="product img"></td>
                                                <td>#8304620</td>
                                                <td><span class="badge bg-light-warning text-warning w-100">Pending</span>
                                                </td>
                                                <td>$1500.00</td>
                                                <td>05 Feb 2020</td>
                                                <td>
                                                    <div class="progress" style="height: 5px;">
                                                        <div class="progress-bar bg-warning" role="progressbar"
                                                            style="width: 60%"></div>
                                                    </div>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>Sunglass</td>
                                                <td><img src="assets/images/products/03.png" class="product-img-2"
                                                        alt="product img"></td>
                                                <td>#4736890</td>
                                                <td><span class="badge bg-light-danger text-danger w-100">Failed</span></td>
                                                <td>$1400.00</td>
                                                <td>06 Feb 2020</td>
                                                <td>
                                                    <div class="progress" style="height: 5px;">
                                                        <div class="progress-bar bg-danger" role="progressbar"
                                                            style="width: 70%"></div>
                                                    </div>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>Shirt Formal</td>
                                                <td><img src="assets/images/products/04.png" class="product-img-2"
                                                        alt="product img"></td>
                                                <td>#8543765</td>
                                                <td><span class="badge bg-light-success text-success w-100">Paid</span></td>
                                                <td>$1200.00</td>
                                                <td>14 Feb 2020</td>
                                                <td>
                                                    <div class="progress" style="height: 5px;">
                                                        <div class="progress-bar bg-success" role="progressbar"
                                                            style="width: 100%"></div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Black Coat Pant</td>
                                                <td><img src="assets/images/products/06.png" class="product-img-2"
                                                        alt="product img"></td>
                                                <td>#9629240</td>
                                                <td><span class="badge bg-light-warning text-warning w-100">Pending</span>
                                                </td>
                                                <td>$1500.00</td>
                                                <td>18 Feb 2020</td>
                                                <td>
                                                    <div class="progress" style="height: 5px;">
                                                        <div class="progress-bar bg-warning" role="progressbar"
                                                            style="width: 60%"></div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Heals</td>
                                                <td><img src="assets/images/products/05.png" class="product-img-2"
                                                        alt="product img"></td>
                                                <td>#8506790</td>
                                                <td><span class="badge bg-light-danger text-danger w-100">Failed</span></td>
                                                <td>$1800.00</td>
                                                <td>21 Feb 2020</td>
                                                <td>
                                                    <div class="progress" style="height: 5px;">
                                                        <div class="progress-bar bg-danger" role="progressbar"
                                                            style="width: 40%"></div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="dangerprofile" role="tabpanel">
                                <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid.
                                    Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson
                                    artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo
                                    enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud
                                    organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia
                                    yr, vero magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes
                                    anderson 8-bit, sustainable jean shorts beard ut DIY ethical culpa terry richardson
                                    biodiesel. Art party scenester stumptown, tumblr butcher vero sint qui sapiente
                                    accusamus tattooed echo park.</p>
                            </div>
                            <div class="tab-pane fade" id="dangercontact" role="tabpanel">
                                <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's
                                    organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify
                                    pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy
                                    hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred
                                    pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie
                                    etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl
                                    craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
