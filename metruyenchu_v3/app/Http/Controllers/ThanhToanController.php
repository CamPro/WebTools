<?php
namespace App\Http\Controllers;
use App\Models\User;
use App\Models\ThanhToan;
use Illuminate\Http\Request;

class ThanhToanController extends Controller{
    public static function getHoaDon($user_id){
        return ThanhToan::where('user_id', $user_id)
        ->orderBy('created_at', 'desc')
        ->paginate(25);
    }

    public static function getAll(){
        return ThanhToan::where('trangthai', 'Đang chờ')
        ->orderBy('created_at', 'desc')
        ->paginate(50);
    }

    public static function InsertHoaDon($nganhang, $tien){
        $linhthach = $tien + 500;
        $thanhtoan = new ThanhToan();
        $thanhtoan->nganhang = $nganhang;
        $thanhtoan->tien = $tien;
        $thanhtoan->linhthach = $linhthach;
        $thanhtoan->user_id = getIdUser();
        $thanhtoan->save();
    }

    public static function checkBill($id){
        $thanhtoan = ThanhToan::find($id);
        $user = User::find($thanhtoan->user_id);

        $user->coin = ($user->coin + $thanhtoan->linhthach);
        $user->save();

        $thanhtoan->trangthai = "Thành công";
        $thanhtoan->save();
    }

    public static function cancelBill($id){
        $thanhtoan = ThanhToan::find($id);
        $thanhtoan->trangthai = "Thất bại";
        $thanhtoan->save();
    }
}
