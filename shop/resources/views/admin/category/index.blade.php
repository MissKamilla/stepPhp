@extends('adminlte::page')

@section('title', 'Categories')

@section('content_header')
    <h1>Categories
    <a href="{{route('category.create')}}" class="btn btn-info">Add category</a>
    </h1>
@stop

@section('content')
@include('admin._message')
    <table class="table" id="datatable">
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
            @foreach ($categories as $item) 
            <tr>
                <td>{{$loop->iteration}}</td>
                <td><img src="{{$item->img}}" alt="{{$item->name}}"  style="width:200px"></td>
                <td>{{$item->name}}</td>
                <td>{{$item->slug}}</td>
                <td>
                    <a href="{{route('category.edit', ['category'=>$item->id])}}" class="btn btn-success">Edit</a>
                    <form action="/admin/category/{{$item->id}}" method="POST">
                        @method('DELETE')
                        @csrf
                        <button class="brn btn-primary">Delate</button>
                    </form>
                </td>
            </tr>
            @endforeach
            {{-- @foreach ($products as $item) 

                {{$item->name}}

            @endforeach --}}
        </tbody>
    </table>
@stop
@section('js') {{--  для появления фильтрации таблицы--}}
    <script>
        $(document).ready( function () {
            $('#datatable').DataTable();
        } );
    </script>
@endsection