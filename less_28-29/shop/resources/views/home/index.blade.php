@extends('layouts.app')
@section('content')

<h2 class="text-center mb-3">Categories</h2>
<section class="row categories home blogs" >
    @foreach ($categories as $category) 
    <div class="col-4 category blog">
        <a href="/category/{{ $category->slug }}">
            <p class="title">{{ $category->name }} ({{$category->products->count()}})</p>
            <div class="image"><img src="{{ $category->img }}" alt="" class="img-fluid"></div>
        </a>
    </div>    
    @endforeach
    <button id="showCategory" class="my_btn btn hidden"><span>Show more</span></button> 
</section>
<h2 class="text-center mb-3">Recomend products</h2>
<section class="row products home blogs">
    @foreach ($products as $product) 
    <div class="col-4 border product blog">
        <span><b>Category</b>:: {{ $product->category->name}}  </span> 
        {{-- category:: {{ $product->review->comment}}   --}}
        <a href="/product/{{ $product->slug }}">
            <p class="title">{{ $product->name }}</p>
            <div class="image"><img src="{{ $product->img }}" alt="" class="img-fluid"></div>
           
        </a>
        <p class="title"> {{$product->price}} uah</p>
    </div>    
    @endforeach
    <button id="showProduct" class="my_btn btn hidden"><span>Show more</span></button> 
</section>

@endsection

