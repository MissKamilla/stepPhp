<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Post;
use Faker\Generator as Faker;

$factory->define(Post::class, function (Faker $faker) {
    $title = $faker->words(3, true);
    $description = $faker->words(10, true);
    return [
        'title' => $title,
        'slug' => Str::slug($title, '-'),
        'description' => $description,
        'img'  => $faker->randomElement(['https://loremflickr.com/320/240?lock=3306',null]),
    ];
});


