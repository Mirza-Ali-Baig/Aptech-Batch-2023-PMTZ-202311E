<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Department;
use Illuminate\Http\Request;

class DepartmentController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $departments=Department::with('employees')->get();
        return response()->json([
            'status'=>true,
            'message'=>'departments retrieved successfully',
            'data'=>$departments
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name'=>'required'
        ]);
       $department=Department::create([
           'name'=>$request->name
       ]);
       if ($department){
           return response()->json([
               'status'=>true,
               'message'=>'department created successfully',
               'data'=>$department
           ]);
       }else{
           return response()->json([
               'status'=>false,
               'message'=>'department not created',
               'data'=>[]
           ]);
       }
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
       $department=Department::with('employees')->find($id);
        if ($department){
            return response()->json([
                'status'=>true,
                'message'=>'department retrieved successfully',
                'data'=>$department
            ]);
        }else{
            return response()->json([
                'status'=>false,
                'message'=>'department not found',
                'data'=>[]
            ]);
        }
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
           'name'=>'required'
        ]);
        $department=Department::find($id)->update([
            'name'=>$request->name
        ]);
        if ($department){
            return response()->json([
                'status'=>true,
                'message'=>'department updated successfully',
                'data'=>Department::find($id)
            ]);
        }else{
            return response()->json([
                'status'=>false,
                'message'=>'department not updated',
                'data'=>[]
            ]);
        }

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $deletedDepartment=Department::find($id);
       $department=Department::destroy($id);
        if ($department){
            return response()->json([
                'status'=>true,
                'message'=>'department deleted successfully',
                'data'=>$deletedDepartment
            ]);
        }else{
            return response()->json([
                'status'=>false,
                'message'=>'department not deleted',
                'data'=>[]
            ]);
        }
    }
}
