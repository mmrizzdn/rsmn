@extends('layouts.main')

@section('container')
    <section class="home" id="home">
        <!-- Home -->
        <div class="home-wrapper position-absolute">
            <h1 class="heading">Selamat Datang</h1>
            <p class="subheading">
                Website Medika Nusantara kini hadir dengan penampilan yang
                baru. Semoga dapat lebih efektif dalam memberikan informasi.
            </p>
            <a class="no-underline" href="#about"><button class="custom-button" type="submit" onclick="scrollToSection(about)">
                    Jelajahi sekarang
                </button></a>
        </div>
    </section>

    <!-- About -->
    <section class="about" id="about">
        <div class="about-wrapper">
            <div class="about-row d-flex align-items-center justify-content-between">
                <img src="{{ asset('assets/img/doctor.png') }}" alt="doctor" class="about-img" />
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
                </div>
            </div>
        </div>
    </section>

    <!-- Schedule -->
    <section class="schedule" id="schedule">
        <div class="schedule-wrapper">
            <div class="schedule-text">
                <h1 class="schedule-heading">Jadwal Dokter</h1>
                <p class="schedule-subheading">
                    Berikut daftar dokter yang tersedia pada Rumah Sakit
                    Medika Nusantara
                </p>
            </div>
            <div class="owl-carousel owl-theme">
                @foreach ($polyclinics->unique('title') as $polyclinic)
                    <div class="card" style="width: 100%; height: 26rem">
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
                            <a href="{{ route('schedule') }}" class="btn btn-primary">Lebih lanjut
                                <i class="bx bx-right-arrow-alt bx-xs"></i></a>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>

    {{-- Inpatient --}}
    <section class="inpatient" id="inpatient">
        <div class="inpatient-wrapper">
            <h1 class="inpatient-heading">Fasilitas Rawat Inap</h1>
            <div class="table-wrapper p-3 mb-2 border border-dark-subtle rounded">
                <table class="table">
                    <thead class="table">
                        <tr>
                            <th class="text-center" scope="col">Kelas</th>
                            <th class="text-center" scope="col">Jumlah Kasur</th>
                            <th class="text-center" scope="col">Terisi</th>
                            <th class="text-center" scope="col">Kosong</th>
                            <th class="text-center" scope="col">Harga</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($inpatients as $inpatient)
                            <tr>
                                <td class="text-center">{{ $inpatient->class }}</td>
                                <td class="text-center">{{ $inpatient->bed_total }}</td>
                                <td class="text-center">{{ $inpatient->filled }}</td>
                                <td class="text-center">{{ $inpatient->empty }}</td>
                                <td class="text-center">RP. {{ $inpatient->price }}</td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </section>

    <section class="installation" id="installation">
        <div class="installation-wrapper">
            <div class="installation-text">
                <h1 class="installation-heading">Fasilitas Instalasi</h1>
                <p class="installation-subheading">
                    Berikut fasilitas instalasi yang tersedia pada Rumah Sakit Medika Nusantara
                </p>
            </div>
            <div class="owl-carousel owl-theme">
                @foreach ($installations->unique('title') as $installation)
                    <div class="card" style="width: 100%; height: 28rem">
                        <div class="card-body">
                            <div class="card-image mb-3">
                                <img src="{{ asset($installation->img_path) }}" class="card-img-top img-fluid"
                                    alt="{{ $installation->title }}">
                            </div>
                            <h5 class="card-title">{{ $installation->title }}</h5>
                            <p class="card-text">
                                {{ $installation->description }}
                            </p>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>

    {{-- Gallery --}}
    <section class="gallery" id="gallery">
        <div class="gallery-wrapper">
            <h1 class="gallery-heading"> Galeri </h1>
            <div id="carouselExampleIndicators" class="carousel carousel-dark slide">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
                        aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                        aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                        aria-label="Slide 3"></button>
                </div>
                <div class="gradient-overlay-top"></div>
                <div class="carousel-inner">
                    @foreach ($installations->unique('title') as $key => $installation)
                        <div class="carousel-item {{ $key == 0 ? 'active' : '' }}">
                            <img src="{{ asset($installation->img_path) }}" class="d-block w-100"
                                alt="{{ $installation->title }}">
                        </div>
                    @endforeach
                </div>
                <div class="gradient-overlay-bottom"></div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                    data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                    data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
    </section>

    {{-- Contact --}}
    <section class="contact" id="contact">
        <div class="contact-wrapper">
            <div class="contact-row">
                <div class="contact-text">
                    <h1 class="contact-heading">Kontak Kami</h1>
                    <ul class="contact-menu">
                        @foreach ($contacts as $contact)
                            <li class="contact-item">{{ $contact->address }}</li>
                            <li class="contact-item">Telepon: {{ $contact->phone }}</li>
                            <li class="contact-item">Email: {{ $contact->email }}</li>
                        @endforeach
                    </ul>
                </div>
                <iframe src="{{ $contact->location }}" width="600" height="450" style="border:0;"
                    allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
    </section>

    <footer class="footer">© 2023 RS Medika Nusantara</footer>

    <!-- <div class="overlay"></div> -->
    <div class="container">
        <div class="popup" id="popup">
            <img src="img/doctor.png" alt="doctor" />
            <h2>Maaf!</h2>
            <p>Waduh...Mohon maaf, ya!</p>
            <p>Website sedang dalam masa pemeliharaan</p>
            <button type="button" onclick="closePopup()">Oke</button>
        </div>
    </div>
@endsection
