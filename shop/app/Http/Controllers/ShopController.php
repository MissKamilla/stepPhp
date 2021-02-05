<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Post;
use App\Product;
use App\Review;
use App\User;


class ShopController extends Controller
{
    public function category($slug){
        // $category = Category::where('slug',$slug)->first();
        $category = Category::firstWhere('slug',$slug);
        $products = Product::where('category_id',$category->id)->get();
        return view('shop.category', compact('category','products'));

    }
    public function post($slug){
        $post  = Post::firstWhere('slug',$slug);
        return view('shop.post', compact('post'));

    }
    public function posts(){
        $posts = Post::all();
        return view('shop.posts', compact('posts'));

    }
    public function product($slug){
        $product  = Product::firstWhere('slug',$slug);
        $reviews = Review::with('user')->where('product_id',$product->id)->get();
        return view('shop.product', compact('product','reviews'));

    }
    public function getUserReview(Request $request){//,$slug        //Request(Запрос) - встроеный класс
        // $product  = Product::firstWhere('slug',$slug);
        $userComment =$request->comment;
        $review= new Review();
        $review->comment = $userComment;
        // if (\Auth::user()) {
        //     $review->user_id = \Auth::user()->id;
        // }
        (\Auth::user()) ? $review->user_id = \Auth::user()->id : null;
        $review->product_id=$request->id;
        $review->save();
        return back();
    }
}
