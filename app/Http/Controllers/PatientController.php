<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Patient;
use App\Models\Polyclinic;
use App\Models\User;
use App\Http\Controller\Textarea;

class PatientController extends Controller
{
    public function indexAdmin()
    {
        $polyclinics = Polyclinic::all();
        $users = User::all();
        $patients = Patient::all();

        return view('dashboard.admin.patients.register', [
            'title' => "Daftar Pasien"
        ], compact('polyclinics', 'users'));
    }

    public function indexUser()
    {
        $polyclinics = Polyclinic::all();
        $users = User::all();
        $patients = Patient::all();

        return view('dashboard.user.patients.register', [
            'title' => "Daftar Pasien"
        ], compact('polyclinics'));
    }

    public function storeAdmin(Request $request)
    {
        $validateData = $request->validate([
            'type' => ['required', 'string', 'max:255'],
            'date' => ['required', 'date'],
            'time' => ['required', 'string', 'max:255'],
            'polyclinic' => ['required', 'string', 'max:255'],
            'name' => ['required', 'string', 'max:255'],
            'complain' => ['required', 'string', 'max:255'],
        ]);

        function generateQueueNum()
        {
            // Get the last queue number form db
            $lastQueueNum = Patient::max('queue');

            // Extract number from the last queue
            $lastNum = intval(substr($lastQueueNum, 1));

            // Add 1 into the last number
            $newNum = $lastNum + 1;

            // Join the letters and numbers to get the new queue number
            $newQueueNumber = 'A' . str_pad($newNum, 3, 0, STR_PAD_LEFT);

            return $newQueueNumber;
        }

        $queueNum = generateQueueNum();

        $polyclinics = Polyclinic::where('title', $validateData['polyclinic'])->first();

        $patient = new Patient();
        $patient->polyclinic_id = $polyclinics->id;
        $patient->type = $validateData['type'];
        $patient->date = $validateData['date'];
        $patient->time = $validateData['time'];
        $patient->polyclinic = $polyclinics->title;
        $patient->doctor = $polyclinics->name;
        $patient->queue = $queueNum;
        $patient->name = $validateData['name'];
        $patient->complain = $validateData['complain'];
        $patient->save();
        $request->session()->flash('success', 'Pendaftaran pasien berhasil!');
        return redirect()->route('dashboard.index');
    }

    public function storeUser(Request $request)
    {
        $validateData = $request->validate([
            'type' => ['required', 'string', 'max:255'],
            'date' => ['required', 'date'],
            'time' => ['required', 'string', 'max:255'],
            'polyclinic' => ['required', 'string', 'max:255'],
            'complain' => ['required', 'string', 'max:255'],
        ]);

        function generateQueueNum()
        {
            // Get the last queue number form db
            $lastQueueNum = Patient::max('queue');

            // Extract number from the last queue
            $lastNum = intval(substr($lastQueueNum, 1));

            // Add 1 into the last number
            $newNum = $lastNum + 1;

            // Join the letters and numbers to get the new queue number
            $newQueueNumber = 'A' . str_pad($newNum, 3, 0, STR_PAD_LEFT);

            return $newQueueNumber;
        }

        $queueNum = generateQueueNum();

        $polyclinics = Polyclinic::where('title', $validateData['polyclinic'])->first();

        $patient = new Patient();
        $patient->polyclinic_id = $polyclinics->id;
        $patient->type = $validateData['type'];
        $patient->date = $validateData['date'];
        $patient->time = $validateData['time'];
        $patient->polyclinic = $polyclinics->title;
        $patient->doctor = $polyclinics->name;
        $patient->queue = $queueNum;
        $patient->name = auth()->user()->name;
        $patient->complain = $validateData['complain'];
        $patient->save();
        $request->session()->flash('success', 'Pendaftaran pasien berhasil!');
        return redirect()->route('home');
    }

    public function edit($patient_id)
    {
        $result = Patient::findOrFail($patient_id);

        $polyclinics = Polyclinic::all();
        $users = User::all();

        return view('dashboard.admin.patients.edit', [
            'patient' => $result,
            'title' => "Update Pasien",
            'active' => 'login',
        ], compact('polyclinics', 'users'));
    }

    public function update(Request $request, Patient $patient)
    {
        $validateData = $request->validate([
            'type' => ['required', 'string', 'max:255'],
            'date' => ['required', 'date'],
            'time' => ['required', 'string', 'max:255'],
            'polyclinic' => ['required', 'string', 'max:255'],
            'name' => ['required', 'string', 'max:255'],
            'complain' => ['required', 'string', 'max:255'],
        ]);

        function generateQueueNum()
        {
            // Get the last queue number form db
            $lastQueueNum = Patient::max('queue');

            // Extract number from the last queue
            $lastNum = intval(substr($lastQueueNum, 1));

            // Add 1 into the last number
            $newNum = $lastNum + 1;

            // Join the letters and numbers to get the new queue number
            $newQueueNumber = 'A' . str_pad($newNum, 3, 0, STR_PAD_LEFT);

            return $newQueueNumber;
        }

        $queueNum = generateQueueNum();


        $polyclinics = Polyclinic::where('title', $validateData['polyclinic'])->first();

        $patient->polyclinic_id = $polyclinics->id;
        $patient->type = $validateData['type'];
        $patient->date = $validateData['date'];
        $patient->time = $validateData['time'];
        $patient->polyclinic = $polyclinics->title;
        $patient->doctor = $polyclinics->name;
        $patient->queue = $queueNum;
        $patient->name = $validateData['name'];
        $patient->complain = $validateData['complain'];
        $patient->save();
        $request->session()->flash('pesan', 'Update data pasien berhasil!');
        return redirect()->route('dashboard.index');
    }

    public function destroy(Request $request, Patient $patient)
    {
        $patient->delete();
        $request->session()->flash('pesan', 'Hapus data pasien berhasil');
        return redirect()->route('dashboard.index');
    }
}