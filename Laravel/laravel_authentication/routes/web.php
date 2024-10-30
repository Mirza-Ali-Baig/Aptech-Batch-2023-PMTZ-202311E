<?php

use App\Http\Controllers\AuthController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

// Register Routes
Route::view('/register', 'register');
Route::post('/register',[AuthController::class,'register']);

// Login Routes
Route::view('/login', 'login');
Route::post('/login',[AuthController::class,'login']);

// Logout Route
Route::get('/logout',[AuthController::class,'logout']);

Route::view('/dashboard', 'dashboard');

