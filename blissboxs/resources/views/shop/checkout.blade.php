@extends('layouts.app')
@section('content')

<div class="col-6 mx-auto ">
    @include('shop._cart')
    @if (session('cart'))
        <a href="/delivery" class="btn btn-outline-dark">Доставка </a>
    @else
        <a href="/home" class="btn btn-outline-dark">Головна</a>
    @endif
</div>
@endsection