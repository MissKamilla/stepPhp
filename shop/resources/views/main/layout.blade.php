<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('title')</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{asset('/css/app.css')}}">
</head>
<body>
    <header>header</header>

    <main class="container">
        @yield('content')
    </main>

    <footer>
        Footer <br>
        @section('footer')
        Menu           
        @show
    </footer>
    
    <script src="{{asset('/js/app.js')}}"></script>
</body>
</html>