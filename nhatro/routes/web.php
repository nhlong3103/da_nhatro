<?php

use Illuminate\Support\Facades\Auth;

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\Admin\BaiVietController;
use App\Http\Controllers\Admin\PartnerController;
use App\Http\Controllers\Client\DetailController;


// use App\Http\Controllers\Client\BaiVietController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [HomeController::class, 'index'])->name('home');

Route::prefix('client')->group(function () {
    Route::get('/xem-chi-tiet/{id}/{slug}', [DetailController::class, 'xemChiTiet'])->name('xemchitiet');
});

Route::post('comment-thuong/{id}', [HomeController::class, 'storecomment'])->name('comment.store');
Route::get('show-comment-thuong/{id}', [HomeController::class, 'showcomment'])->name('showcomment');
Auth::routes();

Route::prefix('admin')->group(function () {
    Route::get('/bai-viet', [BaiVietController::class, 'index'])->name('baiviet.index')->middleware('can:admin');
    Route::get('/bai-viet/index-for-user', [BaiVietController::class, 'index_for_user'])->name('baiviet.index_for_user')->middleware('can:partner');

    Route::get('/bai-viet/create', [BaiVietController::class, 'create'])->name('baiviet.create')->middleware('can:partner');
    Route::post('/bai-viet/postCreate', [BaiVietController::class, 'postCreate'])->name('baiviet.postCreate')->middleware('can:partner');
    Route::get('/bai-viet/update/{id}', [BaiVietController::class, 'update'])->name('baiviet.update')->middleware('can:partner');
    Route::post('/bai-viet/postUpdate/{id}', [BaiVietController::class, 'postUpdate'])->name('baiviet.postUpdate')->middleware('can:partner');
    Route::get('/bai-viet/del', [BaiVietController::class, 'del'])->name('baiviet.del')->middleware('can:partner');

    Route::get('/bai-viet/ajax-quanhuyen', [BaiVietController::class, 'ajax_quanhuyen'])->name('baiviet.ajax_quanhuyen');
    Route::get('/bai-viet/ajax-phuongxa', [BaiVietController::class, 'ajax_phuongxa'])->name('baiviet.ajax_phuongxa');
    Route::delete('/bai-viet/delete/{id}', [BaiVietController::class, 'del'])->name('baiviet.del')->middleware('can:partner');

    Route::get('/bai-viet/dk-vip/{id}', [BaiVietController::class, 'dkVip'])->name('baiviet.dkVip')->middleware('can:partner');




    Route::get('/partner', [PartnerController::class, 'index'])->name('partner.index')->middleware('can:admin');
    Route::get('/partner/create', [PartnerController::class, 'create'])->name('partner.create');
    Route::post('/partner/postCreate', [PartnerController::class, 'postCreate'])->name('partner.postCreate');
    Route::get('/partner/update_permission/{user_id}', [PartnerController::class, 'updatePermission'])->name('partner.update_permission')->middleware('can:admin');
    Route::get('/partner/del_permission/{user_id}', [PartnerController::class, 'delPermission'])->name('partner.del_permission')->middleware('can:admin');

    Route::get('/partner/napTien', [PartnerController::class, 'napTien'])->name('partner.napTien')->middleware('can:partner');
    Route::post('/partner/rate', [PartnerController::class, 'rate'])->name('partner.rate');

    Route::get('/partner/detail/{id}', [PartnerController::class, 'detail'])->name('partner.detail')->middleware('can:partner');
    Route::post('/partner/req-update-detail', [PartnerController::class, 'req_update_detail'])->name('partner.req_update_detail')->middleware('can:partner');
});
