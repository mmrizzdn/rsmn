<!-- Navigation Bar -->
<nav class="custom-navbar">
    <div class="nav-wrapper overflow-visible d-flex position-fixed justify-content-between" id="navbar">
        <a href="#"><img src="{{ asset('assets/img/logo.png') }}" alt="logo" class="logo" /></a>
        <div class="menu-wrapper d-flex p-0 m-0">
            <ul class="menu d-flex column-gap-5 align-items-center p-0 m-0">
                
                <li class="menu-item {{ Request::is('/') ? 'active' : '' }}">
                    <a class="nav-link" href="{{ route('home') }}" class="menu-link">Beranda</a>
                </li>
                <li class="menu-item {{ Request::is('schedule') ? 'active' : '' }}">
                    <a class="nav-link" href="{{ route('schedule') }}" class="menu-link">Jadwal</a>
                </li>
                <li class="menu-item {{ Request::is('user.patient.register') ? 'active' : '' }}">
                    <a class="nav-link" href="{{ route('user.patient.register') }}" class="menu-link">Daftar Pasien</a>
                </li>
                <li class="menu-item {{ Request::is('about') ? 'active' : '' }}">
                    <a class="nav-link" href="{{ route('about') }}" class="menu-link">Laporan Kinerja</a>
                </li>
            </ul>
        </div>

        <div class="menu-toggle bs justify-content-between d-flex column-gap-4 align-items-center">
            @auth
                <div class="dropdown-center position-relative">
                    <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown"
                        aria-expanded="false"><i class="fa-solid fa-user me-2"></i>
                        {{ auth()->user()->name }}
                    </button>
                    <ul class="dropdown-menu position-absolute">
                        <li>
                            <a class="dropdown-item" href="{{ route('dashboard.index') }}">
                                <i class="fa-solid fa-table-columns me-2"></i>Dashboard
                            </a>
                        </li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li>
                            <form action="{{ 'logout' }}" method="POST">
                                @csrf
                                <button type="submit" class="dropdown-item"><i
                                        class="fa-solid fa-right-from-bracket me-2"></i>Keluar</button>
                            </form>
                        </li>
                    </ul>
                </div>
            @else
                <a class="login" href="{{ route('auth.login') }}">Masuk</a>
                <a class="register d-flex align-items-center justify-content-center"
                    href="{{ route('auth.register') }}">Daftar</a>
            @endauth
        </div>
    </div>
</nav>
