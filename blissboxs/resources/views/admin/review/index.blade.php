@extends('adminlte::page')

@section('title', 'Reviews')

@section('content_header')
<h1 class="text-center mb-3 product">Reviews</h1>

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



    <a href="{{route('review.index')}}" class="btn btn-info">All review</a>

    <table class="table">
        <thead>
            <tr>
                <th>#</th>
                <th>comment</th>
                <th>user_id</th>
                <th>product_id</th>
                {{-- <th>action</th> --}}
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
                {{-- <td>
            
                    <a href="#" class="btn btn-success">Edit</a>
                    <button class="brn btn-primary">Delate</button>
                </td> --}}
            </tr>
            @endforeach
        </tbody>
    </table>
@stop