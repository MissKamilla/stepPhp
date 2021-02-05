@extends('layouts.app')
@section('content')
<div class="text-center blog">
    <h2 class="text-center mb-3">{{ $post->title }}</h2>
    <div class="image"><img src="{{ $post->img }}" alt="" class="img-fluid"></div>
    <p class="title">{{ $post->description}}</p>
</div>
<p class="title"><a style="color: rgb(65, 65, 65)" href="{{route('home')}}">Go homes</a></p>
@endsection

