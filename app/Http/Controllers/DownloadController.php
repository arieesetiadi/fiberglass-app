<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class DownloadController extends Controller
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
        $data['title'] = 'Downloads';
        $data['downloads'] = DB::table('downloads')->orderByDesc('id')->get();
        $data['category1'] = [
            'Kartu Nama',
            'Compro',
        ];
        $data['category2'] = [
            'Brochure',
            'Price List'
        ];
        $data['productCategory'] = DB::table('categories')->get();

        return view('admin.downloads.index', $data);
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
        if (gettype($request->content) == 'string') {
            DB::table('downloads')->insert([
                'name' => $request->name,
                'content' => $request->content,
                'category' => 'URL',
                'type' => 'url',
                'created_at' => now()->toDateTimeString()
            ]);
        } else {
            $content = $request->content;
            $contentName = time() . '-' . strtolower($content->getClientOriginalName());

            $content->move('downloadable/', $contentName);

            DB::table('downloads')->insert([
                'name' => $request->name,
                'content' => $contentName,
                'category' => $request->category,
                'product_category' => $request->productCategory ??= null,
                'type' => 'file',
                'created_at' => now()->toDateTimeString()
            ]);
        }

        return redirect()->route('downloads.index')->with('status', 'Berhasil menambah download konten');
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
        $data['title'] = 'Ubah Downloads';
        $data['download'] = DB::table('downloads')->where('id', $id)->get();

        return view('admin.downloads.edit', $data);
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
        dd($request->all(), $id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $download = DB::table('downloads')->where('id', $id);

        if ($download->get()[0]->type == 'file') {
            $content = $download->get()[0]->content;
            $path = public_path('downloadable') . '/' . $content;

            if (File::exists($path)) {
                File::delete($path);
            }
        }

        $download->delete();

        return back()->with('status', 'Berhasil menghapus konten');
    }
}
