<section class="content">
    <div class="container-fluid">
       <form class="ScheduleList" method="post" data-action="<?php echo Url::build_current(array('cmd'=>'ajax_action_multiple'));?>">
            <div class="row">
                <div class="clearfix"></div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header"> 
                            <h2>
                                <i class="fa fa-bars" aria-hidden="true"></i> Lịch đăng bài                    
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
                                            <li><a class="btnActionModule" data-action="delete" data-confirm="Bạn có chắc muốn xóa không?" href="javascript:void(0);">Xóa</a></li>
                                    		<li><a class="btnActionModule" data-action="delete_all" data-confirm="Bạn có chắc muốn xóa không?" href="javascript:void(0);">Xóa tất cả</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div style="margin-top:10px;">Chờ xử lý <b style="color:#ff0000;"><?php echo $this->map['processing'];?></b> | Lỗi: <b style="color:#ff0000;"><?php echo $this->map['failure'];?></b> | Hoàn thành:  <b style="color:#ff0000;"><?php echo $this->map['complated'];?></b> | Tổng: <b style="color:#ff0000;"><?php echo $this->map['total'];?></b></div>                                
                            </div>
                        </div>
                        <div class="body p0">
                        	<div style="padding:10px 10px">
							<table width="100%" border="0" cellspacing="4" cellpadding="4">
                              <tr>
                                <td align="right">Lọc theo: <select  name="facebook_id" id="facebook_id" style="border:1px solid #ddd;height:23px"><?php
					if(isset($this->map['facebook_id_list']))
					{
						foreach($this->map['facebook_id_list'] as $key=>$value)
						{
							echo '<option value="'.$key.'"';
							echo '>'.$value.'</option>';
							
						}
					}
					?><?php if(isset($_REQUEST['facebook_id']) or isset($this->map['facebook_id'])){?><script type="text/javascript">document.getElementById('facebook_id').value = "<?php echo addslashes(URL::get('facebook_id',isset($this->map['facebook_id'])?$this->map['facebook_id']:''));?>";</script><?php }?></select>&nbsp;<input  name="Search" value="Lọc" type ="submit" value="<?php echo String::html_normalize(URL::get('Search'));?>"/></td>
                              </tr>
                            </table>
                            </div>
							 <table class="table table-bordered table-striped table-hover mb0">                            
                                <thead>
                                    <tr>
                                        <th style="width: 40px;">
                                            <input type="checkbox" id="md_checkbox_all" class="filled-in chk-col-red checkAll">
                                            <label class="p0 m0" for="md_checkbox_all">&nbsp;</label>
                                        </th>
                                        <th><?php echo Portal::language('Option');?></th>
                                        <th><?php echo Portal::language('Account');?></th>
                                        <th><?php echo Portal::language('Name');?></th>
                                        <th><?php echo Portal::language('Category');?></th>
                                        <th><?php echo Portal::language('Type');?></th>
                                        <th><?php echo Portal::language('Time_Post');?></th>
                                        <th><?php echo Portal::language('Repeat_Post');?></th>
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
                                         <td>
                                            <div class="btn-group" role="group">
                                                <button type="button" class="btn btn-primary waves-effect btnAnalyticsPost" data-action="<?php echo Url::build_current(array('cmd'=>'ajax_analytics_post'));?>" data-id="<?php echo $this->map['items']['current']['id'];?>" a data-trigger="focus" data-container="body" data-toggle="popover" data-placement="top" title="" data-content="Loading..." data-original-title="Analytics Post">
                                                    <i class="fa fa-area-chart" aria-hidden="true"></i>
                                                </button>
                                            </div>
	                                    </td>
                                        <td><?php echo $this->map['items']['current']['account_name'];?></td>
                                        <td><?php echo $this->map['items']['current']['name'];?><a href='https://facebook.com/<?php echo ($this->map['items']['current']['result']?$this->map['items']['current']['result']:$this->map['items']['current']['group_id'])?>' target='_blank'><i class='col-light-blue fa fa-external-link-square' aria-hidden='true'></i></a></td>
                                        <td><?php echo $this->map['items']['current']['category'];?></td>
                                        <td><?php echo $this->map['items']['current']['type'];?></td>
                                        <td><?php echo $this->map['items']['current']['time_post'];?></td>
                                        <td><?php echo $this->map['items']['current']['repeat_post'];?></td>
                                        <td><span data-toggle="tooltip" <?php if($this->map['items']['current']['message_error']){ echo 'title="'.$this->map['items']['current']['message_error'].'"';}?>><?php echo SchedulesPost::status_post($this->map['items']['current']['status']);?></span></td>
                                        <td><?php echo $this->map['items']['current']['created'];?></td>
                                    </tr>
                                	
							
						<?php
							}
						}
					unset($this->map['items']['current']);
					} ?>                                    
                                </tbody>
                            </table>
                            <div style="padding:10px 10px">
							<table width="100%" border="0" cellspacing="4" cellpadding="4">
                              <tr>
                                <td align="left">Có tổng <b style="color:#F00"><?php echo $this->map['total'];?></b></td>
                                <td align="right"><?php echo $this->map['paging'];?></td>
                              </tr>
                            </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <input type="hidden" name="form_block_id" value="<?php echo isset(Module::$current->data)?Module::$current->data['id']:'';?>"/>
			</form >
			
			        
   </div>
</section>