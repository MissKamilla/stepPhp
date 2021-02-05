<?php

use Illuminate\Database\Seeder;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('categories')->insert([
            'name' => 'Uncategory',
            'slug' => 'uncategory',
            'img'  => 'https://ses-enser.com/img/noimg.png',
        ]);
    }
}
