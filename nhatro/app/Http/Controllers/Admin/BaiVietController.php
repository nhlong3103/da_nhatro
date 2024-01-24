<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\baiviet;
use App\Models\tinh_thanhpho;
use App\Models\quan_huyen;
use App\Models\phuong_xa;
use App\Models\baiviet_vip;
use App\Models\partner;



class BaiVietController extends Controller
{
    public function index()
    {
        $baiviet = baiviet::paginate(5);
        return view('admin.baiviet.index', compact('baiviet'));
    }

    public function index_for_user()
    {
        $userId = Auth::id();
        $baiviet = baiviet::where('user_id', $userId)->paginate(5);
        return view('admin.baiviet.index_for_user', compact('baiviet'));
    }

    public function create()
    {
        $tinh_thanhpho = tinh_thanhpho::all();
        return view('admin.baiviet.create', compact('tinh_thanhpho'));
    }

    public function ajax_quanhuyen(Request $req)
    {
        $tinh_thanhpho_id = $req->input('idtinhthanhpho');
        $data = DB::select("SELECT * FROM quan_huyen WHERE tinh_tp_id = $tinh_thanhpho_id");

        return response()->json($data);
    }

    public function ajax_phuongxa(Request $req)
    {
        $quan_huyen_id = $req->input('idquanhuyen');
        $data = DB::select("SELECT * FROM phuong_xa WHERE quan_huyen_id = $quan_huyen_id");

        return response()->json($data);
    }

    public function postCreate(Request $req)
    {
        $userId = Auth::id();

        if ($req->all()) {
            $tieu_de = $req->input('tieu_de');
            $noi_dung = $req->input('noi_dung');
            $tinh_thanhpho_id = $req->input('tinh_thanhpho_id');
            $quan_huyen_id = $req->input('quan_huyen_id');
            $phuong_xa_id = $req->input('phuong_xa_id');
            $gia_tien = $req->input('gia_tien');
            $dien_tich = $req->input('dien_tich');
            $type = $req->input('type');

            if ($req->hasFile('anh_gioi_thieu')) {
                $anh_gioi_thieu = $req->file('anh_gioi_thieu');

                $anh_links = []; // Mảng để lưu trữ đường dẫn ảnh

                foreach ($anh_gioi_thieu as $anh) {
                    if ($anh->isValid() && $anh->getMimeType() === 'image/jpeg') {
                        // dd($anh);
                        $fileNameImg = $anh->getClientOriginalName();

                        $anh->move(public_path('images'), $fileNameImg);

                        $anh_links[] = $fileNameImg; // Thêm đường dẫn ảnh vào mảng
                        $anh_links_str = implode(',', $anh_links); // Ghép các đường dẫn ảnh thành chuỗi, cách nhau bằng dấu phẩy
                    }
                }
                baiviet::create([
                    'tieu_de' => $tieu_de,
                    'anh_gioi_thieu' => $anh_links_str,
                    'noi_dung' => $noi_dung,
                    'tinh_thanhpho_id' => $tinh_thanhpho_id,
                    'quan_huyen_id' => $quan_huyen_id,
                    'phuong_xa_id' => $phuong_xa_id,
                    'gia_tien' => $gia_tien,
                    'dien_tich' => $dien_tich,
                    'type' => $type,
                    'user_id' => $userId
                ]);
            }
        }
        return redirect()->route('baiviet.index')->with('status', 'Đăng bài thành công');
    }

    public function update($id)
    {
        // dd($id);
        $tinh_thanhpho = tinh_thanhpho::all();
        $baiviet = baiviet::find($id);
        return view('admin.baiviet.update', compact('baiviet', 'tinh_thanhpho'));
    }

    public function postUpdate(Request $req, $id)
    {
        $baiviet = baiviet::find($id);

        if ($req->all()) {
            $tieu_de = $req->input('tieu_de');
            $noi_dung = $req->input('noi_dung');
            $gia_tien = $req->input('gia_tien');
            $dien_tich = $req->input('dien_tich');
            $type = $req->input('type');

            if ($req->hasFile('anh_gioi_thieu')) {
                $anh_gioi_thieu = $req->file('anh_gioi_thieu');

                $anh_links = []; // Mảng để lưu trữ đường dẫn ảnh

                foreach ($anh_gioi_thieu as $anh) {
                    if ($anh->isValid() && $anh->getMimeType() === 'image/jpeg') {
                        // dd($anh);
                        $fileNameImg = $anh->getClientOriginalName();

                        $anh->move(public_path('images'), $fileNameImg);

                        $anh_links[] = $fileNameImg; // Thêm đường dẫn ảnh vào mảng
                        $anh_links_str = implode(',', $anh_links); // Ghép các đường dẫn ảnh thành chuỗi, cách nhau bằng dấu phẩy

                        $baiviet->update([
                            'tieu_de' => $tieu_de,
                            'anh_gioi_thieu' => $anh_links_str,
                            'noi_dung' => $noi_dung,
                            'gia_tien' => $gia_tien,
                            'dien_tich' => $dien_tich,
                            'type' => $type,
                        ]);
                    } else {
                        // Xử lý lỗi nếu cần thiết
                    }
                }
            } else {
                $baiviet->update([
                    'tieu_de' => $tieu_de,
                    'noi_dung' => $noi_dung,
                    'gia_tien' => $gia_tien,
                    'dien_tich' => $dien_tich,
                    'type' => $type,
                ]);
            }
        }
        return redirect()->route('baiviet.index')->with('status', 'Chỉnh sửa bài thành công');
    }

    public function del($id)
    {
        $baiviet = baiviet::find($id);
        $image_paths = explode(',', $baiviet->anh_gioi_thieu);
        $image_array = array_map('trim', $image_paths);
        // dd($image_array);

        foreach ($image_array as $item) {
            $image_path = public_path('images/' . $item);
            // dd(public_path('images/' . $item));

            if (file_exists($image_path)) {
                unlink($image_path);
            }
        }
        $baiviet->delete();

        $baivietvip = baiviet_vip::where('bai_viet_id', $id)->first();
        if ($baivietvip) {
            $baivietvip->delete();
        }
        return redirect()->route('baiviet.index')->with('status', 'Xóa bài đăng thành công');
    }

    public function dkVip($id)
    {
        // dd($id);
        $currentDate = now();
        $sql = "SELECT COUNT(DISTINCT bai_viet_id) sl FROM bai_viet_vip WHERE DATE(`time`) = '$currentDate'";
        $check = DB::select($sql);
        // dd($check);

        $user = Auth::user();
        $partner = partner::where('user_id', $user->id)->first();

        if ($check[0]->sl < 3 && $partner->money >= 50000) {
            baiviet_vip::create([
                'bai_viet_id' => $id,
                'time' => $currentDate,
            ]);

            $money_new = $partner->money - 50000;
            $partner->update([
                'money' => $money_new,
            ]);

            return redirect()->route('home')->with('status', 'Số lượng bài viết đăng ký đã đầy');
        } else {
            return redirect()->route('home')->with('status', 'Số lượng bài viết đăng ký đã đầy hoặc số dư tài khoản của bạn không đủ');
        }

        return redirect()->route('home')->with('status', 'Đăng kí thành công');
    }
}
