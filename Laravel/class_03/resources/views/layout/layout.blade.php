<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('title',"Laravel")</title>
    <link rel="stylesheet" href="css/style.css">
    @stack('css')
</head>
<body>
    @include('partials.navbar')
    <main>
        <section>
           @yield('content')
        </section>
        <section>
            <h1>Side bar</h1>
        </section>
    </main>
    <footer>
        <h1>Footer</h1>
    </footer>
    @stack('js')
</body>
</html>