<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>

<body>
    <h1>Products Page</h1>


    <p>In PHP</p>
    {{--  in PHP --}}
    <?php
    echo 'Hello World';
    ?>
    {{--  in Blade --}}
    <p>In Blade</p>
    {{ 'Hello World' }}

    <p>In PHP</p>
    {{--  in PHP --}}
    <?php
    echo '<h1>Hello World</h1>';
    ?>

{{--  in Blade --}}
<p>In Blade</p>
{{ '<h1>Hello World</h1>' }}
{!! "<h1>Hello World</h1>" !!}
<h1>{{ "Hello World" }}</h1>


<p>In PHP</p>
{{--  in PHP --}}
<?php
    for ($i=0; $i <10 ; $i++) { 
        echo "Inside For Loop";
    }
    $name='ali';
    ?>
    {{--  in Blade --}}
    <p>In Blade</p>
    @for ($i=0; $i <10 ; $i++)
        <ul>
            <li>Inside For Loop</li>
        </ul>
    @endfor
    

    @if ($name==='Talha')
        <strong>Hello {{ $name }}</strong>
        @else
        <strong>Hello Guest</strong>
    @endif
    {{-- @isset()
        
    @endisset --}}
    
        {{-- @if ()
            @elseif ()
        @endif --}}

        <table border="" align="center">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Price</th>
            </tr>
            <tbody>
                {{-- @foreach ($myProducts as $product)
                <tr>
                    <td>{{ $product['id'] }}</td>
                    <td>{{ $product['name'] }}</td>
                    <td>{{ $product['price'] }}</td>
                </tr>
                @endforeach --}}
                @forelse ($myProducts as $product )
                <tr>
                    <td>{{ $product['id'] }}</td>
                    <td>{{ $product['name'] }}</td>
                    <td>{{ $product['price'] }}</td>
                </tr>
                @empty
                    <caption>No Products Found</caption>
                @endforelse
            </tbody>
        </table>

</body>

</html>
