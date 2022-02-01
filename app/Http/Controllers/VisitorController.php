<?php

namespace App\Http\Controllers;

use App\Mail\ContactMail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;

class VisitorController extends Controller
{
    public function __construct()
    {
        GeoController::storeVisitor();
    }
    public function home()
    {
        $data['title'] = 'Home';
        $data['totalVisitors'] = DB::table('visitors')->count();
        $data['todayVisitors'] = DB::table('visitors')
            ->whereDate('created_at', now()->toDateString())
            ->count();
        $data['monthVisitors'] = DB::table('visitors')
            ->whereMonth('created_at', now()->month)
            ->whereYear('created_at', now()->year)
            ->count();
        $data['categories'] = DB::table('categories')->get();
        $data['news'] = DB::table('news')->orderByDesc('id')->limit(3)->get();

        return view('visitor.home', $data);
    }

    public function kategori($idKategori)
    {
        if ($idKategori == 0) {
            $data['products'] = DB::table('products')
                ->join('categories', 'categories.id', '=', 'products.category_id')
                ->select('products.*', 'categories.name as category')
                ->orderByDesc('products.id')
                ->paginate(24);
            $data['title'] = 'Semua Produk';
        } else {
            $data['products'] = DB::table('products')
                ->join('categories', 'categories.id', '=', 'products.category_id')
                ->where('products.category_id', $idKategori)
                ->select('products.*', 'categories.name as category')
                ->orderByDesc('products.id')
                ->paginate(24);
            $data['category'] = DB::table('categories')
                ->where('id', $idKategori)
                ->get()[0];
            $data['title'] = DB::table('categories')->where('id', $idKategori)->get('name')[0]->name;
        }

        $data['categories'] = DB::table('categories')->get();

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
        $data['faqs'] = DB::table('faqs')->get();

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
        $data['jobs'] = DB::table('jobs')->orderByDesc('id')->paginate(20);

        return view('visitor.job', $data);
    }

    public function detailJob($id)
    {
        $data['title'] = 'Detail Job Vacancy';
        $data['categories'] = DB::table('categories')->get();
        $data['job'] = DB::table('jobs')->where('id', $id)->get()[0];

        return view('visitor.detail-job', $data);
    }

    public function download()
    {
        $data['title'] = 'Download';
        $data['categories'] = DB::table('categories')->get();
        $productCategories = DB::table('categories')->get();
        $data['categories1'] = [
            'Kartu Nama',
            'Compro',
        ];
        $data['categories2'] = [
            'Brochure',
            'Price List'
        ];

        foreach ($data['categories1'] as $category) {
            // $index = strtolower(str_replace(' ', '', $category));
            $content = DB::table('downloads')
                ->where('category', $category)
                ->get();

            if (count($content) > 0) {
                $data['downloads1'][$category] = $content;
            }
        }

        foreach ($data['categories2'] as $category) {
            foreach ($productCategories as $pCategory) {
                $content = DB::table('downloads')
                    ->where('category', $category)
                    ->where('product_category', $pCategory->name)
                    ->get();

                if (count($content) > 0) {
                    $data['downloads2'][$category][$pCategory->name][] =  $content;
                    $data['downloads2'][$category][$pCategory->name][] =  $pCategory->name;
                }
            }
        }

        return view('visitor.download', $data);
    }

    public function sendEmail(Request $request)
    {
        $admins = DB::table('users')->get();

        foreach ($admins as $admin) {
            Mail::send(new ContactMail($request, $admin));
        }

        return back()->with('status', 'Pesan Berhasil Dikirim');
    }

    public function newsDetail($id)
    {
        $data['title'] = 'Detail News';
        $data['news'] = DB::table('news')->where('id', $id)->get()[0];
        $data['categories'] = DB::table('categories')->get();

        return view('visitor.news.show', $data);
    }
}
