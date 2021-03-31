@extends('adminlte::page')
@section('title', 'Products')

@section('content_header')
<h1 class="text-center mb-3 product">Products</h1>

{{-- <h1>
<a href="{{route('category.create')}}" class="btn btn-info">Add products</a>
</h1> --}}
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
                <th>price</td></th>
                <th>description</th>
                <th>components</th>
                {{-- <th>action</th> --}}
            </tr>
        </thead>
        <tbody>
            @foreach ($products as $product) 
            <tr>
                <td>{{$loop->iteration}}</td>
                <td><img src="{{$product->img}}" alt="{{$product->name}}"  style="width:200px; object-fit: cover;"></td>
                <td>{{$product->name}}</td>
                <td>{{$product->slug}}</td>
                <td>{{$product->price}}</td>
                <td>{{$product->description}}</td>
                <td>{{$product->components}}</td>
                {{-- <td>
                    <a href="{{route('product.edit', ['product'=>$product->id])}}" class="btn btn-success" style="background-color: #ff00d547;
                        border-color:#ff00d547;">Edit</a>
                    <form action="/admin/product/{{$product->id}}" method="POST">
                        @method('DELETE')
                        @csrf
                        <button class="brn btn-primary" style="background-color: #8d8d8d;
                        border-color:#8d8d8d;
                        height: 38px;">Delate</button>
                    </form>
                </td> --}}
            </tr>
            @endforeach
        </tbody>
    </table>
@stop