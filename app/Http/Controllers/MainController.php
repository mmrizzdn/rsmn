<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Polyclinic;
use App\Models\Inpatient;
use App\Models\Installation;
use App\Models\Contact;


class MainController extends Controller
{
    public function home()
    {
        $polyclinics = Polyclinic::all();
        $inpatients = Inpatient::all();
        $installations = Installation::all();
        $contacts = Contact::all();

        return view('home', [
            'title' => 'Official Website RSMN',
            'active' => 'home',
        ], compact('polyclinics', 'inpatients', 'installations', 'contacts'));
    }
}
