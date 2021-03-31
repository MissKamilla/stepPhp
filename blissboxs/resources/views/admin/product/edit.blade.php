@extends('adminlte::page')

@section('title', 'Edit Product')

@section('content_header')
    <h1>Edit Product</h1>
@stop

@section('content')
@include('admin._message')
    <form action="{{route('product.update',['product'=>$product->id])}}" method="POST" enctype="multipart/form-data">
        @method('PUT')
        @include('admin.product._form')
    </form>
@stop
