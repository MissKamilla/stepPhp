@extends('layouts.app')
@section('content')

<div class="col-5 col-xl-4 mx-auto ">

    @if (session('cart'))
        <form name="delivery" id="delivery" class='login-form'>
            <div class="form-group">
                <input class="lf--input text-secondary" type="text" name="name" id="name" placeholder="name">
                @error('name')
                    <div class="invalide-feedback">{{ $message }}</div>
                @enderror
            </div>
            <div class="form-group">
                <input class="lf--input text-secondary" type="email" name="email" id="email" placeholder="email">
            </div>
            <div class="form-group">    
                <input class="lf--input text-secondary" type="tel" name="phone" id="phone" placeholder="phone">
            </div>
            <div class="form-group">
                <input type="text" class="lf--input text-secondary" name="city" list="city" placeholder="city">
                <datalist id="city">
                    <option></option>
                    @foreach ($cities as $city)
                        <option value="{{$city['Description']}}"
                        data-value="{{$city['Ref']}}"></option>
                    @endforeach
                </datalist>
            </div>
            <div class="form-group">
                <input type="hidden" name="city_id" id="city_id">
                <input type="text" class="lf--input text-secondary" name="post" list="post" placeholder="post">
                <datalist id="post">

                </datalist>
            </div>
            <div class="form-group col-6 mx-auto">
                <button name="next" class="lf--submit btn">Далi</button>
            </div>

        </form>
    @else
        <p>Корзина порожня</p>
        <a href="/home" class="btn btn-outline-dark">Головна</a>
    @endif
</div>
@endsection