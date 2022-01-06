<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $categories = [
            'Produk Fiberglass',
            'Yacht & Boat',
            'Chemical Product',
            'Tools',
            'Custom Order',
            'Maklon',
            'Jasa Lining',
            'Solid Surface'
        ];

        DB::table('categories')->truncate();

        foreach ($categories as $category) {
            DB::table('categories')->insert([
                'name' => $category
            ]);
        }
    }
}
