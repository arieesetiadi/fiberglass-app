<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class KategoriController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['title'] = 'Kategori';
        $data['categories'] = DB::table('categories')->orderBy('id', 'DESC')->get();

        return view('admin.kategori.index', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        DB::table('categories')->insert([
            'name' => $request->kategori
        ]);

        return redirect()->route('kategori.index')->with('status', 'Berhasil menambah kategori baru');
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
        $data['title'] = 'Ubah Kategori';
        $data['categories'] = DB::table('categories')->orderBy('id', 'DESC')->get();
        $data['category'] = DB::table('categories')
            ->where('id', $id)
            ->get()[0];

        return view('admin.kategori.edit', $data);
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
        DB::table('categories')
            ->where('id', $id)
            ->update([
                'name' => $request->kategori
            ]);

        return redirect()->route('kategori.index')->with('status', 'Berhasil mengubah data kategori');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        DB::table('categories')
            ->where('id', $id)
            ->delete();

        return redirect()->route('kategori.index')->with('status', 'Berhasil menghapus data kategori');
    }
}
