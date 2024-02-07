<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\User;
use App\Models\Patient;
use App\Models\Polyclinic;

class DashboardController extends Controller
{
    public function index()
    {       
        $patients = Patient::orderBy('queue')->get();
        $polyclinics = Polyclinic::all();
        $users = User::all();
        $totalUsers = User::count();
        $totalPatients = Patient::count();
        $totalDoctors = $polyclinics->unique('name')->count();

        $patients->each(function($patient, $index) {
            $patient->number = $index + 1;
        });

        return view('dashboard.admin.index', compact('totalUsers', 'patients', 'totalPatients', 'totalDoctors', 'polyclinics', 'users'));
    }
}
