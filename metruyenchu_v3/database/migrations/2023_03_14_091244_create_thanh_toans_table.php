<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateThanhToansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('thanh_toans', function (Blueprint $table) {
            $table->id();
            $table->string('nganhang', 255); //Vietcombank
            $table->double('tien');
            $table->double('linhthach');
            $table->string('trangthai', 10)->default('Đang chờ'); //Đang chờ | Thất bại | Thành công
            $table->bigInteger('user_id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('thanh_toans');
    }
}
