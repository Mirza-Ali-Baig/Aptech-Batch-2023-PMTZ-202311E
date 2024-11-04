<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Employee;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class EmployeeController extends Controller
{
   public function index()
   {
// Query builder
//       $employees=DB::table('employees')
//           ->join('departments','employees.department_id','departments.id')
//           ->select('employees.*','departments.name as department')
//           ->where('departments.name','HR')
//           ->get();
//       return $employees;
       $employees=Employee::with('departments')->get();
       return $employees;
   }
}

// Eloquent ORM
