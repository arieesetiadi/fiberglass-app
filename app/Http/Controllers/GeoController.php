<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class GeoController extends Controller
{
    public function getIP()
    {
        $geo = geoip()->getLocation()->country;
        dd($geo);
    }
}
