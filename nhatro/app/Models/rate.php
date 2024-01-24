<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class rate extends Model
{
    use HasFactory;
    protected $table = 'rate';

    protected $fillable = [
        'id',
        'user_id_1',
        'user_id_2',
        'star',
        'created_at',
        'updated_at',
    ];
}
