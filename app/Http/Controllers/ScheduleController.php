<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Polyclinic;

class ScheduleController extends Controller
{
    public function index()
    {
        $polyclinics = Polyclinic::all();

        return view('layouts.schedule', [
            'title' => 'Official Website RSMN',
            'active' => 'Schedule',
        ], compact('polyclinics'));
    }
}
