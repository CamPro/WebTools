<section class="content">
   <div class="container-fluid">
	 <form class="ScheduleList" action="<?php echo Url::build_current(array('cmd'=>'ajax_action_multiple'));?>">      
        <div class="row">
            <div class="clearfix"></div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                            <i class="fa fa-floppy-o" aria-hidden="true"></i> Mẫu bài đăng 
                        </h2>
                    </div>
                    <div class="header">
                        <div class="form-inline">
                            <div class="btn-group" role="group">
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn bg-red waves-effect dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Action  <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a class="btnActionModule" data-action="active" data-confirm="<?php echo Portal::language('Are you sure you want to active this items?');?>" href="javascript:void(0);">Active</a></li>
                                        <li><a class="btnActionModule" data-action="disable" data-confirm="<?php echo Portal::language('Are you sure you want to disable this items?');?>" href="javascript:void(0);">Deactive</a></li>
                                        <li><a class="btnActionModule" data-action="delete" data-confirm="<?php echo Portal::language('Are you sure you want to delete this items?');?>" href="javascript:void(0);">Delete</a></li>
                                    </ul>
                                </div>
                                <a href="<?php echo Url::build_current(array('cmd'=>'add'));?>" class="btn bg-light-green waves-effect"><i class="fa fa-plus" aria-hidden="true"></i> <?php echo Portal::language('Add_new');?></a>                                
                            </div>
                        </div> 
                    </div>
                    <div class="body p0">
                         <table class="table table-bordered table-striped table-hover js-dataTableSchedule mb0">
                            <thead>
                                <tr>
                                    <th style="width: 10px;">
                                        <input type="checkbox" id="md_checkbox_211" class="filled-in chk-col-red checkAll">
                                        <label class="p0 m0" for="md_checkbox_211">&nbsp;</label>
                                    </th>
                                    <th><?php echo Portal::language('Name');?></th>
                                    <th><?php echo Portal::language('Category');?></th>
                                    <th><?php echo Portal::language('Type');?></th>
                                    <th><?php echo Portal::language('Status');?></th>
                                    <th><?php echo Portal::language('Option');?></th>
                                </tr>
                            </thead>
                            <tbody>
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
                                    <td><?php echo $this->map['items']['current']['name'];?></td>
                                    <td><?php echo $this->map['items']['current']['category'];?></td>
                                    <td><?php echo $this->map['items']['current']['type'];?></td>
                                    <td style="width: 60px;">
                                        <div class="switch">
                                            <label><input type="checkbox" class="btnActionModuleItem"<?php if($this->map['items']['current']['status']){echo ' checked';}?>><span class="lever switch-col-light-blue"></span></label>
                                        </div>
                                    </td>
                                    <td style="width: 80px;">
                                        <div class="btn-group" role="group">
                                            <button type="button" class="btn bg-light-green waves-effect btnActionModuleItem" data-action="delete" data-confirm="<?php echo Portal::language('Are you sure you want to delete this item?');?>"><i class="fa fa-trash" aria-hidden="true"></i></button>
                                        </div>
                                    </td>
                                </tr>
                            	
							
						<?php
							}
						}
					unset($this->map['items']['current']);
					} ?>                                
                              </tbody>
                        </table>   
                    </div>
                </div>
            </div>
        </div>
    <input type="hidden" name="form_block_id" value="<?php echo isset(Module::$current->data)?Module::$current->data['id']:'';?>"/>
			</form >
			
			        
  </div>
</section>
