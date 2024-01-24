<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Models\baiviet;
use App\Models\comment;

class DetailController extends Controller
{
    //
    public function xemChiTiet($id)
    {
        $baiviet = DB::select("SELECT a.*, b.hoTen, b.sdt, b.rate, c.name tinhtp, d.name quanhuyen, e.name phuongxa
        FROM bai_viet a LEFT JOIN `partner` b 
        ON a.user_id = b.user_id LEFT JOIN tinh_thanhpho c ON a.tinh_thanhpho_id = c.id LEFT JOIN quan_huyen d ON a.quan_huyen_id = d.id LEFT JOIN phuong_xa e ON a.phuong_xa_id = e.id
        WHERE a.id = $id ORDER BY a.created_at");
        // dd($baiviet);

        $comments = comment::orderBY('id', 'DESC')->where('baiviet_id', $baiviet[0]->id)->get();

        $comments = DB::select("SELECT a.*, b.name FROM comment a JOIN users b ON a.user_id = b.id WHERE baiviet_id = $id");
        // dd($comments);

        return view('client.baiviet_detail', compact('baiviet', 'comments'));
    }
}
