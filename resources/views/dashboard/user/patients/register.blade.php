<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="icon" href="{{ asset('assets/favicon/icon.png') }}" sizes="16x16" style="width: 64px; height: 32px;">
    <title>{{ $title }}</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
        integrity="531dcd88f8" crossorigin="anonymous">
    <link rel="stylesheet" href="{{ asset('css/style.css') }}" />
</head>

<body>
    <div class="register-wrapper container position-relative">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        <a href="#"><img src="{{ asset('assets/img/logo.png') }}" alt="logo"
                                class="logo" /></a>
                    </div>

                    <div class="card-body">
                        <form method="POST" action="{{ route('user.patient.store') }}" id="patientForm">
                            @csrf
                            <div class="row mb-3">
                                <label for="type"
                                    class="col-md-4 col-form-label text-md-end">{{ __('Jenis Pendaftaran') }}</label>
                                <div class="col-md-6">
                                    <select class="form-select" name="type" id="type">
                                        <option selected>{{ __('- Pilih -') }}</option>
                                        <option value="Umum" {{ old('type') == 'Umum' ? 'selected' : '' }}>
                                            Umum
                                        </option>
                                        <option value="BPJS" {{ old('type') == 'BPJS' ? 'selected' : '' }}>
                                            BPJS
                                        </option>
                                    </select>
                                    @error('type')
                                        <div class="text-danger">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="date"
                                    class="col-md-4 col-form-label text-md-end">{{ __('Tanggal') }}</label>
                                <div class="col-md-6">
                                    <input type="date" class="form-control" id="date" name="date">
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="time"
                                    class="col-md-4 col-form-label text-md-end">{{ __('Waktu') }}</label>
                                <div class="col-md-6">
                                    <select class="form-select" name="time" id="time">
                                        <option selected>{{ __('- Pilih -') }}</option>
                                        @foreach ($polyclinics->unique('time') as $polyclinic)
                                            <option value="{{ $polyclinic->time }}"
                                                {{ old('polyclinic') == $polyclinic->time ? 'selected' : '' }}>
                                                {{ $polyclinic->time }}
                                            </option>
                                        @endforeach
                                    </select>
                                    @error('time')
                                        <div class="text-danger">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="polyclinic"
                                    class="col-md-4 col-form-label text-md-end">{{ __('Poli') }}</label>
                                <div class="col-md-6">
                                    <select class="form-select" name="polyclinic" id="polyclinic">
                                        <option selected>{{ __('- Pilih -') }}</option>
                                        @foreach ($polyclinics as $polyclinic)
                                            <option value="{{ $polyclinic->title }}"
                                                {{ old('polyclinic') == $polyclinic->title ? 'selected' : '' }}>
                                                {{ $polyclinic->title }}
                                            </option>
                                        @endforeach
                                    </select>
                                    @error('polyclinic')
                                        <div class="text-danger">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="complain"
                                    class="col-md-4 col-form-label text-md-end">{{ __('Keluhan') }}</label>
                                <div class="col-md-6">
                                    <input type="text"
                                        class="form-control complain @error('complain') is-invalid @enderror"
                                        id="complain" name="complain" autofocus="autofocus"
                                        value="{{ old('complain') }}">
                                    @error('complain')
                                        <div class="text-danger">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>

                            <div class="row mb-0">
                                <div class="register-btn col-md-6 offset-md-4">
                                    <button type="submit" class="btn btn-primary position-relative">
                                        {{ __('Daftar') }}
                                    </button>
                                </div>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous">
    </script>
    <script src="https://kit.fontawesome.com/531dcd88f8.js" crossorigin="anonymous"></script>

    <script type="text/javascript" src="{{ asset('script.js') }} " defer></script>
</body>

</html>
