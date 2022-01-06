<?php

namespace App\Http\Controllers;

use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redis;

class ProdukController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $data['title'] = 'Produk';
        $data['categories'] = DB::table('categories')->get();
        $data['counts'] = DB::table('products')->count();
        $data['products'] = DB::table('products')
            ->join('users', 'users.id', '=', 'products.user_id')
            ->join('categories', 'categories.id', '=', 'products.category_id')
            ->select('products.*', 'categories.name as category', 'users.name as user')
            ->orderBy('id', 'DESC')
            ->paginate(50);

        return view('admin.produk.index', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['title'] = 'Tambah Produk';
        $data['categories'] = DB::table('categories')->get();
        return view('admin.produk.create', $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $slug = Str::of($request->name)->lower()->replace(' ', '-');
        $productId = DB::table('products')->insertGetId([
            'name' => $request->name,
            'slug' => $slug,
            'stock' => $request->stock,
            'description' => $request->description,
            'category_id' => $request->category,
            'user_id' => auth()->user()->id,
            'created_at' => now()->toDateTimeString()
        ]);

        if ($request->file('images')) {
            $images = $request->file('images');

            foreach ($images as $image) {
                $imageName = time() . ' ' . strtolower($image->getClientOriginalName());
                $image->move('assets/images/products/', $imageName);

                DB::table('product_images')->insert([
                    'image' => $imageName,
                    'is_hide' => false,
                    'product_id' => $productId,
                    'created_at' => now()->toDateTimeString()
                ]);
            }
        }

        return redirect()->route('produk.index')->with('status', 'Berhasil menambah produk baru');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function search(Request $request)
    {
        $data['title'] = 'Produk';
        $data['categories'] = DB::table('categories')->get();
        $data['counts'] = DB::table('products')->count();
        $data['products'] = DB::table('products')
            ->join('users', 'users.id', '=', 'products.user_id')
            ->join('categories', 'categories.id', '=', 'products.category_id')
            ->where('products.name', 'like', '%' . $request->search . '%')
            ->select('products.*', 'categories.name as category', 'users.name as user')
            ->orderBy('id', 'DESC')
            ->paginate(50);

        return view('admin.produk.index', $data);
    }
}
