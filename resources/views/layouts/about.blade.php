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

    <section class="about" id="about">
        <div class="home-about-row d-flex justify-content-between">
            <div class="about-text">
                <h1 class="about-heading">Tentang</h1>
                <p class="about-subheading">
                    Rumah Sakit Medika Nusantara adalah salah satu
                    fasilitas medis terkemuka yang terletak di Ibukota
                    Baru, Indonesia. Rumah sakit ini diakui sebagai
                    pusat perawatan kesehatan yang sangat berkomitmen
                    untuk memberikan layanan medis berkualitas tinggi
                    kepada masyarakat sekitar. Rumah Sakit Medika
                    Nusantara sangat memperhatikan pelayanan pasien dan
                    berusaha menciptakan lingkungan yang ramah dan
                    nyaman bagi pasien dan keluarganya. Rumah Sakit
                    Medika Nusantara juga menyediakan layanan darurat 24
                    jam sehingga siap memberikan perawatan segera kepada
                    pasien yang membutuhkan perhatian medis
                    mendesak.Rumah Sakit Medika Nusantara di Ibukota
                    Baru, Indonesia, bukan hanya sekadar lembaga
                    kesehatan, tetapi juga menjadi lambang komitmen
                    mereka dalam menyediakan perawatan yang terbaik.
                </p>
                <button type="submit" class="report-btn btn btn-primary">
                    <a href="https://drive.google.com/file/d/1RLAnHe91HBdiznwvps_Sh1GBSjL_2K4L/view?usp=sharing"
                        class="report-link">Unduh Laporan Kinerja Rumah Sakit</a>
                </button>
            </div>
            <div class="img">
                <img src="{{ asset('assets/img/doctor.png') }}" alt="doctor" class="about-img" />
            </div>
        </div>
    </section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous">
    </script>
    <script type="text/javascript" src="{{ asset('script.js') }}"></script>
</body>

</html>
