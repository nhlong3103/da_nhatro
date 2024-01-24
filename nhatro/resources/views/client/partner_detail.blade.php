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

                        <form method="POST" action="{{ route('partner.req_update_detail') }}" enctype="multipart/form-data">
                            @csrf

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-4">
                                        <label for="">Họ tên</label>
                                        <input type="text" name="hoTen" id="" value="{{ $partner->hoTen }}"
                                            class="form-control" placeholder="Tối đa 110 ký tự" aria-describedby="helpId">
                                    </div>

                                    <div class="col-4">
                                        <label for="">Tuổi</label>
                                        <input type="number" name="tuoi" id="" value="{{ $partner->tuoi }}"
                                            class="form-control" placeholder="Tối đa 110 ký tự" aria-describedby="helpId">
                                    </div>

                                    <div class="col-4">
                                        <label for="">CCCD</label>
                                        <input type="number" name="CCCD" id="" value="{{ $partner->CCCD }}"
                                            class="form-control" placeholder="Tối đa 110 ký tự" aria-describedby="helpId">
                                    </div>

                                    <div class="col-4">
                                        <label for="">Số điện thoại cá nhân</label>
                                        <input type="number" name="sdt" id="" value="{{ $partner->sdt }}"
                                            class="form-control" placeholder="Tối đa 110 ký tự" aria-describedby="helpId">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="">Ảnh</label>
                                <input type="file" name="anh" id="" class="form-control-file"
                                    id="anh">
                            </div>
                            <img src="{{ url('public/images') }}/{{ $partner->anh }}" width="100" height="120">

                            <br><br>

                            <button type="submit" class="btn btn-primary">Cập nhật</button>

                            <h6 style="color: red">Lưu ý, sau khi cập nhật, bạn sẽ phải đợi admin xét duyệt lại. Trong
                                khoảng thời gian đó, bạn sẽ không thể đăng hay sửa bài!</h6>
                        </form>


                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
