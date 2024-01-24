<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class tinh_thanhpho extends Model
{
    use HasFactory;

    protected $table = 'tinh_thanhpho';

    protected $fillable = [
        'id',
        'name',
        'created_at',
        'updated_at',
    ];
}
