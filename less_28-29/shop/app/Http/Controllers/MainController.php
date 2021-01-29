<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Product;
use App\Review;

class MainController extends Controller
{
    public function index(){
        // $pr = Product::find(3);
        // dd($pr);

        // $cat = Category::find(3);
        // dd($cat->products->count());


        $categories = Category::with('products')->get();
        $products = Product::with('category','review')->where('recommended',1)->whereNotNull('img')->get();//получ все данные из БД->category
        // $reviews = Review::with('user')->get();//получ все данные из БД->category
        return view('home.index', compact('categories','products'));
    }





    public function contacts(){
        return view('home.contacts');
    }
    public function getContacts(Request $request){ //Request(Запрос) - встроеный класс
        // $user = $request->name;
        // $mes = $request->message;
        // return $user.' write '.$mes;
        // return back();

        $categoryName =$request->name;
        $category= new Category();
        $category->name = $categoryName;
        $category->slug = \Str::slug($categoryName,'-');
        $category->save();
        return redirect('/');


    }


}
