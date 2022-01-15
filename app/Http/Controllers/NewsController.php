<?php

namespace App\Http\Controllers;

use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class NewsController extends Controller
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
        $data['title'] = 'Berita';
        $data['news'] = DB::table('news')->orderByDesc('id')->paginate(25);
        $data['count'] = DB::table('news')->count();

        return view('admin.news.index', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['title'] = 'Tambah Berita';

        return view('admin.news.create', $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $slug = Str::of($request->title)->lower()->replace(' ', '-');

        DB::table('news')->insert([
            'title' => $request->title,
            'slug' => $slug,
            'body' => $request->body,
            'created_at' => now()->toDateTimeString()
        ]);

        return redirect()->route('news.index')->with('status', 'Berhasil menambah berita baru');
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
        $data['title'] = 'Ubah Berita';
        $data['news'] = DB::table('news')->where('id', $id)->get()[0];

        return view('admin.news.edit', $data);
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
        $slug = Str::of($request->title)->lower()->replace(' ', '-');

        DB::table('news')->where('id', $id)->update([
            'title' => $request->title,
            'slug' => $slug,
            'body' => $request->body,
            'updated_at' => now()->toDateTimeString()
        ]);

        return redirect()->route('news.index')->with('status', 'Berhasil mengubah berita');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        DB::table('news')->where('id', $id)->delete();

        return redirect()->route('news.index')->with('status', 'Berhasil menghapus berita');
    }
}
