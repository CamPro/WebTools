<?php

namespace App\Http\Controllers;

use App\Models\Payment;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

class PaymentController extends Controller{
    public static function check($chapter_id){
        return Payment::where('user_id', getIdUser())
        ->where('chapter_id', $chapter_id)
        ->count();
    }

    public static function checkEndDate($chapter_id){
        return Payment::where('user_id', getIdUser())
        ->where('chapter_id', $chapter_id)
        ->where('end_date', '>=', Carbon::now())
        ->count();
    }

    public static function getID($user_id, $chapter_id){
        $payment = Payment::where('user_id', $user_id)
        ->where('chapter_id', $chapter_id)
        ->first();

        if(is_null($payment)){
            return 0;
        }
        else{
            return $payment->id;
        }
    }

    public static function insert($user_id, $chapter_id, $coin, $end_date){
        $payment = new Payment();
        $payment->user_id = $user_id;
        $payment->chapter_id = $chapter_id;
        $payment->coin = $coin;
        $payment->end_date = $end_date;
        $payment->save();
    }

    public static function update($coin, $end_date, $payment_id){
        $payment = Payment::find($payment_id);
        $payment->coin = $coin;
        $payment->end_date = $end_date;
        $payment->save();
    }

    public static function getList(){
        return Payment::where('user_id', getIdUser())
        ->paginate(25);
    }

    public static function deleteByChuongID($chuong_id){
        $payment = Payment::where('chapter_id', $chuong_id)->delete();
    }
}
