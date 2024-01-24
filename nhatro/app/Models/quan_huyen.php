<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class quan_huyen extends Model
{
    use HasFactory;
    protected $table = 'quan_huyen';

    protected $fillable = [
        'id',
        'name',
        'tinh_tp_id',
        'created_at',
        'updated_at',
    ];
}
