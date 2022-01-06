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
    </ul>
    <!--end navigation-->
</aside>
<!--end sidebar -->
