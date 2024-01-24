<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class result_momo extends Model
{
    use HasFactory;
    protected $table = 'result_momo';

    protected $fillable = [
        'id',
        'requestId',
        'orderId',
        'amount',
        'status',
        'created_at',
        'updated_at',
    ];
}
