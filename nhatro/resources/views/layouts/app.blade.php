<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    @yield('css')

</head>

<body>

    <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
        <div class="container">
            <div class="col-md-4 col-12">
                <div class="row">
                    <a class="navbar-brand" href="{{ url('/') }}">
                        {{ config('Trang chủ', 'Trang chủ') }}
                    </a>
                </div>
            </div>

            {{-- <div class="col-md-4 col-12">
                <div class="row">
                    <form action="" class="form-inline my-2 my-lg-0">
                        <input class="form-control mr-sm-2 rounded-pill" type="search" name="search_string"
                            placeholder="Tìm kiếm...." aria-label="Search">
                        <button class="btn btn-info my-2 my-sm-0 rounded-pill" type="submit">Tìm kiếm</button>
                    </form>
                </div>
            </div> --}}

            <div class="col-md-5 col-12">
                <!-- Right Side Of Navbar -->
                <div class="row">
                    <ul class="nav justify-content-end">
                        <!-- Authentication Links -->
                        @guest
                            @if (Route::has('login'))
                                <li class="nav-item">
                                    <a class="nav-link text-reset text-decoration-none"
                                        href="{{ route('login') }}">{{ __('Đăng nhập') }}</a>
                                </li>
                            @endif

                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link text-reset text-decoration-none"
                                        href="{{ route('register') }}">{{ __('Đăng kí') }}</a>
                                </li>
                            @endif
                        @else
                            @unless (auth()->user()->can('admin') ||
                                    auth()->user()->can('partner'))
                                <li class="nav-item">
                                    <a class="nav-link text-reset text-decoration-none"
                                        href="{{ route('partner.create') }}">{{ __('Đăng kí đối tác') }}</a>
                                </li>
                            @endunless


                            @canany(['admin', 'partner'])
                                <li class="nav-item">
                                    <a class="nav-link text-reset text-decoration-none"
                                        href="{{ route('partner.napTien') }}">{{ __('Nạp tiền vào tài khoản') }}</a>
                                </li>

                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle text-reset text-decoration-none" href="#"
                                        role="button" data-toggle="dropdown" aria-expanded="false">
                                        Quản lý bài đăng
                                    </a>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="{{ route('baiviet.create') }}">{{ __('Đăng tin') }}</a>
                                        <div class="dropdown-divider"></div>

                                        @can('admin')
                                            <a class="dropdown-item"
                                                href="{{ route('baiviet.index') }}">{{ __('Danh sách tin đã đăng') }}</a>
                                        @endcan

                                        <a class="dropdown-item"
                                            href="{{ route('baiviet.index_for_user') }}">{{ __('Danh sách tin của bạn') }}</a>
                                    </div>
                                </li>
                            @endcanany


                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-reset text-decoration-none" href="#"
                                    role="button" data-toggle="dropdown" aria-expanded="false">
                                    Xin chào: {{ Auth::user()->name }}
                                </a>
                                <div class="dropdown-menu">
                                    <div class="">
                                        <a class="dropdown-item text-reset text-decoration-none"
                                            href="{{ route('logout') }}"
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                            {{ __('Đăng xuất') }}
                                        </a>

                                        <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                            class="d-none">
                                            @csrf
                                        </form>
                                    </div>

                                    <div class="dropdown-divider"></div>

                                    @can('partner')
                                        <a href="{{ route('partner.detail', [Auth::user()->id]) }}"
                                            class="dropdown-item text-reset text-decoration-none">
                                            {{ __('Thông tin partner') }}
                                        </a>
                                    @endcan

                                    @can('admin')
                                        <a class="dropdown-item text-reset text-decoration-none"
                                            href="{{ route('partner.index') }}">
                                            {{ __('Danh sách partner') }}
                                        </a>
                                    @endcan

                                </div>
                            </li>




                            {{-- <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle text-reset text-decoration-none"
                                    href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }}
                                </a>

                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item text-reset text-decoration-none" href="{{ route('logout') }}"
                                        onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Đăng xuất') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                                </div>
                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item text-reset text-decoration-none" href="{{ route('logout') }}">
                                        {{ __('Thông tin partner') }}
                                    </a>
                                </div>
                            </li> --}}
                        @endguest
                    </ul>
                </div>
            </div>
        </div>
    </nav>

    <div>
        @yield('content')
    </div>

    <script src="{{ url('public') }}/js/app.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous">
    </script>

    @yield('js')
</body>

</html>
