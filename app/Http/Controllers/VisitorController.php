<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

class VisitorController extends Controller
{
    public function __construct()
    {
        $this->middleware('guest');
    }

    public function home()
    {
        GeoController::storeVisitor();

        $data['title'] = 'Home';
        $data['totalVisitors'] = DB::table('visitors')->count();
        $data['todayVisitors'] = DB::table('visitors')
            ->whereDate('created_at', now()->toDateString())
            ->count();
        $data['monthVisitors'] = DB::table('visitors')
            ->whereMonth('created_at', now()->month)
            ->count();
        $data['categories'] = DB::table('categories')->get();

        return view('visitor.home', $data);
    }

    public function kategori($idKategori)
    {
        // $data['products'] = DB::table('products')
        //     ->join('categories', 'categories.id', '=', 'products.category_id')
        //     ->join('product_images', 'product_images.product_id', '=', 'products.id')
        //     ->where('products.category_id', $idKategori)
        //     ->where('product_images.is_hide', false)
        //     ->distinct()
        //     ->select('products.*', 'categories.name as category', 'product_images.image as image')
        //     ->paginate(25);

        $data['products'] = DB::table('products')
            ->join('categories', 'categories.id', '=', 'products.category_id')
            ->where('products.category_id', $idKategori)
            ->select('products.*', 'categories.name as category')
            ->orderByDesc('products.id')
            ->paginate(25);

        $data['category'] = DB::table('categories')
            ->where('id', $idKategori)
            ->get()[0];
        $data['categories'] = DB::table('categories')->get();
        $data['title'] = DB::table('categories')->where('id', $idKategori)->get('name')[0]->name;

        return view('visitor.produk.index', $data);
    }

    public function productDetail($id)
    {
        $data['title'] = 'Detail Produk';
        $data['categories'] = DB::table('categories')->get();
        $data['product'] = DB::table('products')
            ->where('products.id', $id)
            ->get()[0];
        $data['category'] = DB::table('categories')
            ->where('id', $data['product']->category_id)
            ->get()[0];
        $data['images'] = DB::table('product_images')
            ->where('product_id', $id)
            ->where('is_hide', false)
            ->get();

        return view('visitor.produk.show', $data);
    }

    public function kontak()
    {
        $data['title'] = 'Kontak';
        $data['categories'] = DB::table('categories')->get();

        return view('visitor.kontak', $data);
    }

    public function about($kategori)
    {
        $data['title'] = $kategori;
        $kategori = str_replace(' ', '-', strtolower($kategori));
        $data['categories'] = DB::table('categories')->get();

        return view('visitor.about.' . $kategori, $data);
    }

    public function investor()
    {
        $data['title'] = 'Investor Relationship';
        $data['investors'] = DB::table('investors')->where('status', null)->get();
        $data['investorsSoon'] = DB::table('investors')->where('status', 'soon')->get();
        $data['categories'] = DB::table('categories')->get();

        return view('visitor.investor', $data);
    }

    public function job()
    {
        $data['title'] = 'Job Vacancy';
        $data['categories'] = DB::table('categories')->get();

        return view('visitor.job', $data);
    }

    public function download()
    {
        dd('Download');
    }
}
