<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});


Route::get('/about-us',function(){
//    return "<h1>About Page <p>This is about page</p></h1>"; 
   return view("about"); 

});

Route::get('/contact',function(){
//    return "<h1>Contact Page</h1>"; 
   return view('contact'); 
});