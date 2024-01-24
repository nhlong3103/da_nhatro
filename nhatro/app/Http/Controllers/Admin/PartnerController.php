<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Models\partner;
use App\Models\result_momo;
use App\Models\User;
use App\Models\rate;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;


class PartnerController extends Controller
{
    //
    public function index()
    {
        $partner = partner::all();
        return view('admin.partner.index', compact('partner'));
    }

    public function create()
    {
        return view('admin.partner.create');
    }

    public function postCreate(Request $req)
    {
        $userId = Auth::id();
        if ($req->all()) {
            $hoTen = $req->input('hoTen');
            $tuoi = $req->input('tuoi');
            $CCCD = $req->input('CCCD');
            $sdt = $req->input('sdt');

            if ($req->hasFile('anh')) {
                $anh = $req->file('anh');

                $fileNameImg = $anh->getClientOriginalName();

                $anh->move(public_path('images'), $fileNameImg);

                partner::create([
                    'hoTen' => $hoTen,
                    'tuoi' => $tuoi,
                    'CCCD' => $CCCD,
                    'sdt' => $sdt,
                    'anh' => $fileNameImg,
                    'user_id' => $userId
                ]);
            } else {
                // Xử lý lỗi nếu cần thiết
            }
        }
        return redirect()->route('home')->with('status', 'Đăng kí của bạn đã được gửi, vui lòng đợi xét duyệt');
    }

    public function updatePermission($user_id)
    {
        $user = User::find($user_id);
        $user->givePermissionTo('partner');

        partner::where('user_id', $user_id)->update(['type' => 1]);
        return redirect()->back()->with('status', 'Thay đổi thành công');
    }

    public function delPermission($user_id)
    {
        $user = User::find($user_id);
        $user->revokePermissionTo('partner');

        partner::where('user_id', $user_id)->update(['type' => 0]);
        return redirect()->back()->with('status', 'Thay đổi thành công');
    }

    function execPostRequest($url, $data)
    {
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt(
            $ch,
            CURLOPT_HTTPHEADER,
            array(
                'Content-Type: application/json',
                'Content-Length: ' . strlen($data)
            )
        );
        curl_setopt($ch, CURLOPT_TIMEOUT, 5);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
        //execute post
        $result = curl_exec($ch);
        //close connection
        curl_close($ch);
        return $result;
    }

    public function napTien(Request $req)
    {
        if ($req->all()) {
            $price = $req->input('price');

            $endpoint = "https://test-payment.momo.vn/v2/gateway/api/create";

            $partnerCode = 'MOMOBKUN20180529';
            $accessKey = 'klm05TvNBzhg7h7j';
            $secretKey = 'at67qH6mk8w5Y1nAyMoYKMWACiEi2bsa';
            $orderInfo = "Thanh toán qua MoMo";
            $amount = $price;
            $orderId = time() . "";
            $redirectUrl = "http://localhost/nhatro/";
            $ipnUrl = "http://localhost/nhatro/";
            $extraData = "";

            $requestId = time() . "";
            $requestType = "captureWallet";
            //before sign HMAC SHA256 signature
            $rawHash = "accessKey=" . $accessKey . "&amount=" . $amount . "&extraData=" . $extraData . "&ipnUrl=" . $ipnUrl . "&orderId=" . $orderId . "&orderInfo=" . $orderInfo . "&partnerCode=" . $partnerCode . "&redirectUrl=" . $redirectUrl . "&requestId=" . $requestId . "&requestType=" . $requestType;
            $signature = hash_hmac("sha256", $rawHash, $secretKey);
            // dd($signature);
            $data = array(
                'partnerCode' => $partnerCode,
                'partnerName' => "Test",
                "storeId" => "MomoTestStore",
                'requestId' => $requestId,
                'amount' => $amount,
                'orderId' => $orderId,
                'orderInfo' => $orderInfo,
                'redirectUrl' => $redirectUrl,
                'ipnUrl' => $ipnUrl,
                'lang' => 'vi',
                'extraData' => $extraData,
                'requestType' => $requestType,
                'signature' => $signature
            );
            $result = $this->execPostRequest($endpoint, json_encode($data));
            $jsonResult = json_decode($result, true);  // decode json
            // dd($jsonResult);
            if ($jsonResult['payUrl']) {
                result_momo::create([
                    'orderId' => $orderId,
                    'requestId' => $requestId,
                    'amount' => $amount,
                    'status' => 0
                ]);
            }
            return redirect($jsonResult['payUrl']);
        }
        return view('admin.partner.nap');
    }

    public function rate(Request $req)
    {
        $rating = $req->input('rating');
        $user_id_2 = $req->input('user_id_2');
        $user_id_1 = Auth::id();
        $check = DB::select("SELECT * FROM rate WHERE user_id_1 = $user_id_1 AND user_id_2 = $user_id_2");
        if (count($check) > 0) {
            $rate = rate::where('user_id_1', $user_id_1)->where('user_id_2', $user_id_2)->first();
            $rate->delete();

            rate::create([
                'star' => $rating,
                'user_id_1' => $user_id_1,
                'user_id_2' => $user_id_2
            ]);
        } else {
            rate::create([
                'star' => $rating,
                'user_id_1' => $user_id_1,
                'user_id_2' => $user_id_2
            ]);
        }

        $rate_new = 0;
        $rate_old = rate::where('user_id_2', $user_id_2)->get();
        foreach ($rate_old as $rate) {
            $rate_new += $rate->star;
        }
        $rate_new = $rate_new / count($rate_old);
        $floored_rate = floor($rate_new); // Làm tròn xuống

        $partner = partner::where('user_id', $user_id_2)->first();
        $partner->update([
            'rate' => $floored_rate,
        ]);
        return response()->json(true);
    }

    public function detail($id)
    {
        // dd($id);
        $partner = partner::where('user_id', $id)->first();
        // dd($partner);
        return view('client.partner_detail', compact('partner'));
    }

    public function req_update_detail(Request $req)
    {
        $hoTen = $req->input('hoTen');
        $tuoi = $req->input('tuoi');
        $CCCD = $req->input('CCCD');
        $sdt = $req->input('sdt');

        $userId = Auth::id();
        $partner = partner::where('user_id', $userId);
        if ($req->all()) {
            $hoTen = $req->input('hoTen');
            $tuoi = $req->input('tuoi');
            $CCCD = $req->input('CCCD');
            $sdt = $req->input('sdt');

            if ($req->hasFile('anh')) {
                $anh = $req->file('anh');

                $fileNameImg = $anh->getClientOriginalName();

                $anh->move(public_path('images'), $fileNameImg);

                $partner->update([
                    'hoTen' => $hoTen,
                    'tuoi' => $tuoi,
                    'CCCD' => $CCCD,
                    'sdt' => $sdt,
                    'anh' => $fileNameImg,
                    'user_id' => $userId,
                    'type' => 0
                ]);
            } else {
                $partner->update([
                    'hoTen' => $hoTen,
                    'tuoi' => $tuoi,
                    'CCCD' => $CCCD,
                    'sdt' => $sdt,
                    'user_id' => $userId,
                    'type' => 0
                ]);
            }
        }
        $user = User::find($userId);
        $user->revokePermissionTo('partner');
        return redirect()->route('home')->with('status', 'Thông tin chỉnh sửa bạn đã được gửi, vui lòng đợi xét duyệt');
    }
}
