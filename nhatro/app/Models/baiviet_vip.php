<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class baiviet_vip extends Model
{
    use HasFactory;
    protected $table = 'bai_viet_vip';

    protected $fillable = [
        'id',
        'bai_viet_id',
        'time',
        'created_at',
        'updated_at',
    ];
}
