<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Payment extends Model{
    use HasFactory;

    public function User(){
        return $this->belongsTo('App\Models\User', 'user_id', 'id');
    }

    public function Chuong(){
        return $this->belongsTo('App\Models\Chuong', 'chapter_id', 'id');
    }
}