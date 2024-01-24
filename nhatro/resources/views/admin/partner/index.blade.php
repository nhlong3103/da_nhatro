@extends('layouts.app')
@section('content')
    {{-- @include('layouts.nav') --}}
    <hr>
    <div class="container responsive">
        @if (session('status'))
            <div class="alert alert-success" role="alert">
                {{ session('status') }}
            </div>
        @endif

        <table class="table table-striped table-inverse">
            <thead class="thead-inverse">
                <tr>
                    <th>Họ tên</th>
                    <th>Tuổi</th>
                    <th>CCCD</th>
                    <th>Ảnh</th>
                    <th>Số điện thoại</th>
                    <th>User_id</th>
                    <th>Số tiền trong tài khoản</th>
                    <th>Trạng thái</th>
                    <th>Hành động</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($partner as $item)
                    <tr>
                        <td>{{ $item->hoTen }}</td>
                        <td>{{ $item->tuoi }}</td>
                        <td>{{ $item->CCCD }}</td>
                        <td>
                            <img src="{{ url('public/images') }}/{{ $item->anh }}" width="100" height="120">
                        </td>
                        <td>{{ $item->sdt }}</td>
                        <td>{{ $item->user_id }}</td>
                        <td>{{ $item->money }}</td>

                        <td>
                            @if ($item->type == 0)
                                <span class="text text-danger" style="font-weight: bold">Chưa duyệt</span>
                            @else
                                <span class="text text-success" style="font-weight: bold">Đã duyệt</span>
                            @endif
                        </td>
                        <td>
                            @if ($item->type == 0)
                                <a href="{{ route('partner.update_permission', $item->user_id) }}"
                                    class="btn btn-primary">Duyệt</a>
                            @else
                                <a href="{{ route('partner.del_permission', $item->user_id) }}" class="btn btn-danger">Hủy
                                    quyền</a>
                            @endif
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection
