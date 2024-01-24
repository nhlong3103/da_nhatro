@extends('layouts.app')
@section('content')
    {{-- @include('layouts.nav') --}}
    <hr>
    <div class="container responsive">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">Đăng kí đối tác</div>

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

                        <form method="POST" action="{{ route('partner.postCreate') }}" enctype="multipart/form-data">
                            @csrf

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-4">
                                        <label for="">Họ tên</label>
                                        <input type="text" name="hoTen" id="" value="{{ old('hoTen') }}"
                                            class="form-control" placeholder="Tối đa 110 ký tự" aria-describedby="helpId">
                                    </div>

                                    <div class="col-4">
                                        <label for="">Tuổi</label>
                                        <input type="number" name="tuoi" id="" value="{{ old('tuoi') }}"
                                            class="form-control" placeholder="Tối đa 110 ký tự" aria-describedby="helpId">
                                    </div>

                                    <div class="col-4">
                                        <label for="">CCCD</label>
                                        <input type="number" name="CCCD" id="" value="{{ old('CCCD') }}"
                                            class="form-control" placeholder="Tối đa 110 ký tự" aria-describedby="helpId">
                                    </div>

                                    <div class="col-4">
                                        <label for="">Số điện thoại cá nhân</label>
                                        <input type="number" name="sdt" id="" value="{{ old('sdt') }}"
                                            class="form-control" placeholder="Tối đa 110 ký tự" aria-describedby="helpId">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="">Ảnh</label>
                                <input type="file" name="anh" id="" class="form-control-file"
                                    id="anh">
                            </div>

                            <div class="form-group">
                                <label for="">Chấp nhận điều khoản</label>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="type" id="" value="0"
                                            checked="checked">
                                        Không đồng ý
                                    </label>
                                    <label>
                                        <input type="radio" name="type" id="" value="1">
                                        Đồng ý
                                    </label>
                                </div>
                            </div>

                            <button type="submit" class="btn btn-primary">Đăng ký</button>
                        </form>


                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

{{-- @section('js')
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
    <script>
        $('#summernote').summernote({
            placeholder: 'Nhập nội dung vào đây',
            tabsize: 2,
            height: 300
        });
    </script>
@endsection --}}
