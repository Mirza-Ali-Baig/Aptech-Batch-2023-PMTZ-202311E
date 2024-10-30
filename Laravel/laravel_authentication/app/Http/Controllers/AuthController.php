<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function register(Request $req){

        $req->validate([
            'name'=>'required',
            'email'=>'required|unique:users',
            'password'=>'required|alpha_num'
        ],[
            'name.required'=>'Name is required',
            'email.required'=>'Email is required',
            'email.unique'=>'Email already exists',
            'password.required'=>'Password is required',
        ]);

        User::create([
            'name'=>$req->name,
            'email'=>$req->email,
            'password'=>Hash::make($req->password),
        ]);
        return redirect('/login');
    }
    public function login(Request $request)
    {
        $data=$request->validate([
            'email'=>'required',
            'password'=>'required|alpha_num'
        ]);

        if(Auth::attempt($data)){
            return redirect('/dashboard');
        }else{
            return redirect('/login');
        }
    }

    public function logout()
    {
        Auth::logout();
        return redirect('/login');
    }
    public function dashboard()
    {
        if(Auth::check()){
            return view('dashboard');
        }
        return redirect('/login');
    }
}
// middleware('auth')
