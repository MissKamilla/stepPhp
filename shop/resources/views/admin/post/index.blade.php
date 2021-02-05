@extends('adminlte::page')
@section('title', 'Posts')

@section('content_header')
<h1 class="text-center mb-3 product">posts</h1>

{{-- <h1>
<a href="{{route('category.create')}}" class="btn btn-info">Add products</a>
</h1> --}}
@stop


@section('content')
{{-- <form action="/admin/product/filter" method="POST">
    @csrf
    <select name="catId" class="form-control">
            @foreach ($categories as $category)
            <option value="{{$category->id}}">{{$category->name}} ({{$category->products->count()}})</option>
            @endforeach
    </select>
    <button>Filter by category</button>
</form>

    <a href="{{route('product.index')}}" class="btn btn-info">Add products</a> --}}

    <table class="table">
        <thead>
            <tr>
                <th>#</th>
                <th>img</th>
                <th>title</th>
                <th>slug</th>
                <th>description</th>
                <th>action</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($posts as $post) 
            <tr>
                <td>{{$loop->iteration}}</td>
                <td><img src="{{$post->img}}" alt="{{$post->title}}"  style="width:200px"></td>
                <td>{{$post->title}}</td>
                <td>{{$post->slug}}</td>
                <td>{{$post->description}}</td>
                <td>
                    {{-- <a href="{{route('post.edit', ['post'=>$post->id])}}" class="btn btn-success">Edit</a>
                    <form action="/admin/post/{{$post->id}}" method="POST">
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