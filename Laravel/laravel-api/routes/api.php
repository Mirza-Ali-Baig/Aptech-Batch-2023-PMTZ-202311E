<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\EmployeeController;
use \App\Http\Controllers\Api\DepartmentController;
//Route::get('/user', function (Request $request) {
//    return $request->user();
//})->middleware('auth:sanctum');


Route::get('/employees',[EmployeeController::class,'index']);

Route::get('/departments',[DepartmentController::class,'index']);
