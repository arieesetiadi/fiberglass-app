<?php

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\GeoController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\ProdukController;
use App\Http\Controllers\GalleryController;
use App\Http\Controllers\VisitorController;
use App\Http\Controllers\KategoriController;
use App\Http\Controllers\SocialController;
use Carbon\CarbonPeriod;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/info', function () {
    phpinfo();
    // $geo = geoip()->getLocation();

    // for ($i = 0; $i < 100; $i++) {
    //     DB::table('visitors')->insert([
    //         'ip' => $geo->ip,
    //         'country' => $geo->country,
    //         'city' => $geo->city,
    //         'state' => $geo->state_name,
    //         'time_zone' => $geo->timezone,
    //         'created_at' => now()->subDays(rand(0, 40))->toDateString()
    //     ]);
    // }
});

// Custom Routes
Route::get('/store-visitor', [GeoController::class, 'storeVisitor'])->name('store-visitor');
Route::get('/toggle-arsip', [ProdukController::class, 'toggleArsip'])->name('toggle-arsip');

// Route Auth
Route::get('/logout', [AuthController::class, 'logoutProses'])->name('logout');
Route::middleware(['guest'])->group(function () {
    Route::get('/login', [AuthController::class, 'login'])->name('login');
    Route::post('/login', [AuthController::class, 'loginProses'])->name('login');
    Route::get('/daftar', [AuthController::class, 'daftar'])->name('daftar');
    Route::post('/daftar', [AuthController::class, 'daftarProses'])->name('daftar');
});


// Route Admin ==================
Route::get('/dashboard', [AdminController::class, 'index'])->name('dashboard');
Route::get('/settings', [AdminController::class, 'settings'])->name('settings');
Route::post('/ganti-logo', [AdminController::class, 'gantiLogo'])->name('ganti-logo');

// Route Produk
Route::get('/produk/hapus-gambar/{id}', [ProdukController::class, 'hapusGambar'])->name('produk.hapus-gambar');
Route::get('/produk/search/', [ProdukController::class, 'search'])->name('produk.search');
Route::get('/produk/arsip', [ProdukController::class, 'arsip'])->name('produk.arsip');
Route::resource('/produk', ProdukController::class);

// Route Kategori
Route::resource('/kategori', KategoriController::class);

// Route Gallery
Route::resource('/gallery', GalleryController::class);

// Route Social
Route::resource('/social', SocialController::class);


// Route Visitor ================
Route::get('/', [VisitorController::class, 'home'])->name('home');
Route::get('/produk/kategori/{idKategori}', [VisitorController::class, 'kategori'])->name('produk.kategori');
Route::get('/produk/detail/{id}', [VisitorController::class, 'productDetail'])->name('product-detail');
Route::get('/kontak', [VisitorController::class, 'kontak'])->name('kontak');
Route::get('/job', [VisitorController::class, 'job'])->name('job');
Route::get('/investor', [VisitorController::class, 'investor'])->name('investor');
Route::get('/about/{kategori}', [VisitorController::class, 'about'])->name('about');
Route::get('/download', [VisitorController::class, 'download'])->name('download');
