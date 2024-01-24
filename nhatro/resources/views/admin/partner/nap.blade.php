@extends('layouts.app')
@section('content')
    {{-- @include('layouts.nav') --}}
    <hr>
    <div class="container responsive">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">Chọn gói nạp</div>

                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
                        <h1 class="display-4">Chọn gói</h1>
                        <p class="lead">Vui lòng chọn gói nạp mà bạn muốn</p>
                    </div>

                    <div class="container">
                        <div class="card-deck mb-3 text-center">
                            <div class="card mb-4 shadow-sm">
                                <div class="card-header">
                                    <h4 class="my-0 font-weight-normal">MOMO</h4>
                                </div>
                                <div class="card-body">
                                    <h1 class="card-title pricing-card-title">50.000 VNĐ</h1>
                                    <br><br>
                                    <form action="{{ route('partner.napTien') }}" method="GET">
                                        <input type="number" name="price" value="50000" hidden>
                                        <button type="submit" class="btn btn-lg btn-block btn-primary">Nạp</button>

                                    </form>
                                </div>
                            </div>
                            <div class="card mb-4 shadow-sm">
                                <div class="card-header">
                                    <h4 class="my-0 font-weight-normal">MOMO</h4>
                                </div>
                                <div class="card-body">
                                    <h1 class="card-title pricing-card-title">100.000 VNĐ</small>
                                    </h1>
                                    <br><br>
                                    <form action="{{ route('partner.napTien') }}" method="GET">
                                        <input type="number" name="price" value="100000" hidden>
                                        <button type="submit" class="btn btn-lg btn-block btn-primary">Nạp</button>

                                    </form>
                                </div>
                            </div>
                            <div class="card mb-4 shadow-sm">
                                <div class="card-header">
                                    <h4 class="my-0 font-weight-normal">MOMO</h4>
                                </div>
                                <div class="card-body">
                                    <h1 class="card-title pricing-card-title">200.000 VNĐ</small>
                                    </h1>
                                    <br><br>
                                    <form action="{{ route('partner.napTien') }}" method="GET">
                                        <input type="number" name="price" value="200000" hidden>
                                        <button type="submit" class="btn btn-lg btn-block btn-primary">Nạp</button>

                                    </form>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    @endsection
