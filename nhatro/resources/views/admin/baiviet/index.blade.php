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
                    <th>Tiêu đề</th>
                    <th>Giá tiền</th>
                    <th>Diện tích</th>
                    <th>Ảnh giới thiệu</th>
                    <th>Loại</th>
                    <th>Xem chi tiết</th>
                    <th>Quản lý</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($baiviet as $item)
                    <tr>
                        <td>{{ $item->tieu_de }}</td>
                        <td>{{ $item->gia_tien }}</td>
                        <td>{{ $item->dien_tich }}</td>
                        <td>
                            @foreach (explode(',', $item->anh_gioi_thieu) as $imageName)
                                <img src="{{ url('public/images') }}/{{ trim($imageName) }}" width="100" height="120">
                            @endforeach
                        </td>

                        <td>
                            @if ($item->type == 0)
                                <span class="text text-success" style="font-weight: bold">Nhà trọ</span>
                            @elseif ($item->type == 1)
                                <span class="text text-success" style="font-weight: bold">CCMN</span>
                            @else
                                <span class="text text-success" style="font-weight: bold">Nhà nguyên căn</span>
                            @endif
                        </td>
                        <td></td>
                        <td>
                            <a href="{{ route('baiviet.update', $item->id) }}" class="btn btn-primary">Chỉnh sửa</a>
                            <form action="{{ route('baiviet.del', $item->id) }}" method="POST">
                                @method('DELETE')
                                @csrf
                                <button onclick="return confirm('Bạn có chắc muốn xóa bài đăng này không?')"
                                    class="btn btn-danger">Xóa</button>
                            </form>
                        </td>
                    </tr>
                @endforeach
                <div class="pagi">
                    {{ $baiviet->links() }}
                </div>
            </tbody>
        </table>
    </div>
@endsection
