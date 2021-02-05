<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Review;
use Faker\Generator as Faker;

$factory->define(Review::class, function (Faker $faker) {
    $comment = $faker->words(5, true);
    $users = App\User::all()->pluck('id')->toArray();
    $products = App\Product::all()->pluck('id')->toArray();
    //pluck забирает из all только то что напис в скобках
    //toArray() привращает в масив
    return [
        'comment' => $comment,
        'user_id' =>$faker->randomElement($users),
        'product_id' =>$faker->randomElement($products),
    ];
});
