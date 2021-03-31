<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Product;
use App\Review;

class MainController extends Controller
{
    public function index(){
        $categories = Category::with('products')->get();
        $products = Product::with('category','review')->where('recommended',1)->whereNotNull('img')->get();
        return view('home.index', compact('categories','products'));
    }

    public function contacts(){
        return view('home.contacts');
    }

    public function getContacts(Request $request){
        $categoryName =$request->name;
        $category= new Category();
        $category->name = $categoryName;
        $category->slug = \Str::slug($categoryName,'-');
        $category->save();
        return redirect('/');
    }

}
