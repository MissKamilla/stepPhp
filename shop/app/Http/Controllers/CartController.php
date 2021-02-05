<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Services\CartService;
use Cart;//Facade
use App\Product;

class CartController extends Controller
{
    public function add(Request $request){
        $product = Product::findOrFail($request->product_id);
        Cart::add($product, $request->qty);
        return view('shop._cart');
    }
    public function clear(){
        Cart::clear();
        return view('shop._cart');
    }
    public function delete(Request $request){
        Cart::delete($request->id);
        return view('shop._cart');
    }
    public function checkout(){
        return view('shop.checkout');
    }
}
