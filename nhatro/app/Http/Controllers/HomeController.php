<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Models\baiviet;
use Spatie\Permission\Models\Permission;
use App\Models\partner;
use App\Models\result_momo;
use App\Models\comment;
use Illuminate\Support\Str;
use App\Models\User;



class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index(Request $req)
    {
        // $user_id = Auth::id();
        // $user = User::find($user_id);
        // $user->givePermissionTo('partner');

        if (!empty($req->input('resultCode')) && $req->input('resultCode') == 0) {
            $amount = $req->input('amount');
            $orderId = $req->input('orderId');
            $requestId = $req->input('requestId');
            $result_momo = result_momo::where('orderId', $orderId)->where('requestId', $requestId)->first();

            if ($result_momo->status == 0) {
                $user = Auth::user();
                $user_id = $user->id;
                $partner = partner::where('user_id', $user_id)->first();
                $old_money = $partner->money;
                $result_momo->update(['status' => 1]);
                $partner->update(['money' => ($old_money + $amount)]);
            }
        } elseif ($req->hasAny(['type', 'gia_tien', 'dien_tich', 'tinh_thanhpho_id', 'quan_huyen_id', 'phuong_xa_id'])) {
            $partner = DB::select("SELECT hoTen, rate FROM `partner` WHERE `type` = 1 ORDER BY rate DESC");

            $type = $req->input('type');
            $gia_tien = $req->input('gia_tien');
            $dien_tich = $req->input('dien_tich');
            $tinh_thanhpho_id = $req->input('tinh_thanhpho_id');
            $quan_huyen_id = $req->input('quan_huyen_id');
            $phuong_xa_id = $req->input('phuong_xa_id');

            $sql_baiviet = BaiViet::leftJoin('partner', 'bai_viet.user_id', '=', 'partner.user_id')
                ->orderBy('bai_viet.created_at')
                ->select('bai_viet.*', 'partner.hoTen', 'partner.sdt', 'partner.rate');

            if ($type != null) {
                $sql_baiviet = $sql_baiviet->where('bai_viet.type', $type);
            }
            if ($dien_tich != null) {
                if ($dien_tich == 'under20') {
                    $sql_baiviet = $sql_baiviet->where('bai_viet.dien_tich', '<', 20);
                } elseif ($dien_tich == '20-50') {
                    $sql_baiviet = $sql_baiviet->whereBetween('bai_viet.dien_tich', [20, 50]);
                } elseif ($dien_tich == '50-100') {
                    $sql_baiviet = $sql_baiviet->whereBetween('bai_viet.dien_tich', [50, 100]);
                } elseif ($dien_tich == 'over100') {
                    $sql_baiviet = $sql_baiviet->where('bai_viet.dien_tich', '>', 100);
                }
            }
            if ($gia_tien != null) {
                if ($gia_tien == 'under3000') {
                    $sql_baiviet = $sql_baiviet->where('bai_viet.gia_tien', '<', 3000000);
                } elseif ($gia_tien == '3000-5000') {
                    $sql_baiviet = $sql_baiviet->whereBetween('bai_viet.gia_tien', [3000000, 5000000]);
                } elseif ($gia_tien == 'over500') {
                    $sql_baiviet = $sql_baiviet->where('bai_viet.gia_tien', '>', 5000000);
                }
            }
            if ($tinh_thanhpho_id != null) {
                $sql_baiviet = $sql_baiviet->where('bai_viet.tinh_thanhpho_id', $tinh_thanhpho_id);
            }
            if ($quan_huyen_id != null) {
                $sql_baiviet = $sql_baiviet->where('bai_viet.quan_huyen_id', $quan_huyen_id);
            }
            if ($phuong_xa_id != null) {
                $sql_baiviet = $sql_baiviet->where('bai_viet.phuong_xa_id', $phuong_xa_id);
            }
            $baiviet = $sql_baiviet->paginate(5);
            return view('home', compact('baiviet', 'tinh_thanhpho_id', 'quan_huyen_id', 'phuong_xa_id', 'partner'));
        }

        $currentDate = now();
        $baivietvip =
            DB::table('bai_viet_vip AS a')
            ->select('b.*', 'c.hoTen', 'c.sdt', 'c.rate')
            ->leftJoin('bai_viet AS b', 'a.bai_viet_id', '=', 'b.id')
            ->leftJoin('partner AS c', 'b.user_id', '=', 'c.user_id')
            ->whereDate('time', $currentDate)
            ->get();
        // dd($baivietvip);

        $baiviet = BaiViet::leftJoin('partner', 'bai_viet.user_id', '=', 'partner.user_id')
            ->orderBy('bai_viet.created_at')
            ->select('bai_viet.*', 'partner.hoTen', 'partner.sdt', 'partner.rate')
            ->paginate(5);
        // $permission = Permission::create(['name' => 'admin']);
        // $user = Auth::user();
        // $user->givePermissionTo('admin');


        $partner = DB::select("SELECT hoTen, rate FROM `partner` WHERE `type` = 1 ORDER BY rate DESC");
        // dd($baivietvip);
        return view('home', compact('baiviet', 'baivietvip', 'partner'));
    }

    public function storecomment(Request $request, $id)
    {
        $baiviet_id = $id;
        $baiviet = baiviet::find($id);
        $comment = new comment();
        $comment->baiviet_id = $baiviet_id;
        $comment->user_id = Auth::user()->id;
        $comment->noi_dung = $request->noi_dung;
        $comment->save();
        return redirect("client/xem-chi-tiet/$id/" . Str::slug($baiviet->tieu_de));
    }
}
