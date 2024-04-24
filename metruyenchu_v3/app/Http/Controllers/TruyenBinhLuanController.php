<?php

namespace App\Http\Controllers;

use App\Models\TruyenBinhLuan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class TruyenBinhLuanController extends Controller{
    public static function add(Request $request){
        $comment = new TruyenBinhLuan();
        $comment->chap = $request->chap;
        $comment->content = str_replace("\n", "<br/>", $request->content);
        $comment->truyen_id = $request->truyen_id;
        $comment->user_id = $request->user_id;
        $comment->save();
    }

    public static function show($truyen_id){
        return TruyenBinhLuan::where('truyen_id', $truyen_id)
        ->orderBy('created_at', 'desc')
        ->paginate(5);
    }

    public static function getCommentByUser($num){
        return TruyenBinhLuan::where('user_id', getIdUser())
        ->orderBy('created_at', 'desc')
        ->paginate($num);
    }

    public static function getCommentByIdTruyen($truyen_id, $num){
        return TruyenBinhLuan::where('truyen_id', $truyen_id)
        ->orderBy('created_at', 'desc')
        ->paginate($num);
    }

    public static function postDeleteComment($id){
        TruyenBinhLuan::find($id)->delete();
    }

    public static function getIdByUser($truyen_id, $user_id){
        return TruyenBinhLuan::where('truyen_id', $truyen_id)
            ->where('user_id', $user_id)
            ->orderBy('created_at', 'desc')
            ->first()->id;
    }
}
