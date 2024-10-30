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
        ]);

        User::create([
            'name'=>$req->name,
            'email'=>$req->email,
            'password'=>Hash::make($req->password),
        ]);
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
}
