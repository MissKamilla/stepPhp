<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Product;
use Faker\Generator as Faker;

$factory->define(Product::class, function (Faker $faker) {
    $name = $faker->words(3, true);
    $categories = App\Category::all()->pluck('id')->toArray();
    //pluck забирает из all только то что напис в скобках
    //toArray() привращает в масив
    return [
        'name' => $name,
        'slug' => Str::slug($name, '-'),
        'img'  => $faker->randomElement(['https://loremflickr.com/320/240?lock=3306',null]),
        'price' => $faker->randomFloat(2,10,10000),
        'recommended' =>$faker->boolean(),
        'category_id' =>$faker->randomElement($categories)
    ];
});
