@extends('layouts.app')
@section('content')
<h2 class="text-center mb-3">{{ $category->name }}</h2>
<section class="row blogs">
    @foreach ($products as $product) 
    <div class="col-4 blog">
        <a href="/product/{{ $product->slug }}">
            <p class="title">{{ $product->name }}</p>
            <div class="image"><img src="{{ $product->img }}" alt="" class="img-fluid"></div>
            <p class="title">{{ $product->price}} uah</p>
        </a>
    </div>    
    @endforeach
</section>
@endsection

