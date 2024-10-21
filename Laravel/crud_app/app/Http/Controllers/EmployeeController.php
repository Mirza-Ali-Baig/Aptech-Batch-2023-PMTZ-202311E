<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class EmployeeController extends Controller
{
   public function index(){
    $employees= DB::table('employees')->get();
    return view('employess.index',['employees'=>$employees]);
   }
   public function create(){
    return view('employess.create');
   }
   public function store(Request $request){
        DB::table('employees')->insert([
            'name'=>$request->name,
            'email'=>$request->email,
            'designation'=>$request->designation,
            'age'=>$request->age
        ]);
        return redirect('/employees');
   }
}

// Query Builder
// Eloquent ORM
