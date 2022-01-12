<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class InvestorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $investors = [
            "Justus",
            "SHCP",
            "Liaonning",
            "Haichen",
            "HDK",
            "Matapelangi",
            "Unipol",
            "Cerepol",
            "Everpol",
            "Mepoxe",
            "Tripoxe",
            "Chemset",
            "Eternal",
            "Jushi",
            "Nisser",
            "Fantatex",
            "Chemtec",
            "Eterset",
            "Deluxe",
            "Union Poliglass",
            "Fantalon",
            "Butanox",
            "Trigonox",
            "Miror glaze / Miracle gloss",
            "Sekar prima warna",
            "3M",
            "Biomass (Polishing Pad)",
            "Plasthateic Clinic",
            "Biotop Technology",
            "Propertize",
            "Developer Rumah",
            "Logistic",
            "Nisser",
            "Cobalt"
        ];

        $investorsSoon = [
            "Kimco",
            "Excel",
            "DMX",
            "DMW",
            "Samson Spray Gun",
            "Setir Yacht",
            "Alat Navigator",
            "Polishing Pad 3M dan Biomass",
            "Mesin Evergreen/Evalube",
            "Mesin Yamaha",
            "Mesin Honda",
            "Alat Poles Bumpering Buff",
            "Cairan Kristal",
            "Amplas 3M",
            "Kompressor"
        ];

        foreach ($investors as $investor) {
            DB::table('investors')->insert([
                'name' => $investor,
            ]);
        }

        foreach ($investorsSoon as $investor) {
            DB::table('investors')->insert([
                'name' => $investor,
                'status' => 'soon'
            ]);
        }
    }
}
