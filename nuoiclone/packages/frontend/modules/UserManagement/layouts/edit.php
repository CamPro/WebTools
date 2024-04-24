<section class="content">
    <div class="container-fluid">
         <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                            <i class="fa fa-user" aria-hidden="true"></i> <?php if(Url::get('cmd')=='add'){echo 'Thêm tài khoản';}else{echo 'Sửa thông tin tài khoản';}?> 
                        </h2>
                    </div>
                    <div class="body">
                        <div class="row">
                            <div class="col-sm-12 mb0">
                                <form action="<?php echo Url::build_current(array('cmd'=>'ajax_update'));?>" data-redirect="<?php echo Url::build_current();?>">
                                    <input  type="hidden" class="form-control" name="id" value="<?php echo Url::get('id');?>">
                                    <b>[[.Fullname.]]</b>
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input name="full_name" type="text" id="full_name" class="form-control">
                                        </div>
                                    </div>
                                    <b>[[.Email.]]</b>
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input name="email" type="text" id="email" class="form-control">
                                        </div>
                                    </div>
                                    <b>[[.Maximum_facebook_accounts.]]</b>
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input name="maximum_facebook_accounts" type="text" id="maximum_facebook_accounts" class="form-control">
                                        </div>
                                    </div>
                                    <b>[[.Expiration_date.]]</b>
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input name="expiration_date" type="text" id="expiration_date" class="form-control form-datetime">
                                        </div>
                                    </div>
                                    <b>[[.timezone.]]</b>
                                    <div class="form-group">
                                         <select  name="timezone" class="form-control" id="timezone">
                                         <?php foreach([[=timezone=]] as $value) { ?>
                                            <option value="<?php echo $value['zone'];?>" <?php if($value['zone']==Url::get('timezone')){echo ' selected';}?>>
                                                <?php echo $value['diff_from_GMT'] . ' - ' . $value['zone']; ?>
                                            </option>
                                        <?php } ?>
                                        </select>
                                    </div>
                                    <b>[[.Password.]]</b>
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input type="password" name="password" class="form-control">
                                        </div>
                                    </div>
                                    <b>[[.Re_password.]]</b>
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input name="repassword" type="password" id="repassword" class="form-control">
                                        </div>
                                    </div>
                                    <b>[[.active.]]</b>
                                    <div class="form-group demo-radio-button">
                                        <input name="is_active" type="radio" id="default_yes" class="radio-col-red"  value="1">
                                        <label for="default_yes">Yes</label>
        
                                        <input name="is_active" type="radio" id="default_no" class="radio-col-red"  value="0">
                                        <label for="default_no">No</label>
                                         <script>
											jQuery('#default_<?php if(isset($_REQUEST['is_active'])){echo $_REQUEST['is_active']==1?'yes':'no';}?>').attr('checked',true);
										</script>        
                                    </div>
                                    <button type="submit" class="btn bg-red waves-effect btnActionUpdate">[[.Submit.]]</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>        
   </div>
</section>
