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
                                    <b><?php echo Portal::language('Fullname');?></b>
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input  name="full_name" id="full_name" class="form-control" type ="text" value="<?php echo String::html_normalize(URL::get('full_name'));?>"/>
                                        </div>
                                    </div>
                                    <b><?php echo Portal::language('Email');?></b>
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input  name="email" id="email" class="form-control" type ="text" value="<?php echo String::html_normalize(URL::get('email'));?>"/>
                                        </div>
                                    </div>
                                    <b><?php echo Portal::language('Maximum_facebook_accounts');?></b>
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input  name="maximum_facebook_accounts" id="maximum_facebook_accounts" class="form-control" type ="text" value="<?php echo String::html_normalize(URL::get('maximum_facebook_accounts'));?>"/>
                                        </div>
                                    </div>
                                    <b><?php echo Portal::language('Expiration_date');?></b>
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input  name="expiration_date" id="expiration_date" class="form-control form-datetime" type ="text" value="<?php echo String::html_normalize(URL::get('expiration_date'));?>"/>
                                        </div>
                                    </div>
                                    <b><?php echo Portal::language('timezone');?></b>
                                    <div class="form-group">
                                         <select  name="timezone" class="form-control" id="timezone">
                                         <?php foreach($this->map['timezone'] as $value) { ?>
                                            <option value="<?php echo $value['zone'];?>" <?php if($value['zone']==Url::get('timezone')){echo ' selected';}?>>
                                                <?php echo $value['diff_from_GMT'] . ' - ' . $value['zone']; ?>
                                            </option>
                                        <?php } ?>
                                        </select>
                                    </div>
                                    <b><?php echo Portal::language('Password');?></b>
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input type="password" name="password" class="form-control">
                                        </div>
                                    </div>
                                    <b><?php echo Portal::language('Re_password');?></b>
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input  name="repassword" id="repassword" class="form-control" type ="password" value="<?php echo String::html_normalize(URL::get('repassword'));?>"/>
                                        </div>
                                    </div>
                                    <b><?php echo Portal::language('active');?></b>
                                    <div class="form-group demo-radio-button">
                                        <input  name="is_active" id="default_yes" class="radio-col-red"  value="1" type ="radio" value="<?php echo String::html_normalize(URL::get('is_active'));?>"/>
                                        <label for="default_yes">Yes</label>
        
                                        <input  name="is_active" id="default_no" class="radio-col-red"  value="0" type ="radio" value="<?php echo String::html_normalize(URL::get('is_active'));?>"/>
                                        <label for="default_no">No</label>
                                         <script>
											jQuery('#default_<?php if(isset($_REQUEST['is_active'])){echo $_REQUEST['is_active']==1?'yes':'no';}?>').attr('checked',true);
										</script>        
                                    </div>
                                    <button type="submit" class="btn bg-red waves-effect btnActionUpdate"><?php echo Portal::language('Submit');?></button>
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
