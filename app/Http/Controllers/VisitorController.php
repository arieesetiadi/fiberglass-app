<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

class VisitorController extends Controller
{
    public function home()
    {
        $data['title'] = 'Home';
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

    public function kontak()
    {
        $data['title'] = 'Kontak';
        $data['categories'] = DB::table('categories')->get();
        
        return view('visitor.kontak', $data);
    }
}
