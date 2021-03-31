@extends('adminlte::page')

@section('title', 'Edit Category')

@section('content_header')
    <h1>Edit Category</h1>
@stop

@section('content')
@include('admin._message')
    <form action="{{route('category.update',['category'=>$category->id])}}" method="POST" enctype="multipart/form-data">
        @method('PUT')
        @include('admin.category._form')
    </form>
@stop
