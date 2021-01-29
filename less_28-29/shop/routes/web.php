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

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', 'MainController@index')->name('home');
Route::get('/home', 'MainController@index');
Route::get('/category/{slug}', 'ShopController@category');
Route::get('/post/{slug}', 'ShopController@post');
Route::get('/posts', 'ShopController@posts')->name('posts');
Route::get('/product/{slug}' , 'ShopController@product');
// Route::post('/product/{slug}', 'ShopController@getUserReview');
Route::post('/', 'ShopController@getUserReview');
Route::get('/contacts', 'MainController@contacts');
Route::post('/contacts', 'MainController@getContacts');

// Route::get('/category/{slug}/{name}', 'ProductController@product');

Auth::routes();
// Route::get('/home', 'HomeController@index');
//  '/' => 'HomeController@index'

Route::group([
    'prefix'    => '/admin',
    'namespace' => 'Admin',
    'middleware'=> ['auth','admin'],
],function(){
    // Route::get('/admin','Admin\AdminController@index')->middleware('auth'); - было
   Route::get('/','AdminController@index'); // стало
   Route::resource('category','CategoryController'); 
   Route::resource('product' ,'ProductController'); 
   Route::post('product/filter','ProductController@filter');
});

Route::group(['prefix' => 'laravel-filemanager', 'middleware' => ['web', 'auth']], function () {
    \UniSharp\LaravelFilemanager\Lfm::routes();
});