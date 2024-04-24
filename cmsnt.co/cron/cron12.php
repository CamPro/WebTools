<?php

    define("IN_SITE", true);
    require_once(__DIR__.'/../libs/db.php');
    require_once(__DIR__.'/../config.php');
    require_once(__DIR__.'/../libs/helper.php');
    require_once(__DIR__.'/../libs/lang.php');
    $CMSNT = new DB();

    if($CMSNT->site('pin_cron') != ''){
        if(empty($_GET['pin'])){
            die('Vui lòng nhập mã PIN');
        }
        if($_GET['pin'] != $CMSNT->site('pin_cron')){
            die('Mã PIN không chính xác');
        }
    }


    
    /* START CHỐNG SPAM */
    if (time() > $CMSNT->site('check_time_cron12')) {
        if (time() - $CMSNT->site('check_time_cron12') < 5) {
            die('Thao tác quá nhanh, vui lòng đợi');
        }
    }

    $CMSNT->update("settings", [
        'value' => time()
    ], " `name` = 'check_time_cron12' ");

    // LẤY SẢN PHẨM TỪ API VỀ
    if($CMSNT->site('status_connect_api') == 1){
        // LẤY DANH SÁCH WEBSITE API
        foreach($CMSNT->get_list(" SELECT * FROM `connect_api` WHERE `status` = 1 AND `type` = 'API_12' ") as $website){
            // CẬP NHẬT GIÁ SẢN PHẨM

            $response = balance_API_12($website['domain'], $website['password']);
            $response = json_decode($response, true);
            if(isset($response['user']) && $response['error_code'] == 0){
                $CMSNT->update('connect_api', [
                    'price' => format_currency($response['user']['balance'])
                ], " `id` = '".$website['id']."' ");
            }


            // CURL LẤY SẢN PHẨM
            $list_product = listProduct_API_12($website['domain'], $website['password']);
            $list_product = json_decode($list_product, true);
            if(isset($list_product['products'])){
                foreach($list_product['products'] as $account){
                    $product_name = check_string($account['name']);
                    $ck = check_string($account['price']) * $website['ck_connect_api'] / 100;
                    $price = check_string($account['price']) + $ck;
                    $product_content = check_string($account['description']);
                    if(!$rowProduct = $CMSNT->get_row(" SELECT * FROM `products` WHERE `id_api` = '".check_string($account['id'])."' AND `id_connect_api` = '".$website['id']."' ")){
                        // LẤY ID CATEGORY
                        $id_api = 0;
                        $isInsert = $CMSNT->insert('products', [
                            'user_id'           => $website['user_id'],
                            'category_id'       => $id_api,
                            'id_api'            => check_string($account['id']),
                            'id_connect_api'    => $website['id'],
                            'name'              => $product_name,
                            'name_api'          => $product_name,
                            'price'             => $price,
                            'status'            => $CMSNT->site('default_api_product_status'),
                            'cost'              => check_string($account['price']),
                            'api_stock'         => check_string($account['quantity']),
                            'flag'              => '',
                            'content'           => $product_content,
                            'update_api'        => time(),
                            'minimum'           => 1,
                            'maximum'           => 10000
                        ]);
                        if($isInsert){
                            echo '<b style="color:red;">CREATE</b> - Tạo sản phẩm '.$product_name.' thành công !<br>';
                        }
                    }else{
                        $price = $rowProduct['price'];
                        if($website['ck_connect_api'] > 0){
                            $ck = check_string($account['price']) * $website['ck_connect_api'] / 100;
                            $price = check_string($account['price']) + $ck;
                        }
                        $product_name = $rowProduct['name'];
                        $product_content = $rowProduct['content'];
                        if($website['auto_rename_api'] == 1){
                            $product_name = check_string($account['name']);
                            $product_content = check_string($account['description']);
                        }
                        // CẬP NHẬT GIÁ VÀ SỐ LƯỢNG SẢN PHẨM API
                        $isUpdate = $CMSNT->update('products', [
                            'price'         => $price,
                            'name'          => $product_name,
                            'name_api'      => check_string($account['name']),
                            'content'       => $product_content,
                            'api_stock'     => check_string($account['quantity']),
                            'update_api'    => time(),
                            'cost'          => check_string($account['price'])
                        ], " `id` = '".$rowProduct['id']."' ");
                        if($isUpdate){
                            echo '<b style="color:green;">UPDATE</b> - sản phẩm '.$product_name.' thành công !<br>';
                        }
                    }
                }
            }
            // ẨN SẢN PHẨM KHI API XOÁ HOẶC ẨN SẢN PHẨM
            $CMSNT->remove('products', " `id_connect_api` = '".$website['id']."' AND ".time()." - `update_api` >= 3600 ");
        }
    }