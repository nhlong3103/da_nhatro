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

                        <form method="POST" action="{{ route('baiviet.postCreate') }}" enctype="multipart/form-data">
                            @csrf
                            <div class="form-group">
                                <label for="">Tiêu đề</label>
                                <input type="text" name="tieu_de" id="" value="{{ old('tieu_de') }}"
                                    class="form-control" placeholder="Nhập tiêu đề" aria-describedby="helpId">
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-3">
                                        <label for="">Diện tích</label>
                                        <input type="number" name="dien_tich" id="" value="{{ old('dien_tich') }}"
                                            class="form-control" placeholder="Tối đa 110 ký tự" aria-describedby="helpId">
                                    </div>

                                    <div class="col-3">
                                        <label for="">Giá tiền</label>
                                        <input type="number" name="gia_tien" id="" value="{{ old('gia_tien') }}"
                                            class="form-control" placeholder="Tối đa 110 ký tự" aria-describedby="helpId">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="">Ảnh giới thiệu</label>
                                <input type="file" name="anh_gioi_thieu[]" id="" class="form-control-file"
                                    id="anh_gioi_thieu" multiple>
                            </div>
                            <div id="selected_files"></div>


                            <br><br>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-4">
                                        <label for="">Tỉnh/Thành Phố</label>

                                        <select class="form-control" name="tinh_thanhpho_id" id="tinh_thanhpho">
                                            <option value="">---Chọn tỉnh/thành phố---</option>
                                            @foreach ($tinh_thanhpho as $item)
                                                <option value="{{ $item->id }}">{{ $item->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="col-4">
                                        <label for="">Quận/Huyện</label>
                                        <select class="form-control" name="quan_huyen_id" id="quan_huyen">
                                            <option value="">---Chọn quận/huyện---</option>

                                        </select>
                                    </div>

                                    <div class="col-4">
                                        <label for="">Phường/Xã</label>
                                        <select class="form-control" name="phuong_xa_id" id="phuong_xa">
                                            <option value="">---Chọn phường/xã---</option>

                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="">Nội dung</label>
                                <textarea type="text" name="noi_dung" id="summernote" value="{{ old('noi_dung') }}" cols="30" rows="10"></textarea>
                            </div>

                            <div class="form-group">
                                <label for="">Loại</label>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="type" id="" value="0"
                                            checked="checked">
                                        <span>Nhà trọ</span> </label>
                                    <label>
                                        <input type="radio" name="type" id="" value="1">
                                        <span>CCMN</span>
                                    </label>
                                    <label>
                                        <input type="radio" name="type" id="" value="2">
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
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
    <script>
        $('#summernote').summernote({
            placeholder: 'Nhập nội dung vào đây',
            tabsize: 2,
            height: 300
        });
    </script>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#anh_gioi_thieu').change(function() {
                var files = $(this)[0].files;
                var filenames = '';

                for (var i = 0; i < files.length; i++) {
                    filenames += files[i].name + '<br>';
                }

                $('#selected_files').html(filenames);
            });


            $('#tinh_thanhpho').on('change', function() {
                var idTinhThanhPho = $(this).val();

                $.ajax({
                    url: '{{ route('baiviet.ajax_quanhuyen') }}' + '/?idtinhthanhpho=' +
                        idTinhThanhPho,
                    type: 'GET',
                    success: function(data) {
                        console.log(data);
                        $('#quan_huyen').empty();
                        $('#phuong_xa').empty();

                        // Cập nhật dữ liệu quận/huyện
                        $.each(data, function(index, item) {
                            $('#quan_huyen').append($('<option>', {
                                value: item.id,
                                text: item.name
                            }));
                        });
                    }
                });
            });


            $('#quan_huyen').on('change', function() {
                var idQuanHuyen = $(this).val();

                $.ajax({
                    url: '{{ route('baiviet.ajax_phuongxa') }}' + '/?idquanhuyen=' +
                        idQuanHuyen,
                    type: 'GET',
                    success: function(data) {
                        console.log(data);
                        $('#phuong_xa').empty();

                        // Cập nhật dữ liệu quận/huyện
                        $.each(data, function(index, item) {
                            $('#phuong_xa').append($('<option>', {
                                value: item.id,
                                text: item.name
                            }));
                        });
                    }
                });
            });
        });
    </script>
@endsection
