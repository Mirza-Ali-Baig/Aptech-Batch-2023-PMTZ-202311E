<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class EmployeeController extends Controller
{
    public function index()
    {
        $employees = DB::table('employees')->paginate(3);
        // return $employees;
        return view('employess.index', ['employees' => $employees]);
    }
    public function create()
    {
        return view('employess.create');
    }
    public function store(Request $request)
    {
        DB::table('employees')->insert([
            'name' => $request->name,
            'email' => $request->email,
            'designation' => $request->designation,
            'age' => $request->age
        ]);
        return redirect('/employees');
    }
    public function edit($id)
    {
        $employee = DB::table('employees')->find($id);
        // return $employee;
        return view('employess.edit', ['employee' => $employee]);
    }
    public function update($id, Request $request)
    {
        DB::table('employees')->where('id', $id)->update([
            'name' => $request->name,
            'email' => $request->email,
            'designation' => $request->designation,
            'age' => $request->age
        ]);
        return redirect('/employees'); 
        // return $request->all();
    }
    public function destroy($id){
        DB::table('employees')->where('id', $id)->delete();
        return redirect('/employees'); 
    }
}

// Query Builder
// Eloquent ORM
