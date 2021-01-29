@extends('layouts.app')
@section('content')
    <form action="/contacts" method="POST">
        @csrf
        <input type="text" name="name">
        <textarea name="message" ></textarea>
        <input type="submit" value="Send">
    </form>

@endsection

