<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class baiviet extends Model
{
    use HasFactory;
    protected $table = 'bai_viet';

    protected $fillable = [
        'id',
        'tieu_de',
        'anh_gioi_thieu',
        'noi_dung',
        'tinh_thanhpho_id',
        'quan_huyen_id',
        'phuong_xa_id',
        'gia_tien',
        'dien_tich',
        'type',
        'user_id',
        'created_at',
        'updated_at',
    ];
}
