<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AdminController extends Controller
{
    public function __construct()
    {
        return $this->middleware('auth');
    }

    public function index()
    {
        $data['countProducts'] = DB::table('products')->count();
        $data['countGallery'] = 100;
        $data['countUsers'] = DB::table('users')->count();
        $data['visitors'] = DB::table('visitors')->paginate(25);

        $data['title'] = 'Dashboard';
        return view('admin.index', $data);
    }

    public function settings()
    {
        $data['title'] = 'Settings';
        return view('admin.settings', $data);
    }

    public function gantiLogo(Request $request)
    {
        $image = $request->image;

        if ($image != null) {
            $imageName = time() . ' ' . strtolower($image->getClientOriginalName());
            $image->move('assets/images/logos/', $imageName);

            DB::table('logos')->insert([
                'image' => $imageName
            ]);
        }

        return redirect()->route('settings')->with('status', 'Berhasil mengubah logo website');
    }
}
