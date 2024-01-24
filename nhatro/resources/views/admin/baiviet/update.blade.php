@extends('layouts.app')
@section('css')
    <!-- summernote -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
@endsection
@section('content')
    {{-- @include('layouts.nav') --}}
    <hr>
    <div class="container responsive">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">Thêm bài đăng</div>

                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-danger" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif

                        <form method="POST" action="{{ route('baiviet.postUpdate', $baiviet->id) }}"
                            enctype="multipart/form-data">
                            @csrf
                            <div class="form-group">
                                <label for="">Tiêu đề</label>
                                <input type="text" name="tieu_de" id="" value="{{ $baiviet->tieu_de }}"
                                    class="form-control" placeholder="Nhập tiêu đề" aria-describedby="helpId">
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-3">
                                        <label for="">Diện tích</label>
                                        <input type="number" name="dien_tich" id=""
                                            value="{{ $baiviet->dien_tich }}" class="form-control"
                                            placeholder="Tối đa 110 ký tự" aria-describedby="helpId">
                                    </div>

                                    <div class="col-3">
                                        <label for="">Giá tiền</label>
                                        <input type="number" name="gia_tien" id=""
                                            value="{{ $baiviet->gia_tien }}" class="form-control"
                                            placeholder="Tối đa 110 ký tự" aria-describedby="helpId">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="">Ảnh giới thiệu</label>
                                <input type="file" name="anh_gioi_thieu[]" id="" class="form-control-file"
                                    id="anh_gioi_thieu" multiple>
                            </div>

                            @foreach (explode(',', $baiviet->anh_gioi_thieu) as $imageName)
                                <img src="{{ url('public/images') }}/{{ trim($imageName) }}" width="100" height="120">
                            @endforeach

                            <br><br>


                            <div class="form-group">
                                <label for="">Nội dung</label>
                                <textarea name="noi_dung" id="summernote" cols="100" rows="30">{!! $baiviet->noi_dung !!}</textarea>
                            </div>

                            <div class="form-group">
                                <label for="">Loại</label>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="type" id="" value="0"
                                            {{ $baiviet->type == 0 ? 'checked' : '' }}>
                                        <span>Nhà trọ</span>
                                    </label>
                                    <label>
                                        <input type="radio" name="type" id="" value="1"
                                            {{ $baiviet->type == 1 ? 'checked' : '' }}>
                                        <span>CCMN</span>
                                    </label>
                                    <label>
                                        <input type="radio" name="type" id="" value="2"
                                            {{ $baiviet->type == 2 ? 'checked' : '' }}>
                                        <span>Nhà nguyên căn</span>
                                    </label>
                                </div>
                            </div>

                            <button type="submit" class="btn btn-primary">Đăng tin</button>
                        </form>


                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('js')
    <!-- include summernote css/js -->
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>

    <script>
        $('#summernote').summernote({
            placeholder: 'Nhập nội dung vào đây',
            tabsize: 2,
            height: 500
        });
        // var content = $('#summernote').data('content');
        // $('#summernote').summernote('code', content);
    </script>
@endsection
