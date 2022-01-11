<?php

namespace App\Http\Controllers;

use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class ProdukController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }
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

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data['title'] = 'Ubah Produk';
        $data['categories'] = DB::table('categories')->get();
        $data['product'] = DB::table('products')
            ->where('products.id', $id)
            ->get()[0];
        $data['images'] = DB::table('product_images')
            ->where('product_id', $id)
            ->get();

        return view('admin.produk.edit', $data);
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
        $slug = Str::of($request->name)->lower()->replace(' ', '-');
        DB::table('products')
            ->where('id', $id)
            ->update([
                'name' => $request->name,
                'slug' => $slug,
                'stock' => $request->stock,
                'description' => $request->description,
                'category_id' => $request->category,
                'user_id' => auth()->user()->id,
                'updated_at' => now()->toDateTimeString()
            ]);

        if ($request->file('images')) {
            $images = $request->file('images');

            foreach ($images as $image) {
                $imageName = time() . ' ' . strtolower($image->getClientOriginalName());
                $image->move('assets/images/products/', $imageName);

                DB::table('product_images')->insert([
                    'image' => $imageName,
                    'is_hide' => false,
                    'product_id' => $id,
                    'created_at' => now()->toDateTimeString()
                ]);
            }
        }

        return redirect()->back()->with('status', 'Berhasil mengubah data produk');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $images = DB::table('product_images')->where('product_id', $id);
        $product = DB::table('products')->where('id', $id);

        if (count($images->get()) > 0) {
            foreach ($images->get() as $image) {
                $path = public_path('assets/images/products') . '/' . $image->image;
                if (File::exists($path)) {
                    File::delete($path);
                }
            }
        }

        $images->delete();
        $product->delete();

        return redirect()->route('produk.index')->with('status', 'Berhasil manghapus data produk');
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

    public function toggleArsip(Request $request)
    {
        $image = DB::table('product_images')
            ->where('id', $request->id)
            ->update([
                'is_hide' => $request->isHide
            ]);

        return response()->json($image);
    }

    public function hapusGambar($id)
    {
        $image = DB::table('product_images')->where('id', $id);
        $path = public_path('assets/images/products') . '/' . $image->get()[0]->image;

        if (File::exists($path)) {
            // dd('Exist');
            File::delete($path);
        }

        $image->delete();

        return back()->with('status', 'Berhasil menghapus gambar produk');
    }
}
