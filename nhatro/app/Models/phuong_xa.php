<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class phuong_xa extends Model
{
    use HasFactory;
    protected $table = 'phuong_xa';

    protected $fillable = [
        'id',
        'name',
        'quan_huyen_id',
        'created_at',
        'updated_at',
    ];
}
