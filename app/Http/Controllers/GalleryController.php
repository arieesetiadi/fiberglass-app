<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class GalleryController extends Controller
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


    public function index()
    {
        $data['title'] = 'Gallery';
        $data['counts'] = DB::table('gallery')->count();
        $data['galleries'] = DB::table('gallery')
            ->orderByDesc('id')
            ->paginate(50);

        return view('admin.gallery.index', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['title'] = 'Tambah Gallery';

        return view('admin.gallery.create', $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if ($request->file('images')) {
            $images = $request->file('images');

            foreach ($images as $image) {
                $imageName = time() . ' ' . strtolower($image->getClientOriginalName());
                $image->move('assets-3/images/gallery/', $imageName);

                DB::table('gallery')->insert([
                    'name' => $request->name,
                    'image' => $imageName,
                    'created_at' => now()->toDateTimeString()
                ]);
            }
        }

        return redirect()->route('gallery.index')->with('status', 'Berhasil menambah gallery');
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
        $gallery = DB::table('gallery')->where('id', $id);

        $path = public_path('assets-3/images/gallery/') . '/' . $gallery->get()[0]->image;
        if (File::exists($path)) {
            File::delete($path);
        }

        $gallery->delete();

        return redirect()->route('gallery.index')->with('status', 'Berhasil manghapus gambar');
    }
}
