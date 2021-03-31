@extends('layouts.app')
@section('content')
<a style="color:gray; font-size:20px" href="{{route('home')}}">Всi бокси</a>

    <div class="product blog row">
        
        <div class="oneImage col-6"><img src="{{ $product->img }}" alt="" class="img-fluid"></div>
        <div class="col-6 productInf">
            <h2 >{{ $product->name }}</h2>
            <p class="title">{{ $product->price}} грн</p>
            <p class="title">{{ $product->description}}</p>
            <p>Cклад:</p>
            <pre class="title">{{ $product->components}}</pre>   

            <form action="/" class="add-to-cart login-form col-5 ">
                <input type="number" name="qty" style="color:black" class="lf--input" value="1" min ="1" max="10">
                <input type="hidden" name="product_id"  value="{{$product->id}}">
                <button class="btn btn-info lf--submit">Додати до корзини</button>
            </form>
        </div>
        
    </div>
    
    <div class="row comment blog">
        <div class=" col-7">
            <p class="title"> Відгуки</p>
            <div class="review">
                @foreach ($reviews as $review) 
                    <p><b>{{$loop->iteration}} Комент: </b>{{$review->comment}} </p>
                    <p><b> Автор: </b>{{$review->user->name}}  </p><br>
                @endforeach
            </div>
            
        </div>
        <div class="col-4">
            <h4>Додати вiдгук</h4>
        <form action="/" method="POST" class='login-form'>
            @csrf
            <input type="hidden" name="id" value="{{$product->id}}" class="lf--input form-control">
            <textarea name="comment" class="lf--input form-control"></textarea><br>
            {{-- <input type="submit"  placeholder=""
            > --}}
            <button value="Send" class="lf--submit btn btn-primary">Вiдправити</button>
        </form>
        </div>
        
    </div>
    
@endsection

