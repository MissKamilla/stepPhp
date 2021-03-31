@if (session('cart'))
<table class="table cart-form-table">
    <thead>
        <tr>
            <th>Зображення</th>
            <th>Назва</th>
            <th>Цiна</th>
            <th>Кiлькicть</th>
            <th>Сума</th>
            <th>Видалити</th>
        </tr>
    </thead>
    <tfoot>
        <tr>
            <th colspan="4" class="text-right">Всього</th>
            <th colspan="2">{{session('total')}}</th>
        </tr>
    </tfoot>
    <tbody>
        @foreach (session('cart') as $product)
            <tr>
                <th><img src="{{$product['img']}}" alt="{{$product['name']}}" style="width: 120px; height: 80px"></th>
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
    
<p>Корзина порожня</p>
@endif