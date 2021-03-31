<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('/', 'MainController@index')->name('home');
Route::get('/home', 'MainController@index'); 
Route::get('/category/{slug}', 'ShopController@category');
Route::get('/product/{slug}' , 'ShopController@product');
Route::post('/', 'ShopController@getUserReview');
Route::get('/contacts', 'MainController@contacts');
Route::post('/contacts', 'MainController@getContacts');

//cart
Route::post('/cart/add',   'CartController@add');
Route::post('/cart/clear', 'CartController@clear');
Route::post('/cart/delete', 'CartController@delete');
Route::get('/checkout', 'CartController@checkout');
Route::get('/delivery', 'CartController@delivery');
Route::post('/getWarehouses',   'CartController@getWarehouses');
Route::post('/end-checkout',   'CartController@endCheckout');


Auth::routes();

Route::group([
    'prefix'    => '/admin',
    'namespace' => 'Admin',
    'middleware'=> ['auth','admin'],
],function(){
   Route::resource('category','CategoryController'); 
   Route::resource('product' ,'ProductController'); 
   Route::post('product/filter','ProductController@filter');
   Route::resource('review','ReviewController'); 
   Route::post('review/filterUser','ReviewController@filterUser');
   Route::post('review/filterProduct','ReviewController@filterProduct');
});

Route::group(['prefix' => 'laravel-filemanager', 'middleware' => ['web', 'auth']], function () {
    \UniSharp\LaravelFilemanager\Lfm::routes();
});