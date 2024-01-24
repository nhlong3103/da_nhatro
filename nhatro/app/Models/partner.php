<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class partner extends Model
{
    use HasFactory;
    protected $table = 'partner';

    protected $fillable = [
        'id',
        'hoTen',
        'tuoi',
        'CCCD',
        'sdt',
        'anh',
        'type',
        'user_id',
        'money',
        'rate',
        'created_at',
        'updated_at',
    ];
}
