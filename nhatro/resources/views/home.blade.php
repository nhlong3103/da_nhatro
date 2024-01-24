@extends('layouts.app')
@section('css')
    <link href="{{ url('public/frontend') }}/style.css" rel="stylesheet">
    <style>
        .line-clamp-2 {
            display: -webkit-box;
            -webkit-box-orient: vertical;
            overflow: hidden;
            -webkit-line-clamp: 2;
        }
    </style>
@endsection
@section('content')
    @include('layouts.nav')
    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
    <div class="album py-5 bg-light">
        <div class="container">
            <div class="row">
                <div class="col-md-8" style="border-radius:8px;border: 3px solid #868686">
                    @isset($baivietvip)
                        @foreach ($baivietvip as $item)
                            <h5>Bài vip</h5>
                            <a class="text-reset text-decoration-none"
                                href="{{ route('xemchitiet', ['id' => $item->id, 'slug' => Str::slug($item->tieu_de)]) }}">
                                @php
                                    $imageNames = explode(',', $item->anh_gioi_thieu);
                                    $imageCount = count($imageNames);
                                @endphp
                                @if ($imageCount == 1)
                                    <div class="image-container">

                                        <img class="img-one" src="{{ url('public/images') }}/{{ $imageNames[0] }}">
                                    </div>
                                @elseif($imageCount == 2)
                                    <div class="image-container">
                                        <div class="row">
                                            <div class="col-6 padding_0px">
                                                <img class="img-two" src="{{ url('public/images') }}/{{ $imageNames[0] }}">
                                            </div>
                                            <div class="col-6 padding_0px">
                                                <img class="img-two" src="{{ url('public/images') }}/{{ $imageNames[1] }}">
                                            </div>
                                        </div>
                                    </div>
                                @elseif($imageCount == 3)
                                    <div class="image-container">

                                        <div class="row">
                                            <div class="col-8 padding_0px">
                                                <img class="img-two" src="{{ url('public/images') }}/{{ $imageNames[0] }}">
                                            </div>
                                            <div class="col-4 padding_0px">
                                                <div class="row">
                                                    <div class="col-12">
                                                        <img class="img-three"
                                                            src="{{ url('public/images') }}/{{ $imageNames[1] }}">
                                                    </div>
                                                    <div class="col-12">
                                                        <img class="img-three"
                                                            src="{{ url('public/images') }}/{{ $imageNames[2] }}">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endif
                                <div class="card mb-4 shadow-sm">
                                    <div class="card-body">
                                        <p class="card-text line-clamp-2">{{ $item->tieu_de }}</p>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div>
                                                <span style="font-weight: bold">Đánh giá chủ nhà:</span>
                                                <span>
                                                    @if ($item->rate == 1)
                                                        <label style="color: rgb(255, 183, 0)">★☆☆☆☆</label>
                                                    @elseif($item->rate == 2)
                                                        <label style="color: rgb(255, 183, 0)">★★☆☆☆</label>
                                                    @elseif($item->rate == 3)
                                                        <label style="color: rgb(255, 183, 0)">★★★☆☆</label>
                                                    @elseif($item->rate == 4)
                                                        <label style="color: rgb(255, 183, 0)">★★★★☆</label>
                                                    @elseif($item->rate == 5)
                                                        <label style="color: rgb(255, 183, 0)">★★★★★</label>
                                                    @else
                                                        <label>Chưa có đánh giá</label>
                                                    @endif
                                                </span>
                                            </div>
                                        </div>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div>
                                                <span style="font-weight: bold">{{ $item->hoTen }}</span>
                                                <span style="color: blue"> || </span>
                                                <span style="font-weight: bold">Số điện thoại: {{ $item->sdt }}</span>
                                            </div>
                                            <small class="text-muted">{{ $item->updated_at }}</small>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        @endforeach
                    @endisset


                    @isset($baiviet)
                        @foreach ($baiviet as $item)
                            @if ($item->user_id == Auth::id())
                                <a href="{{ route('baiviet.dkVip', ['id' => $item->id]) }}" class="btn btn-danger">Đăng kí bài
                                    vip</a>
                            @endif

                            <a class="text-reset text-decoration-none"
                                href="{{ route('xemchitiet', ['id' => $item->id, 'slug' => Str::slug($item->tieu_de)]) }}">
                                @php
                                    $imageNames = explode(',', $item->anh_gioi_thieu);
                                    $imageCount = count($imageNames);
                                @endphp
                                @if ($imageCount == 1)
                                    <div class="image-container">

                                        <img class="img-one" src="{{ url('public/images') }}/{{ $imageNames[0] }}">
                                    </div>
                                @elseif($imageCount == 2)
                                    <div class="image-container">
                                        <div class="row">
                                            <div class="col-6 padding_0px">
                                                <img class="img-two" src="{{ url('public/images') }}/{{ $imageNames[0] }}">
                                            </div>
                                            <div class="col-6 padding_0px">
                                                <img class="img-two" src="{{ url('public/images') }}/{{ $imageNames[1] }}">
                                            </div>
                                        </div>
                                    </div>
                                @elseif($imageCount == 3)
                                    <div class="image-container">

                                        <div class="row">
                                            <div class="col-8 padding_0px">
                                                <img class="img-two" src="{{ url('public/images') }}/{{ $imageNames[0] }}">
                                            </div>
                                            <div class="col-4 padding_0px">
                                                <div class="row">
                                                    <div class="col-12">
                                                        <img class="img-three"
                                                            src="{{ url('public/images') }}/{{ $imageNames[1] }}">
                                                    </div>
                                                    <div class="col-12">
                                                        <img class="img-three"
                                                            src="{{ url('public/images') }}/{{ $imageNames[2] }}">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endif
                                <div class="card mb-4 shadow-sm">
                                    <div class="card-body">
                                        <p class="card-text line-clamp-2">{{ $item->tieu_de }}</p>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div>
                                                <span style="font-weight: bold">Đánh giá chủ nhà:</span>
                                                <span>
                                                    @if ($item->rate == 1)
                                                        <label style="color: rgb(255, 183, 0)">★☆☆☆☆</label>
                                                    @elseif($item->rate == 2)
                                                        <label style="color: rgb(255, 183, 0)">★★☆☆☆</label>
                                                    @elseif($item->rate == 3)
                                                        <label style="color: rgb(255, 183, 0)">★★★☆☆</label>
                                                    @elseif($item->rate == 4)
                                                        <label style="color: rgb(255, 183, 0)">★★★★☆</label>
                                                    @elseif($item->rate == 5)
                                                        <label style="color: rgb(255, 183, 0)">★★★★★</label>
                                                    @else
                                                        <label>Chưa có đánh giá</label>
                                                    @endif
                                                </span>
                                            </div>
                                        </div>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div>
                                                <span style="font-weight: bold">{{ $item->hoTen }}</span>
                                                <span style="color: blue"> || </span>
                                                <span style="font-weight: bold">Số điện thoại: {{ $item->sdt }}</span>
                                            </div>
                                            <small class="text-muted">{{ $item->updated_at }}</small>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        @endforeach
                    @endisset
                </div>
                <div class="col-md-3 ml-3" style="border-radius:8px;border: 3px solid #868686; padding-left: 15px;">
                    <h5>TOP CHỦ NHÀ ĐƯỢC ĐÁNH GIÁ CAO NHẤT</h5>
                    @foreach ($partner as $item)
                        <span>
                            <label for="">{{ $item->hoTen }}: </label>
                            @if ($item->rate == 1)
                                <label style="color: rgb(255, 183, 0)">★☆☆☆☆</label>
                            @elseif($item->rate == 2)
                                <label style="color: rgb(255, 183, 0)">★★☆☆☆</label>
                            @elseif($item->rate == 3)
                                <label style="color: rgb(255, 183, 0)">★★★☆☆</label>
                            @elseif($item->rate == 4)
                                <label style="color: rgb(255, 183, 0)">★★★★☆</label>
                            @elseif($item->rate == 5)
                                <label style="color: rgb(255, 183, 0)">★★★★★</label>
                            @else
                                <label style="font-weight:bold">Chưa có đánh giá</label>
                            @endif
                        </span>
                        <br>
                    @endforeach
                </div>
            </div>

            <div class="pagi">
                {{ $baiviet->links() }}
            </div>
        </div>

        @include('layouts.footer')
    @endsection
