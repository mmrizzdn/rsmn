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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
        integrity="531dcd88f8" crossorigin="anonymous">

    <link rel="stylesheet" href="{{ asset('css/style.css') }}" />
</head>

<body>
    @include('partials.navbar')

    <section class="schedule" id="schedule">
        <div class="schedule-wrapper">
            <div class="schedule-text">
                <h1 class="schedule-heading">Jadwal Dokter</h1>
                <p class="schedule-subheading">
                    Berikut daftar dokter yang tersedia pada Rumah Sakit
                    Medika Nusantara
                </p>
            </div>
            <div class="card-wrapper d-flex">
                @foreach ($polyclinics->unique('title') as $polyclinic)
                    <div class="card" style="width: 22rem; height: 28rem">
                        <div class="card-body">
                            <div class="card-icon">
                                {!! $polyclinic->icon !!}
                            </div>
                            <h5 class="card-title">{{ $polyclinic->title }}</h5>
                            <p class="card-text">
                                {{ $polyclinic->description }}
                            </p>
                            <div class="detail-wrapper">
                                <ul class="detail">
                                    <li class="detail-items">
                                        <i class="fa-solid fa-circle-check"></i> Hari:
                                        {{ $polyclinic->day }}
                                    </li>
                                    <li class="detail-items">
                                        <i class="fa-solid fa-circle-check"></i> Jam buka:
                                        {{ $polyclinic->time }}
                                    </li>
                                    <li class="detail-items">
                                        <i class="fa-solid fa-circle-check"></i> Dokter:
                                        {{ $polyclinic->name }}
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous">
    </script>

    <script type="text/javascript" src="{{ asset('script.js') }}"></script>
</body>

</html>
