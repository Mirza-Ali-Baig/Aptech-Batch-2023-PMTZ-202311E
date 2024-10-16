# Laravel Course - Class 2

## Overview

Welcome to Class 2 of our Laravel course! In this session, we explored routing, parameters, and Blade templating in Laravel. This document summarizes the key concepts and examples covered.

## Key Concepts

### 1. Routing in Laravel

Routing allows you to define the endpoints of your application. In Laravel, you can define routes in the `web.php` file.

#### Required Parameters
You can create routes that accept parameters. For example:

```php
Route::get('/students/{id}', function ($id) {
    return "<h1>Student id : $id </h1>";
});
```

#### Optional Parameters
You can also define optional parameters:

```php
Route::get('/employees/{id?}', function ($id = 1) {
    return "<h1>Employees Id : $id </h1>";
});
```

#### Multiple Parameters
Routes can accept multiple parameters:

```php
Route::get('/users/{id}/{name}', function ($id = 1, $name) {
    return "<h1>Employees Name : $name <br> Employees Id : $id </h1>";
});
```

### 2. Route Constraints
You can apply constraints to route parameters, like ensuring a parameter is numeric or alphabetic:

```php
Route::get('/posts/{id}', function ($id) {
    return "<h1>Post Id : $id </h1>";
})->whereNumber('id');

Route::get('/posts/{comment}', function ($comment) {
    return "<h1>Post Comment : $comment </h1>";
})->whereAlpha('comment');

Route::get('/channel/{name}', function ($name) {
    return "<h1>Channel Name : $name </h1>";
})->where('name', '@[a-zA-Z]+');
```

### 3. Group Routes and Named Routes
You can group routes for better organization. Named routes allow you to generate URLs easily.

### 4. Blade Templating
Blade is Laravel's powerful templating engine that allows you to create dynamic views.

#### Example of Blade Syntax
- Displaying Variables:
```blade
{{ 'Hello World' }}
```

- Control Structures:
```blade
@for ($i = 0; $i < 10; $i++)
    <ul>
        <li>Inside For Loop</li>
    </ul>
@endfor
```

- Conditional Statements:
```blade
@if ($name === 'Talha')
    <strong>Hello {{ $name }}</strong>
@else
    <strong>Hello Guest</strong>
@endif
```

### 5. Displaying Data in Tables
You can display data in a table format using Blade's loop structures:

```blade
<table>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Price</th>
    </tr>
    <tbody>
        @forelse ($myProducts as $product)
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
```

## Conclusion

In this class, we covered important routing techniques, parameters, and the basics of Blade templating in Laravel. Understanding these concepts is crucial for building web applications with Laravel. Be sure to practice these examples and explore more features of Laravel as you continue your learning journey!
