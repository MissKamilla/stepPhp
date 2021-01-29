@extends('layouts.app')
@section('content')

    <div class="product blog">
        <h2 >{{ $product->name }}</h2>
        <div class="image"><img src="{{ $product->img }}" alt="" class="img-fluid"></div>
        <p class="title">{{ $product->price}} uah</p>
    
        
    </div>
    <div class="row comment blog">
        <div class=" col-7">
            <p class="title">Reviews</p>
            @foreach ($reviews as $review) 
                <p>Comment {{$loop->iteration}}: {{$review->comment}} </p>
                <p>Author: {{$review->user->name}}  </p><br>
            @endforeach
        </div>
        <div class="col-4">
            <h4>Add Review</h4>
        <form action="/" method="POST" class='login-form'>
            @csrf
            <input type="hidden" name="id" value="{{$product->id}}" class="lf--input form-control">
            <textarea name="comment" class="lf--input form-control"></textarea><br>
            <input type="submit" value="Send" class="lf--submit btn btn-primary">
        </form>
        </div>
        
    </div>
    <a href="{{route('home')}}">Go homes</a>

@endsection

