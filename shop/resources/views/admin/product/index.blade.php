@extends('adminlte::page')
@section('title', 'Products')

@section('content_header')
<h1 class="text-center mb-3 product">Products</h1>

<h1>
<a href="{{route('category.create')}}" class="btn btn-info">Add products</a>
</h1>
@stop


@section('content')
<form action="/admin/product/filter" method="POST">
    @csrf
    <select name="catId" class="form-control">
            @foreach ($categories as $category)
            <option value="{{$category->id}}">{{$category->name}} ({{$category->products->count()}})</option>
            @endforeach
    </select>
    <button>Filter by category</button>
</form>

    <a href="{{route('product.index')}}" class="btn btn-info">All products</a>

    <table class="table">
        <thead>
            <tr>
                <th>#</th>
                <th>img</th>
                <th>name</th>
                <th>slug</th>
                <th>action</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($products as $product) 
            <tr>
                <td>{{$loop->iteration}}</td>
                <td><img src="{{$product->img}}" alt="{{$product->name}}"  style="width:200px"></td>
                <td>{{$product->name}}</td>
                <td>{{$product->slug}}</td>
                <td>
                    {{-- <a href="{{route('product.edit', ['product'=>$product->id])}}" class="btn btn-success">Edit</a>
                    <form action="/admin/product/{{$product->id}}" method="POST">
                        @method('DELETE')
                        @csrf
                        <button class="brn btn-primary">Delate</button>
                    </form> --}}
                    <a href="#" class="btn btn-success">Edit</a>
                    <button class="brn btn-primary">Delate</button>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
@stop