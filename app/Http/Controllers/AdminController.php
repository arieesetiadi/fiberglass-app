<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function __construct()
    {
        return $this->middleware('auth');
    }

    public function index()
    {
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
        dd($request->all());
    }
}
