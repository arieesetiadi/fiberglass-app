<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class FAQController extends Controller
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
        $data['faqs'] = DB::table('faqs')->orderByDesc('id')->paginate(15);
        $data['title'] = 'FAQ';

        return view('admin.faq.index', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['title'] = 'Tambah FAQ';

        return view('admin.faq.create', $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        DB::table('faqs')->insert([
            'question' => $request->question,
            'answer' => $request->answer,
            'created_at' => now()->toDateTimeString()
        ]);

        return redirect()->route('faq.index')->with('status', 'Berasil menambah FAQ');
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
        $data['title'] = 'Ubah FAQ';
        $data['faq'] = DB::table('faqs')->where('id', $id)->get()[0];

        return view('admin.faq.edit', $data);
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
        DB::table('faqs')->where('id', $id)->update([
            'question' => $request->question,
            'answer' => $request->answer,
            'updated_at' => now()->toDateTimeString()
        ]);

        return redirect()->route('faq.index')->with('status', 'Berhasil mengubah data FAQ');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        DB::table('faqs')->where('id', $id)->delete();

        return redirect()->route('faq.index')->with('status', 'Berhasil menghapus data FAQ');
    }
}
