<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SocialController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['title'] = 'Social Media';
        $data['socials'] = DB::table('socials')->orderByDesc('id')->get();
        $data['types'] = DB::table('social_types')->get();

        return view('admin.socials.index', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        dd('create');
        $data['title'] = 'Tambah Social Media';
        $data['socials'] = DB::table('socials')->get();
        $data['types'] = DB::table('social_types')->get();

        return view('admin.socials.create', $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        DB::table('socials')->insert([
            'name' => $request->name,
            'type' => $request->type,
            'url' => $request->url,
            'created_at' => now()->toDateTimeString()
        ]);

        return redirect()->route('social.index')->with('status', 'Berhasil menambah sosial media');
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
        $data['title'] = 'Social Media';
        $data['socials'] = DB::table('socials')->orderByDesc('id')->get();
        $data['social'] = DB::table('socials')->where('id', $id)->get()[0];
        $data['types'] = DB::table('social_types')->get();

        // dd($data);

        return view('admin.socials.edit', $data);
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
        DB::table('socials')->where('id', $id)->update([
            'name' => $request->name,
            'type' => $request->type,
            'url' => $request->url,
            'updated_at' => now()->toDateTimeString()
        ]);

        return redirect()->route('social.index')->with('status', 'Berhasil mengubah sosial media');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        DB::table('socials')->where('id', $id)->delete();

        return redirect()->route('social.index')->with('status', 'Berhasil menghapus sosial media');
    }
}
