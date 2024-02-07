<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AboutController extends Controller
{
    public function index()
    {
        return view('layouts.about', [
            'title' => 'Official Website RSMN',
            'active' => 'Schedule',
        ]);
    }
}
