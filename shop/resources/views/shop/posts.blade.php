@extends('layouts.app')
@section('content')
<h2 class="text-center mb-3">Posts</h2>
<section class="row posts blogs">
    @foreach ($posts as $post) 
    <div class="col-4 post blog">
        <a href="/post/{{ $post->slug }}">
            <p class="title">{{ $post->title }}</p>
            <div class="image"><img src="{{ $post->img }}" alt="" class="img-fluid"></div>
        </a>
        <p class="descript">{{$post->description}}  </p>
    </div>    
    @endforeach
    <button id="showPost" class="my_btn btn hidden"><span>Show more</span></button> 
</section>

@endsection