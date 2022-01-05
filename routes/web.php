<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\GeoController;
use App\Http\Controllers\KategoriController;
use App\Http\Controllers\ProdukController;
use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    dd(route('produk.index'));
    return view('welcome');
});

Route::get('/get-ip', [GeoController::class, 'getIP']);

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
Route::resource('/produk', ProdukController::class);

// Route Kategori
Route::resource('/kategori', KategoriController::class);


// Route Visitor ================
