<!--start sidebar -->
<aside class="semi-dark sidebar-wrapper" data-simplebar="true">
    <div class="sidebar-header">
        <div>
            <img src="{{ asset('assets/images/logos/') . '/' . $logo }}" class="logo-icon rounded" alt="logo icon">
        </div>
        <div>
            <h5 class="logo-text">Fiberglass</h5>
        </div>
        <div class="toggle-icon ms-auto"> <i class="bi bi-list"></i>
        </div>
    </div>
    <!--navigation-->
    <ul class="metismenu" id="menu">
        <li>
            <a href="{{ route('dashboard') }}" class="" aria-expanded="true">
                <div class="parent-icon"><i class="bi bi-house-fill"></i>
                </div>
                <div class="menu-title">Dashboard</div>
            </a>
        </li>

        <li>
            <a href="{{ route('produk.index') }}" class="" aria-expanded="true">
                <div class="parent-icon"><i class="bi bi-box"></i>
                </div>
                <div class="menu-title">Produk</div>
            </a>
        </li>

        <li>
            <a href="{{ route('kategori.index') }}" class="" aria-expanded="true">
                <div class="parent-icon"><i class="bi bi-card-checklist"></i>
                </div>
                <div class="menu-title">Kategori</div>
            </a>
        </li>

        <li>
            <a href="{{ route('gallery.index') }}" class="" aria-expanded="true">
                <div class="parent-icon"><i class="bi bi-images"></i>
                </div>
                <div class="menu-title">Gallery</div>
            </a>
        </li>

        <li>
            <a href="{{ route('produk.arsip') }}" class="" aria-expanded="true">
                <div class="parent-icon"><i class="bi bi-card-image"></i>
                </div>
                <div class="menu-title">Gambar Arsip</div>
            </a>
        </li>

        <li>
            <a href="{{ route('social.index') }}" class="" aria-expanded="true">
                <div class="parent-icon"><i class="bi bi-whatsapp"></i>
                </div>
                <div class="menu-title">Sosial Media</div>
            </a>
        </li>

        <li>
            <a href="{{ route('news.index') }}" class="" aria-expanded="true">
                <div class="parent-icon"><i class="bi bi-newspaper"></i>
                </div>
                <div class="menu-title">Berita</div>
            </a>
        </li>

        <li>
            <a href="{{ route('faq.index') }}" class="" aria-expanded="true">
                <div class="parent-icon"><i class="bi bi-question-square"></i>
                </div>
                <div class="menu-title">FAQ</div>
            </a>
        </li>

        <li>
            <a href="{{ route('downloads.index') }}" class="" aria-expanded="true">
                <div class="parent-icon"><i class="bi bi-cloud-arrow-down"></i>
                </div>
                <div class="menu-title">Downloads</div>
            </a>
        </li>

        <li>
            <a href="{{ route('jobs.index') }}" class="" aria-expanded="true">
                <div class="parent-icon"><i class="bi bi-person-lines-fill"></i>
                </div>
                <div class="menu-title">Job Vacancy</div>
            </a>
        </li>
    </ul>
    <!--end navigation-->
</aside>
<!--end sidebar -->
