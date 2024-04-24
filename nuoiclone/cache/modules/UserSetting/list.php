<section class="content">
        <div class="container-fluid">
       <form name="SettingForm" method="POST" enctype="multipart/form-data">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                            <i class="fa fa-cogs" aria-hidden="true"></i> <?php echo Portal::language('Settings');?> 
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
                                        <b><?php echo Portal::language('Website_name');?></b>
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="hidden" class="form-control" name="token" id="token" value="">
                                                <input  name="config_website_title" id="website_title" class="form-control" type ="text" value="<?php echo String::html_normalize(URL::get('config_website_title'));?>"/>
                                            </div>
                                        </div>
                                        <b><?php echo Portal::language('Website_description');?></b>
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input  name="config_website_description" id="website_description" class="form-control" type ="text" value="<?php echo String::html_normalize(URL::get('config_website_description'));?>"/>
                                            </div>
                                        </div>
                                        <b><?php echo Portal::language('Website_keywords');?></b>
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input  name="config_website_keyword" id="website_keyword" class="form-control" type ="text" value="<?php echo String::html_normalize(URL::get('config_website_keyword'));?>"/>
                                            </div>
                                        </div>
                                        <b><?php echo Portal::language('Website_logo');?></b>
                                        <div class="form-group">
                                            <input  name="config_website_logo" id="website_logo" class="form-control" type ="file" value="<?php echo String::html_normalize(URL::get('config_website_logo'));?>"/>
                                             <div id="delete_website_logo"><?php if(Url::get('config_website_logo') and file_exists(Url::get('config_website_logo'))){?>[<a href="<?php echo Url::get('config_website_logo');?>" target="_blank" style="color:#FF0000"><?php echo Portal::language('view');?></a>]&nbsp;[<a href="<?php echo Url::build_current(array('cmd'=>'unlink','link'=>Url::get('config_website_logo')));?>" onclick="jQuery('#delete_website_logo').html('');" target="_blank" style="color:#FF0000"><?php echo Portal::language('delete');?></a>]<?php }?></div>
                                        </div>
                                        <b><?php echo Portal::language('Website_icon');?></b>
                                        <div class="form-group">
                                            <input  name="config_website_icon" id="website_icon" class="form-control" type ="file" value="<?php echo String::html_normalize(URL::get('config_website_icon'));?>"/>
                                             <div id="delete_website_icon"><?php if(Url::get('config_website_icon') and file_exists(Url::get('config_website_icon'))){?>[<a href="<?php echo Url::get('config_website_icon');?>" target="_blank" style="color:#FF0000"><?php echo Portal::language('view');?></a>]&nbsp;[<a href="<?php echo Url::build_current(array('cmd'=>'unlink','link'=>Url::get('config_website_icon')));?>" onclick="jQuery('#delete_website_logo').html('');" target="_blank" style="color:#FF0000"><?php echo Portal::language('delete');?></a>]<?php }?></div>
                                        </div>
                                        <b><?php echo Portal::language('Timezone_server');?></b>
                                        <div class="form-group">
                                            <select   name="config_timezone" class="form-control" id="timezone">
                                             <?php foreach($this->map['timezone'] as $value) { ?>
                                                <option value="<?php echo $value['zone'];?>" <?php if($value['zone']==Url::get('config_timezone')){echo ' selected';}?>>
                                                    <?php echo $value['diff_from_GMT'] . ' - ' . $value['zone']; ?>
                                                </option>
                                            <?php } ?>
                                            </select>
                                        </div>
                                        
                                        <b>Cho phép đăng ký thành viên</b>
                                        <div class="form-group demo-radio-button">
                                            <input  name="config_register" id="register_yes" class="radio-col-red" value="1" type ="radio" value="<?php echo String::html_normalize(URL::get('config_register'));?>"/>
                                            <label for="register_yes">Yes</label>
                                            
                                            <input  name="config_register" id="register_no" class="radio-col-red"  value="0" type ="radio" value="<?php echo String::html_normalize(URL::get('config_register'));?>"/>
                                            <label for="register_no">No</label>
                                            <script>
											jQuery('#register_<?php if(isset($_REQUEST['config_register'])){echo $_REQUEST['config_register']==1?'yes':'no';}?>').attr('checked',true);
											</script>
                                        </div>
                                        <b>Kích hoạt tài khoản ngay sau khi đăng ký</b>
                                        <div class="form-group demo-radio-button">
                                            <input  name="config_auto_active_user" id="auto_active_user_yes" class="radio-col-red" value="1" type ="radio" value="<?php echo String::html_normalize(URL::get('config_auto_active_user'));?>"/>
                                            <label for="auto_active_user_yes">Yes</label>
    
                                            <input  name="config_auto_active_user" id="auto_active_user_no" class="radio-col-red"  value="0" type ="radio" value="<?php echo String::html_normalize(URL::get('config_auto_active_user'));?>"/>
                                            <label for="auto_active_user_no">No (Yêu cầu thành viên kích hoạt tài khoản từ email)</label>
                                                                                        <script>
											jQuery('#auto_active_user_<?php if(isset($_REQUEST['config_auto_active_user'])){echo $_REQUEST['config_auto_active_user']==1?'yes':'no';}?>').attr('checked',true);
											</script>
                                        </div>
                                        <b>Hiển thị con ruồi trên màn hình</b>
                                        <div class="form-group demo-radio-button">
                                            <input  name="config_con_ruoi" id="con_ruoi_yes" class="radio-col-red" value="1" type ="radio" value="<?php echo String::html_normalize(URL::get('config_con_ruoi'));?>"/>
                                            <label for="con_ruoi_yes">Yes</label>    
                                            <input  name="config_con_ruoi" id="con_ruoi_no" class="radio-col-red"  value="0" type ="radio" value="<?php echo String::html_normalize(URL::get('config_con_ruoi'));?>"/>
                                            <label for="con_ruoi_no">No</label>
                                            <script>
											jQuery('#con_ruoi_<?php if(isset($_REQUEST['config_con_ruoi'])){echo $_REQUEST['config_con_ruoi']==1?'yes':'no';}?>').attr('checked',true);
											</script>
                                        </div>
                                        
                                        <div>
                                        	<b>Số acc sử dụng sau khi đăng ký</b>
                                         	<input  name="config_max_account" id="max_account" class="form-control" type ="text" value="<?php echo String::html_normalize(URL::get('config_max_account'));?>"/>
                                        </div>
                                        <div>
                                        	<b>Số ngày sử dụng sau khi đăng ký</b>
                                         	<input  name="config_expiration_date" id="expiration_date" class="form-control" type ="text" value="<?php echo String::html_normalize(URL::get('config_expiration_date'));?>"/>
                                        </div>
                                         <b>% tiền hoa hồng cho người giới thiệu</b>
                                         <input  name="config_percen_profit" id="percen_profit" class="form-control" type ="text" value="<?php echo String::html_normalize(URL::get('config_percen_profit'));?>"/>
                                        
                                        <b>Google Analytics</b>
                                        <div>
                                        	<textarea  name="config_google_analytics" id="google_analytics" class="form-control" rows="5"><?php echo String::html_normalize(URL::get('config_google_analytics',''));?></textarea>
                                        </div>
                                    </div>
                                    <div role="presentation2" class="tab-pane fade" id="profile_with_icon_title">
                                        <b>GSOCOIN thưởng khi thành viên đăng ký</b>
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input  name="config_sobcoin_reward" id="sobcoin_reward" class="form-control"  type ="text" value="<?php echo String::html_normalize(URL::get('config_sobcoin_reward'));?>"/>
                                            </div>
                                        </div>
                                        <b><?php echo Portal::language('Hotline');?></b>
                                        <div class="form-group">
                                            <input  name="config_hotline" id="config_hotline" class="form-control"  type ="text" value="<?php echo String::html_normalize(URL::get('config_hotline'));?>"/>
                                        </div>
                                        <b><?php echo Portal::language('Minimum_delay_every_post_on_post_now');?></b>
                                        <div class="form-group">
                                            <select  name="config_minimum_deplay_post_now" class="form-control" id="config_minimum_deplay_post_now"><?php
					if(isset($this->map['config_minimum_deplay_post_now_list']))
					{
						foreach($this->map['config_minimum_deplay_post_now_list'] as $key=>$value)
						{
							echo '<option value="'.$key.'"';
							echo '>'.$value.'</option>';
							
						}
					}
					?><?php if(isset($_REQUEST['config_minimum_deplay_post_now']) or isset($this->map['config_minimum_deplay_post_now'])){?><script type="text/javascript">document.getElementById('config_minimum_deplay_post_now').value = "<?php echo addslashes(URL::get('config_minimum_deplay_post_now',isset($this->map['config_minimum_deplay_post_now'])?$this->map['config_minimum_deplay_post_now']:''));?>";</script><?php }?></select>
                                        </div>
                                        <b><?php echo Portal::language('Default_delay_every_post_on_schedule');?></b>
                                        <div class="form-group">
                                            <select  name="config_default_deplay" class="form-control" id="config_default_deplay"><?php
					if(isset($this->map['config_default_deplay_list']))
					{
						foreach($this->map['config_default_deplay_list'] as $key=>$value)
						{
							echo '<option value="'.$key.'"';
							echo '>'.$value.'</option>';
							
						}
					}
					?><?php if(isset($_REQUEST['config_default_deplay']) or isset($this->map['config_default_deplay'])){?><script type="text/javascript">document.getElementById('config_default_deplay').value = "<?php echo addslashes(URL::get('config_default_deplay',isset($this->map['config_default_deplay'])?$this->map['config_default_deplay']:''));?>";</script><?php }?></select>
                                        </div>
                                        <b><?php echo Portal::language('Minimum_delay_every_post_on_schedule');?></b>
                                        <div class="form-group">
                                            <select  name="config_minimum_deplay" class="form-control" id="config_minimum_deplay"><?php
					if(isset($this->map['config_minimum_deplay_list']))
					{
						foreach($this->map['config_minimum_deplay_list'] as $key=>$value)
						{
							echo '<option value="'.$key.'"';
							echo '>'.$value.'</option>';
							
						}
					}
					?><?php if(isset($_REQUEST['config_minimum_deplay']) or isset($this->map['config_minimum_deplay'])){?><script type="text/javascript">document.getElementById('config_minimum_deplay').value = "<?php echo addslashes(URL::get('config_minimum_deplay',isset($this->map['config_minimum_deplay'])?$this->map['config_minimum_deplay']:''));?>";</script><?php }?></select>
                                        </div>
                                    </div>
                                    <div role="presentation3" class="tab-pane fade" id="messages_with_icon_title">
                                        <b>Thông tin thanh toán</b>
                                        <div class="form-group">
                                            <div class="form-line">
												<textarea  name="config_payment_info" id="payment_info" class="form-control" style="height:400px;"><?php echo String::html_normalize(URL::get('config_payment_info',''));?></textarea>
						                      <script>tiny_mce('#payment_info');</script>                                                 
                                            </div>
                                        </div>
                                     </div>
                                      <div role="presentation4" class="tab-pane fade" id="show_notice">
                                        <div class="form-group">
                                             <b>Hiển thị thông báo</b>
                                            <div class="form-group demo-radio-button">
                                                <input  name="config_is_notice" id="is_notice_yes" class="radio-col-red" value="1" type ="radio" value="<?php echo String::html_normalize(URL::get('config_is_notice'));?>"/>
                                                <label for="is_notice_yes">Yes</label>                                                
                                                <input  name="config_is_notice" id="is_notice_no" class="radio-col-red"  value="0" type ="radio" value="<?php echo String::html_normalize(URL::get('config_is_notice'));?>"/>
                                                <label for="is_notice_no">No</label>
                                                <script>
                                                jQuery('#is_notice_<?php if(isset($_REQUEST['config_is_notice'])){echo $_REQUEST['config_is_notice']==1?'yes':'no';}?>').attr('checked',true);
                                                </script>
                                            </div>
                                             <b>Tiêu đề thông báo</b>
                                        	 <input  name="config_notice_title" id="notice_title" class="form-control" type ="text" value="<?php echo String::html_normalize(URL::get('config_notice_title'));?>"/>
                                               <b>Nội dung thông báo</b>
                                            <div class="form-line">
												<textarea  name="config_notice" id="notice" class="form-control" style="height:400px;"><?php echo String::html_normalize(URL::get('config_notice',''));?></textarea>
						                      <script>tiny_mce('#notice');</script>                                                 
                                            </div>
                                        </div>
                                     </div>
                                </div>
                                <button type="submit" class="btn bg-red waves-effect"><?php echo Portal::language('Submit');?></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>            
        </div>
	<input type="hidden" name="form_block_id" value="<?php echo isset(Module::$current->data)?Module::$current->data['id']:'';?>"/>
			</form >
			
			        
  </div>
</section>
