<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Chuong extends Model
{
    use HasFactory;

    protected $table = 'chuong';

    public function User(){
        return $this->belongsTo('App\Models\User', 'user_id', 'id');
    }

    public function Payment(){
        return $this->hasMany('App\Models\Payment', 'chapter_id', 'id');
    }
}
