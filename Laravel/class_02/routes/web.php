<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});


// Route Parameter
// Required parameter
// Optional parameter
// Multiple parameter


// Required parameter

Route::get('/students/{id}', function ($id) {
    return "<h1>Student id : $id </h1>";
});


// Optional parameter

Route::get('/employees/{id?}', function ($id = 1) {
    return "<h1>Employees Id : $id </h1>";
});


// Multiple parameter
Route::get('/users/{id}/{name}', function ($id = 1, $name) {
    return "<h1>
    Employees Name : $name 
    Employees Id : $id 
    </h1>";
});



Route::get('/posts/{id}', function ($id) {
    return "<h1>Post Id : $id </h1>";
})->whereNumber('id');

Route::get('/posts/{comment}', function ($comment) {
    return "<h1>Post Comment : $comment </h1>";
})->whereAlpha('comment');

Route::get('/channel/{name}', function ($name) {
    return "<h1>Channel Name : $name </h1>";
})->where('name', '@[a-zA-Z]+');

// group routes
// Named routes


Route::get('/products', function () {
    $products = [
        [
            'id' => 1,
            'name' => 'Product 1',
            'price' => 10.99
        ],
        [
            'id' => 2,
            'name' => 'Product 2',
            'price' => 9.99
        ],
        [
            'id' => 3,
            'name' => 'Product 3',
            'price' => 12.99
        ],
        [
            'id' => 4,
            'name' => 'Product 4',
            'price' => 8.99
        ],
        [
            'id' => 5,
            'name' => 'Product 5',
            'price' => 11.99
        ],

    ];
    return view('products', ['myProducts' => $products]);
});
