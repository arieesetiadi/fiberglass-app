<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SocialTypeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $socialTypes = [
            'Instagram',
            'Facebook',
            'Twitter',
            'Hello',
            'Whatsapp',
            'WeChat',
            'Snachat',
            'Youtube',
            'Twitch',
            'Tokopedia',
            'Line',
            'Shopee',
            'Bukalapak',
            'JD.ID'
        ];

        DB::table('social_types')->truncate();

        foreach ($socialTypes as $s) {
            DB::table('social_types')->insert([
                'slug' => str_replace('.', '', strtolower($s)),
                'name' => $s
            ]);
        }
    }
}
