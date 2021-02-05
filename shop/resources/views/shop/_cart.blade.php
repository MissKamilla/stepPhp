@if (session('cart'))
<table class="table cart-form-table">
    <thead>
        <tr>
            <th>Image</th>
            <th>Name</th>
            <th>Price</th>
            <th>Qty</th>
            <th>Summa</th>
            <th>Delete</th>
        </tr>
    </thead>
    <tfoot>
        <tr>
            <th colspan="4" class="text-right">Total</th>
            <th colspan="2">{{session('total')}}</th>
        </tr>
    </tfoot>
    <tbody>
        @foreach (session('cart') as $product)
            <tr>
                <th><img src="{{$product['img']}}" alt="{{$product['name']}}" style="width: 50px"></th>
                <th>{{$product['name']}}</th>
                <th>{{$product['price']}}</th>
                <th>{{$product['qty']}}</th>
                <th>{{$product['price']*$product['qty']}}</th>
                <th>
                    <button data-id="{{$product['id']}}" class="btn btn-outline-danger btn-delete-cart">X</button>
                </th>
            </tr>
        @endforeach
    </tbody>
</table>
    
@else
    
<p>Cart empty</p>
@endif