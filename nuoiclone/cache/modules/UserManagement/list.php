<section class="content">
    <div class="container-fluid">
       <form name="UserManager" class="ScheduleList" method="post" data-action="<?php echo Url::build_current(array('cmd'=>'ajax_action_multiple'));?>">
            <div class="row">
                <div class="clearfix"></div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2><i class="fa fa-user" aria-hidden="true"></i> QUẢN LÝ TÀI KHOẢN ĐĂNG KÝ <b style="color:#F00">[Có <?php echo $this->map['total'];?> TV]</b></h2>
                        </div>
                        <div class="header">
                            <div class="form-inline">
                                <div class="btn-group" role="group">
                                    <div class="btn-group" role="group">
                                        <button type="button" class="btn bg-red waves-effect dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo Portal::language('Action');?><span class="caret"></span></button>
                                        <ul class="dropdown-menu">
                                            <li><a class="btnActionModule" data-action="active" data-confirm="Bạn có chắc muốn kích hoạt tài khoản này không?" href="javascript:void(0);"><?php echo Portal::language('Active');?></a></li>
                                            <li><a class="btnActionModule" data-action="disable" data-confirm="Bạn có chắc muốn bỏ kích hoạt tài khoản không?" href="javascript:void(0);"><?php echo Portal::language('Deactive');?></a></li>
                                            <li><a class="btnActionModule" data-action="delete" data-confirm="Bạn có chắc muốn xóa không?" href="javascript:void(0);"><?php echo Portal::language('Delete');?></a></li>
                                        </ul>
                                    </div>
                                    <a href="<?php echo Url::build_current(array('cmd'=>'add'));?>" class="btn bg-light-green waves-effect"><i class="fa fa-plus" aria-hidden="true"></i> <?php echo Portal::language('Add_new');?></a>
                                </div>
                            </div>
                        </div>
                        <div class="body p0">
							<table class="table table-bordered table-hover mb0">
                            		<tr>
                                    	<td colspan="9" align="right">Tìm kiếm: <input  name="keyword" id="keyword" type ="text" value="<?php echo String::html_normalize(URL::get('keyword'));?>"/><input  name="search" value="Tìm" type ="submit" value="<?php echo String::html_normalize(URL::get('search'));?>"/></td>
                                    </tr>
                                    <tr>
                                        <th style="width: 40px;">
                                            <input type="checkbox" id="md_checkbox_211" class="filled-in chk-col-red checkAll">
                                            <label class="p0 m0" for="md_checkbox_211">&nbsp;</label>
                                        </th>
                                        <th><?php echo Portal::language('Fullname');?></th>
                                        <th><?php echo Portal::language('Email');?></th>
                                        <th>Số lượng tk FB</th>
                                        <th>Ngày đăng ký</th>
                                        <th>Ngày hết hạn</th>
                                        <th><?php echo Portal::language('active');?></th>
                                        <th><?php echo Portal::language('Option');?></th>
                                    </tr>
									<?php
					if(isset($this->map['items']) and is_array($this->map['items']))
					{
						foreach($this->map['items'] as $key1=>&$item1)
						{
							if($key1!='current')
							{
								$this->map['items']['current'] = &$item1;?>
									<tr class="pending" data-action="<?php echo Url::build_current(array('cmd'=>'ajax_action_item'));?>" data-id="<?php echo $this->map['items']['current']['id'];?>">
										<td>
											<input type="checkbox" name="id[]" id="md_checkbox_<?php echo $this->map['items']['current']['id'];?>" class="filled-in chk-col-red checkItem" value="<?php echo $this->map['items']['current']['id'];?>">
											<label class="p0 m0" for="md_checkbox_<?php echo $this->map['items']['current']['id'];?>">&nbsp;</label>
										</td>
										<td><a href="<?php echo Url::build('facebook_accounts',array('user_id'=>$this->map['items']['current']['id']));?>"><?php echo $this->map['items']['current']['full_name'];?></a></td>
										<td><input value="<?php echo $this->map['items']['current']['email'];?>" style="border:none;" readonly="readonly"/></td>
										<td><?php echo $this->map['items']['current']['maximum_facebook_accounts'];?></td>
										<td><?php echo date("G:i d-m-Y", $this->map['items']['current']['create_date']);?></td>
										<td><?php echo date("G:i d-m-Y", strtotime($this->map['items']['current']['expiration_date']));?></td>
										<td style="width: 60px;">
											<div class="switch">
												<label><input type="checkbox" class="btnActionModuleItem" <?php echo ($this->map['items']['current']['is_active']==1?"checked":"")?>><span class="lever switch-col-light-blue"></span></label>
											</div>
										</td>
										<td style="width:140px;">
											<div class="btn-group" role="group">
												<a href="<?php echo Url::build_current(array('cmd'=>'edit','id'=>$this->map['items']['current']['id']));?>" class="btn bg-light-green waves-effect"><i class="fa fa-pencil" aria-hidden="true"></i></a>
												<button type="button" class="btn bg-light-green waves-effect btnActionModuleItem" data-action="delete" data-confirm="Bạn có chắc muốn xóa không?"><i class="fa fa-trash" aria-hidden="true"></i></button>
												<a  title="Đăng nhập với tư cách thành viên" href="<?php echo Url::build_current(array('cmd'=>'login','user_id'=>$this->map['items']['current']['id']));?>" class="btn bg-light-green waves-effect"><i class="fa fa-user" aria-hidden="true"></i></a>
											</div>
										</td>
									</tr>
									
							
						<?php
							}
						}
					unset($this->map['items']['current']);
					} ?>
                                    <tr>
                                    	<td colspan="2">Tổng <b><?php echo $this->map['total'];?></b></td>
                                    	<td colspan="7" align="right"><?php echo $this->map['paging'];?></td>
                                    </tr>
                            </table>   
                        </div>
                    </div>
                </div>
            </div>
		<input type="hidden" name="form_block_id" value="<?php echo isset(Module::$current->data)?Module::$current->data['id']:'';?>"/>
			</form >
			
			        
	</div>
</section>

