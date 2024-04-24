<section class="content">
        <div class="container-fluid">
       <form name="SettingForm" method="POST" enctype="multipart/form-data">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                            <i class="fa fa-cogs" aria-hidden="true"></i> [[.Settings.]] 
                        </h2>
                    </div>
                    <div class="body pt0">
                        <div class="row">
                            <div class="col-sm-12 mb0">
                                <!-- Nav tabs -->
                                <ul class="nav nav-tabs" role="tablist">
                                    <li role="presentation1" class="active">
                                        <a href="#home_with_icon_title" data-toggle="tab"><i class="material-icons">home</i> CẤU HÌNH CHUNG</a>
                                    </li>
                                    <li role="presentation2">
                                        <a href="#profile_with_icon_title" data-toggle="tab"><i class="material-icons">send</i> CẤU HÌNH HỖ TRỢ</a>
                                    </li>
                                    <li role="presentation3">
                                        <a href="#messages_with_icon_title" data-toggle="tab"><i class="material-icons">payment</i> THÔNG TIN THANH TOÁN</a>
                                    </li>
                                    <li role="presentation4">
                                        <a href="#show_notice" data-toggle="tab"><i class="material-icons">payment</i> THÔNG BÁO TỚI TV</a>
                                    </li>
                                </ul>
    
                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div role="presentation1" class="tab-pane fade in active" id="home_with_icon_title">
                                        <b>[[.Website_name.]]</b>
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="hidden" class="form-control" name="token" id="token" value="">
                                                <input name="config_website_title" type="text" id="website_title" class="form-control">
                                            </div>
                                        </div>
                                        <b>[[.Website_description.]]</b>
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input name="config_website_description" type="text" id="website_description" class="form-control">
                                            </div>
                                        </div>
                                        <b>[[.Website_keywords.]]</b>
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input name="config_website_keyword" type="text" id="website_keyword" class="form-control">
                                            </div>
                                        </div>
                                        <b>[[.Website_logo.]]</b>
                                        <div class="form-group">
                                            <input name="config_website_logo" type="file" id="website_logo" class="form-control">
                                             <div id="delete_website_logo"><?php if(Url::get('config_website_logo') and file_exists(Url::get('config_website_logo'))){?>[<a href="<?php echo Url::get('config_website_logo');?>" target="_blank" style="color:#FF0000">[[.view.]]</a>]&nbsp;[<a href="<?php echo Url::build_current(array('cmd'=>'unlink','link'=>Url::get('config_website_logo')));?>" onclick="jQuery('#delete_website_logo').html('');" target="_blank" style="color:#FF0000">[[.delete.]]</a>]<?php }?></div>
                                        </div>
                                        <b>[[.Website_icon.]]</b>
                                        <div class="form-group">
                                            <input name="config_website_icon" type="file" id="website_icon" class="form-control">
                                             <div id="delete_website_icon"><?php if(Url::get('config_website_icon') and file_exists(Url::get('config_website_icon'))){?>[<a href="<?php echo Url::get('config_website_icon');?>" target="_blank" style="color:#FF0000">[[.view.]]</a>]&nbsp;[<a href="<?php echo Url::build_current(array('cmd'=>'unlink','link'=>Url::get('config_website_icon')));?>" onclick="jQuery('#delete_website_logo').html('');" target="_blank" style="color:#FF0000">[[.delete.]]</a>]<?php }?></div>
                                        </div>
                                        <b>[[.Timezone_server.]]</b>
                                        <div class="form-group">
                                            <select  name="config_timezone" class="form-control" id="timezone">
                                             <?php foreach([[=timezone=]] as $value) { ?>
                                                <option value="<?php echo $value['zone'];?>" <?php if($value['zone']==Url::get('config_timezone')){echo ' selected';}?>>
                                                    <?php echo $value['diff_from_GMT'] . ' - ' . $value['zone']; ?>
                                                </option>
                                            <?php } ?>
                                            </select>
                                        </div>
                                        
                                        <b>Cho phép đăng ký thành viên</b>
                                        <div class="form-group demo-radio-button">
                                            <input name="config_register" type="radio" id="register_yes" class="radio-col-red" value="1">
                                            <label for="register_yes">Yes</label>
                                            
                                            <input name="config_register" type="radio" id="register_no" class="radio-col-red"  value="0">
                                            <label for="register_no">No</label>
                                            <script>
											jQuery('#register_<?php if(isset($_REQUEST['config_register'])){echo $_REQUEST['config_register']==1?'yes':'no';}?>').attr('checked',true);
											</script>
                                        </div>
                                        <b>Kích hoạt tài khoản ngay sau khi đăng ký</b>
                                        <div class="form-group demo-radio-button">
                                            <input name="config_auto_active_user" type="radio" id="auto_active_user_yes" class="radio-col-red" value="1">
                                            <label for="auto_active_user_yes">Yes</label>
    
                                            <input name="config_auto_active_user" type="radio" id="auto_active_user_no" class="radio-col-red"  value="0">
                                            <label for="auto_active_user_no">No (Yêu cầu thành viên kích hoạt tài khoản từ email)</label>
                                                                                        <script>
											jQuery('#auto_active_user_<?php if(isset($_REQUEST['config_auto_active_user'])){echo $_REQUEST['config_auto_active_user']==1?'yes':'no';}?>').attr('checked',true);
											</script>
                                        </div>
                                        <b>Hiển thị con ruồi trên màn hình</b>
                                        <div class="form-group demo-radio-button">
                                            <input name="config_con_ruoi" type="radio" id="con_ruoi_yes" class="radio-col-red" value="1">
                                            <label for="con_ruoi_yes">Yes</label>    
                                            <input name="config_con_ruoi" type="radio" id="con_ruoi_no" class="radio-col-red"  value="0">
                                            <label for="con_ruoi_no">No</label>
                                            <script>
											jQuery('#con_ruoi_<?php if(isset($_REQUEST['config_con_ruoi'])){echo $_REQUEST['config_con_ruoi']==1?'yes':'no';}?>').attr('checked',true);
											</script>
                                        </div>
                                        
                                        <div>
                                        	<b>Số acc sử dụng sau khi đăng ký</b>
                                         	<input name="config_max_account" type="text" id="max_account" class="form-control">
                                        </div>
                                        <div>
                                        	<b>Số ngày sử dụng sau khi đăng ký</b>
                                         	<input name="config_expiration_date" type="text" id="expiration_date" class="form-control">
                                        </div>
                                         <b>% tiền hoa hồng cho người giới thiệu</b>
                                         <input name="config_percen_profit" type="text" id="percen_profit" class="form-control">
                                        
                                        <b>Google Analytics</b>
                                        <div>
                                        	<textarea name="config_google_analytics" id="google_analytics" class="form-control" rows="5"></textarea>
                                        </div>
                                    </div>
                                    <div role="presentation2" class="tab-pane fade" id="profile_with_icon_title">
                                        <b>GSOCOIN thưởng khi thành viên đăng ký</b>
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input name="config_sobcoin_reward" type="text" id="sobcoin_reward" class="form-control" >
                                            </div>
                                        </div>
                                        <b>[[.Hotline.]]</b>
                                        <div class="form-group">
                                            <input name="config_hotline" type="text" id="config_hotline" class="form-control" >
                                        </div>
                                        <b>[[.Minimum_delay_every_post_on_post_now.]]</b>
                                        <div class="form-group">
                                            <select name="config_minimum_deplay_post_now" class="form-control" id="config_minimum_deplay_post_now"></select>
                                        </div>
                                        <b>[[.Default_delay_every_post_on_schedule.]]</b>
                                        <div class="form-group">
                                            <select name="config_default_deplay" class="form-control" id="config_default_deplay"></select>
                                        </div>
                                        <b>[[.Minimum_delay_every_post_on_schedule.]]</b>
                                        <div class="form-group">
                                            <select name="config_minimum_deplay" class="form-control" id="config_minimum_deplay"></select>
                                        </div>
                                    </div>
                                    <div role="presentation3" class="tab-pane fade" id="messages_with_icon_title">
                                        <b>Thông tin thanh toán</b>
                                        <div class="form-group">
                                            <div class="form-line">
												<textarea name="config_payment_info" id="payment_info" class="form-control" style="height:400px;"></textarea>
						                      <script>tiny_mce('#payment_info');</script>                                                 
                                            </div>
                                        </div>
                                     </div>
                                      <div role="presentation4" class="tab-pane fade" id="show_notice">
                                        <div class="form-group">
                                             <b>Hiển thị thông báo</b>
                                            <div class="form-group demo-radio-button">
                                                <input name="config_is_notice" type="radio" id="is_notice_yes" class="radio-col-red" value="1">
                                                <label for="is_notice_yes">Yes</label>                                                
                                                <input name="config_is_notice" type="radio" id="is_notice_no" class="radio-col-red"  value="0">
                                                <label for="is_notice_no">No</label>
                                                <script>
                                                jQuery('#is_notice_<?php if(isset($_REQUEST['config_is_notice'])){echo $_REQUEST['config_is_notice']==1?'yes':'no';}?>').attr('checked',true);
                                                </script>
                                            </div>
                                             <b>Tiêu đề thông báo</b>
                                        	 <input name="config_notice_title" type="text" id="notice_title" class="form-control">
                                               <b>Nội dung thông báo</b>
                                            <div class="form-line">
												<textarea name="config_notice" id="notice" class="form-control" style="height:400px;"></textarea>
						                      <script>tiny_mce('#notice');</script>                                                 
                                            </div>
                                        </div>
                                     </div>
                                </div>
                                <button type="submit" class="btn bg-red waves-effect">[[.Submit.]]</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>            
        </div>
	</form>        
  </div>
</section>
