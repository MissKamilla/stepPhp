@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div><div><div class="card-body">
            @if (session('status'))
                <div class="alert alert-success" role="alert">
                    {{ session('status') }}
                </div>
            @endif
            <form method="POST" action="{{ route('password.email') }}" class='login-form'>
                @csrf
                <div class="card-header logo">{{ __('Reset Password') }}</div>
                <div class="form-group flex-row row">
                    <label for="email" class="col-md-5 col-form-label">{{ __('E-Mail Address') }}</label>

                    <div class="col-md-7">
                        <input id="email" type="email" class="lf--input form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

                        @error('email')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>

                <div class="form-group flex-row row mb-0">
                    <div class="col-8 offset-md-2">
                        <button type="submit" class="lf--submit btn btn-primary">
                            {{ __('Send Password Reset Link') }}
                        </button>
                    </div>
                </div>
            </form>
        </div></div></div>
    </div>
</div>
@endsection
