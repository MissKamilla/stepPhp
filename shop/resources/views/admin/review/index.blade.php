@extends('adminlte::page')

@section('title', 'Reviews')

@section('content_header')
<h1 class="text-center mb-3 product">Reviews</h1>

{{-- <h1>
<a href="{{route('category.create')}}" class="btn btn-info">Add products</a>
</h1>--}}
@stop 


@section('content')
<form action="/admin/review/filterUser" method="POST">
    @csrf
    <label for="">Filter by user</label>
    <select name="userId" class="form-control">
            @foreach ($users as $user)
            <option value="{{$user->id}}">{{$user->name}} </option>
            @endforeach
    </select>
    <button class="btn btn-outline-info">Filter by user</button>
</form>


<form action="/admin/review/filterProduct" method="POST">
    @csrf
    <label for="">Filter by product</label>
    <select name="postId" class="form-control">
            @foreach ($products as $product)
            <option value="{{$product->id}}">{{$product->name}} </option>
            @endforeach
    </select>
    <button class="btn btn-outline-info">Filter by product</button>
</form>


    <a href="{{route('review.index')}}" class="btn btn-info">All review</a>

    <table class="table">
        <thead>
            <tr>
                <th>#</th>
                <th>comment</th>
                <th>user_id</th>
                <th>product_id</th>
                <th>action</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($reviews as $review) 
            <tr>
                <td>{{$loop->iteration}}</td>
                <td>{{$review->comment}}</td>

                <td>
                    @foreach ($users as $user) 
                        @if ($review->user_id==$user->id)
                            {{$user->name}} 
                        @endif
                    @endforeach
                </td>
                <td>
                    @foreach ($products as $product) 
                        @if ($review->product_id==$product->id)
                            {{$product->name}} 
                        @endif
                    @endforeach
                </td>
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