<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class comment extends Model
{
    use HasFactory;
    protected $fillable = ['id', 'user_id', 'baiviet_id', 'noi_dung'];
    protected $table = 'comment';
}
