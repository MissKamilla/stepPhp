<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Contracts\Events\Dispatcher;
use JeroenNoten\LaravelAdminLte\Events\BuildingMenu;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot(Dispatcher $events)
    {
        $this ->app->bind('cart','App\Http\Services\CartService');


        $events->listen(BuildingMenu::class, function (BuildingMenu $event) {
            // Add some items to the menu...
            $event->menu->add('MAIN NAVIGATION');
            $event->menu->add([
                'text' => 'Categories',
                'url' => 'admin/category',
                'label'=>\App\Category::count(),
                'label_color'=>'success',
            ],
            [
                'text' => 'Products',
                'url' => 'admin/product',
                'label'=>\App\Product::count(),
                'label_color'=>'success',
            ],
            [
                'text' => 'Reviews',
                'url' => 'admin/review',
                'label'=>\App\Review::count(),
                'label_color'=>'success',
            ],
            [
                'text' => 'Posts',
                'url' => 'admin/post',
                'label'=>\App\Post::count(),
                'label_color'=>'success',
            ]);
        });
    }
}
