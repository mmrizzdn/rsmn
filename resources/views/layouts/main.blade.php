<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <link rel="icon" href="{{ asset('assets/favicon/icon.png') }}" sizes="16x16" style="width: 64px; height: 32px;">
    <title>{{ $title }}</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
        integrity="531dcd88f8" crossorigin="anonymous">

    <link rel="stylesheet" href="{{ asset('css/owl.carousel/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/owl.carousel/owl.theme.default.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/style.css') }}" />
</head>

<body>
    @include('partials.navbar')

    @yield('container')

    <!-- <div class="overlay"></div> -->
    <div class="container">
        <div class="popup" id="popup">
            <img src="{{ asset('assets/img/doctor.png') }}" alt="doctor" />
            <h2>Maaf!</h2>
            <p>Waduh...Mohon maaf, ya!</p>
            <p>Website sedang dalam masa pemeliharaan</p>
            <button type="button" onclick="closePopup()">Oke</button>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous">
    </script>
    <script src="{{ asset('vendor/jquery.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('script.js') }}"></script>
    <script src="{{ asset('js/owl.carousel.min.js') }}"></script>
    <script src="https://kit.fontawesome.com/531dcd88f8.js" crossorigin="anonymous"></script>

</body>

</html>
