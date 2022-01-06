<?php

namespace Database\Seeders;

use Illuminate\Support\Str;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $products =
            [
                ["* Tangki Plastik", 1],
                ["* Tangki Stainless", 1],
                ["* Plywood", 1],
                ["* Tangki Panel", 1],
                ["* Tangki Air", 1],
                ["* Septic Tank", 1],
                ["* Grease Trap", 1],
                ["* Water Slide", 1],
                ["* Atap Fiber", 1],
                ["* Kursi Salon", 1],
                ["* Alat Dulang Emas", 1],
                ["* Sepeda Air", 1],
                ["* Tong Sampah", 1],
                ["* Action Figure", 1],
                ["* Kursi", 1],
                ["* Mini Bar", 1],
                ["* STP", 1],
                ["* IPAL", 1],
                ["* Storage Tank", 1],
                ["* Cool Box", 1],
                ["* Dermaga Apung", 1],
                ["* Urinator / Urinoir", 1],
                ["* Cetakan Semen", 1],
                ["* Topi Truk", 1],
                ["* Jacket life box", 1],
                ["* Pintu Kereta", 1],
                ["* Dashboard Mobil dan Pesawat", 1],
                ["* Pipa", 1],
                ["* Kap Lampu Tidur", 1],
                ["* Kursi Bus", 1],
                ["* Chemical Tank", 1],
                ["* Bak Budidaya Pembibitan Ikan", 1],
                ["* Bak Filter", 1],
                ["* Playground", 1],
                ["* Bathup", 1],
                ["* Wastafel", 1],
                ["* Toilet Portable", 1],
                ["* Toilet Set Hotel", 1],
                ["* Bak Mandi", 1],
                ["* Papan Seluncur surfing boat", 1],
                ["* gocart", 1],
                ["* kancing", 1],
                ["* hotel kapsul", 1],
                ["* gear box", 1],
                ["* over vender", 1],
                ["* list jendela bus", 1],
                ["* nozzle minipom", 1],
                ["* pinhole golf", 1],
                ["* box motor", 1],
                ["* tangki water filter", 1],
                ["* Manekin", 1],
                ["* meja payung fiber", 1],
                ["* Box mobil", 1],
                ["* Ground Tank", 1],
                ["* Bilah kincir angin", 1],
                ["* Bak Indikator", 1],
                ["* Patung Fiber", 1],
                ["* Speed Boat", 2],
                ["* Motor Boat", 2],
                ["* Yacht", 2],
                ["* Fishing Boat", 2],
                ["* Ambulance boat", 2],
                ["* Patrol Boat", 2],
                ["* Passenger Boat", 2],
                ["* Water Transport", 2],
                ["* Cano", 2],
                ["* Catamaran", 2],
                ["* Resin Poliester", 3],
                ["* Resin Bening", 3],
                ["* Resin Lycal", 3],
                ["* Resin Vinilester", 3],
                ["* Resin Bisfenol", 3],
                ["* Polyamida Resin", 3],
                ["* Gelcoat", 3],
                ["* MMA (Anti Bubble)", 3],
                ["* Dempul Norton dll", 3],
                ["* Resin Epoxy", 3],
                ["* Pigmen", 3],
                ["* Katalis", 3],
                ["* Matt Serat", 3],
                ["* Matt Roving", 3],
                ["* Matt Pultrusion", 3],
                ["* Talk", 3],
                ["* Aerosil", 3],
                ["* Katalis", 3],
                ["* Miror Glaze", 3],
                ["* Alkohol", 3],
                ["* Aseton", 3],
                ["* Thinner", 3],
                ["* Formaline", 3],
                ["* Silicon Emulsion", 3],
                ["* Silicon Oil", 3],
                ["* Silicon Rubber", 3],
                ["* PU", 3],
                ["* Kaustik Soda Asahi, tjiwi", 3],
                ["* Kaporit tjiwi powder, dan granul", 3],
                ["* Kaporit China Tablet", 3],
                ["* Manganese", 3],
                ["* Zeolit", 3],
                ["* Citrun", 3],
                ["* Texaphone", 3],
                ["* Sodium Sulfat", 3],
                ["* SLS", 3],
                ["* parfum", 3],
                ["* Perekat Fixative Parfum", 3],
                ["* PAC", 3],
                ["* Tawas", 3],
                ["* Trusi", 3],
                ["* STPP", 3],
                ["* Sodium Karbonat", 3],
                ["* Sodium Bikarbonat", 3],
                ["* HCl", 3],
                ["* H2SO4", 3],
                ["* HF", 3],
                ["* Titanium Dioxide", 3],
                ["* Pemanis Makanan", 3],
                ["* Pewarna Makanan", 3],
                ["* Pigment Pakaian", 3],
                ["* Metanol", 3],
                ["* Peroksida", 3],
                ["* IPA", 3],
                ["* Etil Asetat", 3],
                ["* Pisau Blade Marmer", 4],
                ["* Pisau Gerinda", 4],
                ["* Amplas", 4],
                ["* Mata bor", 4],
                ["* Diamond Pad (Merek Makita)", 4],
                ["* Mesin Grinder", 4],
                ["* Mesin Bor", 4],
                ["* Roda", 4],
                ["* Gerinda", 4],
                ["* kitchen set", 8],
                ["* Event", 8],
                ["* Our Client", 8]
            ];

        DB::table('products')->truncate();

        foreach ($products as $product) {
            $name = ucwords(Str::of($product[0])->trim('* ')->lower());
            $slug = Str::of($name)->lower()->replace(' ', '-');

            DB::table('products')->insert([
                'name' => $name,
                'slug' => $slug,
                'stock' => 0,
                'category_id' => $product[1],
                'user_id' => 1,
                'created_at' => now()->toDateTimeString()
            ]);
        }
    }
}
