<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class GeoController extends Controller
{
    public static function storeVisitor()
    {
        // $geo = geoip()->getLocation()->country;
        $geo = geoip()->getLocation();

        DB::table('visitors')->insert([
            'ip' => $geo->ip,
            'country' => $geo->country,
            'city' => $geo->city,
            'state' => $geo->state_name,
            'time_zone' => $geo->timezone,
            'created_at' => now()->toDateTimeString()
        ]);
    }
}
