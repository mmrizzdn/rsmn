@extends('dashboard.layouts.main')

@section('container')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center p-3 mt-3 mb-3 border-bottom">
        <div class="text-wrapper">
            <h1 class="h2">Halo, {{ auth()->user()->name }}</h1>
            <h6>Silakan tambahkan pasien dengan tombol di samping!</h6>
        </div>
        <button type="submit" class="add-btn">
            <a href="{{ route('patient.register') }}" class="btn border-none">Tambah</a>
        </button>
    </div>

    <div
        class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center p-3 mt-3 mb-3 column-gap-3 border-bottom">
        <div class="card mb-3" style="width: 100%; height: 8rem">
            <div class="container-wrapper row g-0 ps-4 pe-4 justify-content-between">
                <div class="col-md-4 d-flex justify-content-center align-items-center">
                    <h1 class="d-flex justify-content-center align-items-center"><i
                            class="bi bi-person-fill d-flex justify-content-center align-items-center"></i></h1>
                </div>
                <div class="card-body-wrapper col-md-8">
                    <div class="card-body">
                        <h1 class="card-title">{{ $totalUsers }}</h1>
                        <p class="card-text">Jumlah User</p>

                    </div>
                </div>
            </div>
        </div>

        <div class="card mb-3" style="width: 100%; height: 8rem">
            <div class="container-wrapper row g-0 ps-4 pe-4 justify-content-between">
                <div class="col-md-4 d-flex justify-content-center align-items-center">
                    <h1 class="d-flex justify-content-center align-items-center"><i
                            class="bi bi-card-checklist d-flex justify-content-center align-items-center"></i></h1>
                </div>
                <div class="card-body-wrapper col-md-8">
                    <div class="card-body">
                        <h1 class="card-title">{{ $totalPatients }}</h1>
                        <p class="card-text">Pasien Terdaftar</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="card mb-3" style="width: 100%; height: 8rem">
            <div class="container-wrapper row g-0 ps-4 pe-4 justify-content-between">
                <div class="col-md-4 d-flex justify-content-center align-items-center">
                    <h1 class="d-flex justify-content-center align-items-center"><i
                            class="bi bi-person-vcard d-flex justify-content-center align-items-center"></i></h1>
                </div>
                <div class="card-body-wrapper col-md-8">
                    <div class="card-body">
                        <h1 class="card-title">{{ $totalDoctors }}</h1>
                        <p class="card-text">Jumlah Dokter</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div
        class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center p-3 mt-3 mb-3 column-gap-3 border-bottom">
        <div class="table-wrapper p-3 mb-2 border border-dark-subtle rounded">
            <table class="table table-hover">
                <thead class="table">
                    <tr>
                        <th class="text-center" scope="col">No.</th>
                        <th class="text-center" scope="col">Tanggal Masuk</th>
                        <th class="text-center" scope="col">No. Antrian</th>
                        <th class="text-center" scope="col">Nama Pasien</th>
                        <th class="text-center" scope="col">Jenis Daftar</th>
                        <th class="text-center" scope="col">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($patients as $patient)
                        <tr>
                            <td class="text-center">{{ $patient->number }}</td>
                            <td class="text-center">{{ $patient->date }}</td>
                            <td class="text-center">{{ $patient->queue }}</td>
                            <td class="text-center">{{ $patient->name }}</td>
                            <td class="text-center">{{ $patient->type }}</td>
                            <td class="text-center">
                                <div class="buttons d-flex justify-content-evenly">
                                    <a href="#" class="view btn btn-primary" data-toggle="modal"
                                        data-target="#showModal{{ $patient->id }}"><i class="bi bi-eye"></i></a>
                                    <a href="{{ route('patient.edit', ['patient' => $patient->id]) }}"
                                        class="update btn btn-success"><i class="bi bi-pen"></i></a>
                                    <form action="{{ route('patient.destroy', ['patient' => $patient->id]) }}"
                                        method="POST">
                                        @method('DELETE')
                                        @csrf
                                        <button class="delete btn btn-danger"><i class="bi bi-trash"></i></button>
                                    </form>
                                </div>
                            </td>
                        </tr>

                        @include('dashboard.patients.view')
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
@endsection
