<section class="content">
    <div class="container-fluid">
       <form class="ScheduleList" action="<?php echo Url::build_current(array('cmd'=>'ajax_action_multiple'));?>">
            <div class="row">
                <div class="clearfix"></div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header"> 
                            <h2>
                                <i class="fa fa-bars" aria-hidden="true"></i> Lịch thực hiện                  
                            </h2>
                        </div>
                        <div class="header">
                            <div class="form-inline">
                                <div class="btn-group" role="group">
                                    <div class="btn-group" role="group">
                                        <button type="button" class="btn bg-red waves-effect dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Action <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a class="btnActionModule" data-action="delete" data-confirm="<?php echo Portal::language('Are you sure you want to delete this items?');?>" href="javascript:void(0);">Delete</a></li>
                                    		<li><a class="btnActionModule" data-action="delete_all" data-confirm="<?php echo Portal::language('Are you sure you want to delete all items?');?>" href="javascript:void(0);">Delete all</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div style="margin-top:10px;">Chờ xử lý <b style="color:#ff0000;"><?php echo $this->map['processing'];?></b> | Lỗi: <b style="color:#ff0000;"><?php echo $this->map['failure'];?></b> | Hoàn thành:  <b style="color:#ff0000;"><?php echo $this->map['complated'];?></b> | Tổng: <b style="color:#ff0000;"><?php echo $this->map['total'];?></b></div>
                            </div>
                        </div>
                        <div class="body p0">
    	                        <table class="table table-bordered table-striped table-hover js-dataTableSchedule mb0">
                                <thead>
                                    <tr>
                                        <th style="width: 42px;">
                                            <input type="checkbox" id="md_checkbox_all" class="filled-in chk-col-red checkAll">
                                            <label class="p0 m0" for="md_checkbox_all">&nbsp;</label>
                                        </th>
                                        <th><?php echo Portal::language('Account');?></th>
                                        <th><?php echo Portal::language('Friend');?></th>
                                        <th><?php echo Portal::language('Type');?></th>
                                        <th><?php echo Portal::language('Time_Post');?></th>
                                        <th><?php echo Portal::language('Status');?></th>
                                        <th><?php echo Portal::language('Created');?></th>
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
                                    <tr role="row">
                                    	<td>
                                            <input type="checkbox" name="id[]" id="md_checkbox_<?php echo $this->map['items']['current']['id'];?>" class="filled-in chk-col-red checkItem" value="<?php echo $this->map['items']['current']['id'];?>">
                                            <label class="p0 m0" for="md_checkbox_<?php echo $this->map['items']['current']['id'];?>">&nbsp;</label>
                                        </td>
                                        <td><?php echo $this->map['items']['current']['account_name'];?></td>
                                        <td><a href="http://facebook.com/<?php echo $this->map['items']['current']['uid'];?>" target="_blank"><?php echo $this->map['items']['current']['uid_name'];?></a></td>
                                        <td><?php echo $this->map['items']['current']['type'];?></td>
                                        <td><?php echo $this->map['items']['current']['time_post_show'];?></td>
                                        <td><span data-toggle="tooltip" data-original-title="<?php echo strip_tags($this->map['items']['current']['message_error']);?>"><?php echo SchedulesFriend::status_post($this->map['items']['current']['status']);?></span></td>
                                        <td><?php echo $this->map['items']['current']['created'];?></td>
                                    </tr>
                                	
							
						<?php
							}
						}
					unset($this->map['items']['current']);
					} ?>                                    
                                </tbody>
                            </table>
                            <div align="right" style="padding:0px 10px 10px 5px">Có tổng <b style="color:#F00"><?php echo $this->map['total'];?></b> - <?php echo $this->map['paging'];?></div>
                        </div>
                    </div>
                </div>
            </div>
        <input type="hidden" name="form_block_id" value="<?php echo isset(Module::$current->data)?Module::$current->data['id']:'';?>"/>
			</form >
			
			        
   </div>
</section>