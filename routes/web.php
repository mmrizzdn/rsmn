<?php

use App\Http\Controllers\DashboardController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MainController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\PatientController;
use App\Http\Controllers\AboutController;
use App\Http\Controllers\ScheduleController;

use App\Http\Middleware\AdminMiddleware;

use App\Models\User;
use App\Models\Patient;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/', function () {
//     return view('home');
// });

Route::get('/', [MainController::class, 'home'])->name('home');

Route::get('/about', [AboutController::class, 'index'])->name('about');

Route::get('/schedule', [ScheduleController::class, 'index'])->name('schedule');

// Auth::routes();

// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

// Auth::routes();

// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

// Auth::routes();

// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

// Auth::routes();

// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

// Auth::routes();

// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

// Route::post('/register', [AuthController::class, 'store'])
//     ->name('register.store');

Route::get('/register', [RegisterController::class, 'index'])->name('auth.register')->middleware('guest');
Route::post('/register', [RegisterController::class, 'store'])->name('auth.store')->middleware('guest');

Route::get('/login', [LoginController::class, 'index'])->name('auth.login')->middleware('guest');
Route::post('/login', [LoginController::class, 'authenticate'])->name('login')->middleware('guest');

Route::post('/logout', [LoginController::class, 'logout'])->name('logout')->middleware('auth');

Route::middleware(['auth', 'admin'])->group(function () {
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard.index')->middleware('auth');
    Route::get('dashboard/patients/register', [PatientController::class, 'index'])->name('patient.register')->middleware('auth');

    Route::get('/dashboard/{patient}/edit', [PatientController::class, 'edit'])->name('patient.edit')->middleware('auth');

    Route::get('dashboard/patients/register', [PatientController::class, 'indexAdmin'])->name('patient.register')->middleware('auth');

    Route::post('dashboard/patients/register', [PatientController::class, 'storeAdmin'])->name('patient.store')->middleware('auth');
    
    Route::patch('/dashboard/{patient}', [PatientController::class, 'update'])->name('patient.update')->middleware('auth');

    Route::delete('/dashboard/{patient}', [PatientController::class, 'destroy'])->name('patient.destroy')->middleware('auth');
});

Route::get('/patients/register', [PatientController::class, 'indexUser'])->name('user.patient.register')->middleware('auth');

Route::post('patients/register', [PatientController::class, 'storeUser'])->name('user.patient.store')->middleware('auth');
