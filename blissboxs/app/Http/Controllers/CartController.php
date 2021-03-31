<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Services\CartService;
use Cart;
use App\Product;
use App\Order; 
use App\Order_item; 
use \LisDev\Delivery\NovaPoshtaApi2;

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
    public function delivery(){
        $np = new NovaPoshtaApi2(
            $key = env('NOVA_POSTA_KEY'),
            'ru', 
            FALSE,
            'curl'
        );
        $cities =$np->getCities()['data'];
        return view('shop.delivery',compact('cities'));
    }
    public function getWarehouses(Request $request){
        $np = new NovaPoshtaApi2(
            $key = env('NOVA_POSTA_KEY'),
            'ru', 
            FALSE,
            'curl'
        );
        $whs =$np->getWarehouses($request->city_id);
        $html= '';
        foreach ($whs['data'] as $wh) {
            $html.='<option value="'.$wh['Description'].'" data-value="'.$wh['Ref'].'"></option>';
        }

        return  $html;
    }
    public function endCheckout(Request $request){
        $order = new Order();
        $order->user_id = \Auth::user()->id ?? null;
        $order->total_sum = session('total') ?? 0;
        $order->address =  $request->email;
        $order->phone =  $request->phone;
        $order->save();

        foreach (session('cart') as $product) {
            $item = new Order_item();
            $item->name = $product['name'];
            $item->qty = $product['qty'];
            $item->img = $product['img'];
            $item->price = $product['price'];
            $item->order_id = $order->id;
            $item->save();
        }

        Cart::clear();
    }
}
