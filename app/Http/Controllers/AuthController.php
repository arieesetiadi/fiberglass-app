<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function login()
    {
        return view('admin.login');
    }

    public function loginProses(Request $request)
    {
        $rememberMe = $request->rememberMe ? true : false;

        if (!auth()->attempt($request->only(['username', 'password']), $rememberMe)) {
            return back()->with('status', 'Username / password tidak terdaftar.');
        }

        return redirect()->route('dashboard');
    }

    public function daftar()
    {
        return view('admin.daftar');
    }

    public function daftarProses(Request $request)
    {
        DB::table('users')->insert([
            'username' => $request->username,
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password)
        ]);

        auth()->attempt($request->only(['username', 'password']), false);

        return redirect()->route('dashboard');
    }

    public function logoutProses()
    {
        auth()->logout();
        return redirect()->route('login');
    }
}
