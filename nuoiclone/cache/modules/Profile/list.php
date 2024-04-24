<section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                <i class="fa fa-user" aria-hidden="true"></i> Cập nhật thông tin cá nhân
                            </h2>
                        </div>
                        <div class="body">
                            <div class="row">
                                <div class="col-sm-12 mb0">
                                	<ul class="list-group">
                                        <li class="list-group-item">Số tài khoản facebook được thêm<span class="badge bg-blue"><?php echo Url::get('maximum_facebook_accounts');?></span></li>
                                        <li class="list-group-item">Ngày hết hạn<span class="badge bg-light-green"><?php echo Url::get('expiration_date');?></span></li>
                                    </ul>
                                    <form action="<?php echo Url::build_current(array('cmd'=>'ajax_profile'));?>" data-redirect="<?php echo Url::build_current();?>">
                                        <input  name="id" class="form-control" type ="hidden" value="<?php echo String::html_normalize(URL::get('id'));?>"/>
                                        <b>Họ tên</b>
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input  name="full_name" class="form-control" type ="text" value="<?php echo String::html_normalize(URL::get('full_name'));?>"/>
                                            </div>
                                        </div>
                                        <b><?php echo Portal::language('Email');?></b>
                                        <div class="form-group">
                                            <div class="form-line bg-grey">
                                                <input  name="email" class="form-control" disabled=""  type ="text" value="<?php echo String::html_normalize(URL::get('email'));?>"/>
                                            </div>
                                        </div>
                                        <b><?php echo Portal::language('timezone');?></b>
                                        <div class="form-group">
                                            <select  name="timezone" class="form-control"><?php
					if(isset($this->map['timezone_list']))
					{
						foreach($this->map['timezone_list'] as $key=>$value)
						{
							echo '<option value="'.$key.'"';
							echo '>'.$value.'</option>';
							
						}
					}
					?><?php if(isset($_REQUEST['timezone']) or isset($this->map['timezone'])){?><script type="text/javascript">document.getElementById('timezone').value = "<?php echo addslashes(URL::get('timezone',isset($this->map['timezone'])?$this->map['timezone']:''));?>";</script><?php }?>
                                             <?php foreach($this->map['timezone'] as $value) { ?>
                                                <option value="<?php echo $value['zone'];?>" <?php if($value['zone']==Url::get('timezone')){echo ' selected';}?>>
                                                    <?php echo $value['diff_from_GMT'] . ' - ' . $value['zone']; ?>
                                                </option>
                                            <?php } ?>
                                            </select>
                                        </div>
                                        <?php if(User::id()!='demo@gpcorp.vn'){?>
                                        <b>Mật khẩu</b>
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="password" class="form-control" name="password">
                                            </div>
                                        </div>
                                        <b>Nhập lại mật khẩu</b>
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input  name="repassword" class="form-control" type ="password" value="<?php echo String::html_normalize(URL::get('repassword'));?>"/>
                                            </div>
                                        </div>
                                        <?php }?>
                                        <button type="submit" class="btn bg-red waves-effect btnActionUpdate">Ghi lại</button>
                                    <input type="hidden" name="form_block_id" value="<?php echo isset(Module::$current->data)?Module::$current->data['id']:'';?>"/>
			</form >
			
			
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
	</div>
</section>
