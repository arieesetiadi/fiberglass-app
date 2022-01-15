<?php

namespace App\Http\Controllers;

use App\Mail\ContactMail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;

class VisitorController extends Controller
{
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
        $data['news'] = DB::table('news')->orderByDesc('id')->limit(3)->get();

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
            ->paginate(24);

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
        $data['socials'] = DB::table('socials')->get();

        return view('visitor.kontak', $data);
    }

    public function about($kategori)
    {
        $data['title'] = $kategori;
        $kategori = str_replace(' ', '-', strtolower($kategori));
        $data['categories'] = DB::table('categories')->get();
        $data['galleries'] = DB::table('gallery')->orderByDesc('id')->paginate(24);

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

    public function sendEmail(Request $request)
    {
        $admins = DB::table('users')->get();

        foreach ($admins as $admin) {
            Mail::send(new ContactMail($request, $admin));
        }
    }

    public function newsDetail($id)
    {
        $data['title'] = 'Detail News';
        $data['news'] = DB::table('news')->where('id', $id)->get()[0];
        $data['categories'] = DB::table('categories')->get();

        return view('visitor.news.show', $data);
    }
}
