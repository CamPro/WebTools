<section class="content">
    <div class="container-fluid">
       <form class="ScheduleList" action="<?php echo Url::build_current(array('cmd'=>'ajax_action_multiple'));?>"> 
        <div class="row">
            <div class="clearfix"></div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2><i class="fa fa-facebook-official" aria-hidden="true"></i>&nbsp;Tài khoản Facebook (Max: <b style="color:#F00"><?php echo [[=total=]].'/'.Session::get('user_data','maximum_facebook_accounts');?></b>)</h2>
                    </div>
                    <div class="header">
                        <div class="form-inline">
                            <div class="btn-group" role="group">
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn bg-red waves-effect dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Action <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a class="btnActionModule" data-action="active" data-confirm="Bạn có chắc chắn muốn kích hoạt hết không?" href="javascript:void(0);">Kích hoạt</a></li>
                                        <li><a class="btnActionModule" data-action="disable" data-confirm="Bạn có chắc chắn muốn bỏ kích hoạt không?" href="javascript:void(0);">Bỏ kích hoạt</a></li>
                                        <li><a class="btnActionModule" data-action="delete" data-confirm="Bạn có chắc muốn xóa không?" href="javascript:void(0);">Xóa tất cả</a></li>
                                    </ul>
                                </div>
                                <a href="<?php echo Url::build_current(array('cmd'=>'add'));?>" class="btn bg-light-green waves-effect"><i class="fa fa-plus" aria-hidden="true"></i> Thêm tài khoản</a>
                                <a href="<?php echo Url::build_current(array('cmd'=>'add_all'));?>" class="btn bg-pink waves-effect"><i class="fa fa-plus" aria-hidden="true"></i> Thêm hàng loạt</a>
                                <a href="<?php echo Url::build_current(array('cmd'=>'check_alive'));?>" class="btn bg-blue waves-effect"><i class="fa fa-user-circle-o" aria-hidden="true"></i> Check Nick Live</a>
                            </div>
	    					<small style="color:#F00;float:right;clear:both">Nhấn Group/Page/Friend để cập nhật số lượng Group/Fanpage/Friend của TK tương ứng vào tool</small>
                        </div>
                    </div>
	                    <div class="body p0">
							<table class="table table-bordered table-striped table-hover js-dataTableSchedule mb0">                            
                            <thead>
                                <tr>
                                    <th>
                                        <input type="checkbox" id="md_checkbox" class="filled-in chk-col-red checkAll">
                                        <label class="p0 m0" for="md_checkbox">&nbsp;</label>
                                    </th>
                                    <th>Họ tên<br/>[[.Username.]]/[[.Password.]]</th> 
                                    <th>Ngày sinh</th>                                     
                                    <th>Tổng<br/>(Bạn/LikePage)</th> 
                                    <th>[[.Token.]]</th>
                                    <th class="text-center">[[.Update.]]</th>
                                    <th>Trạng thái</th>
                                    <th>[[.Option.]]</th>
                                </tr>
                            </thead>
                            <tbody>
                            	<!--LIST:items-->
                                 <tr class="pending" data-action="<?php echo Url::build_current(array('cmd'=>'ajax_action_item'));?>" data-action-groups="<?php echo Url::build_current(array('cmd'=>'ajax_get_groups'));?>" data-id="[[|items.id|]]">
                                    <td>
                                        <input type="checkbox" name="id[]" id="md_checkbox_[[|items.id|]]" class="filled-in chk-col-red checkItem" value="[[|items.id|]]">
                                        <label class="p0 m0" for="md_checkbox_[[|items.id|]]">&nbsp;</label>
                                    </td>
                                    <td>
                                    <a href="https://facebook.com/[[|items.fid|]]" target="_blank">[[|items.fullname|]]</a><br/>
                                    [[|items.username|]]</br><em style="color:#00F">[[|items.password|]]</em></td>
                                    <td>[[|items.birthday|]]</td>
                                    <td><?php echo System::display_number([[=items.total_friend=]]).'/'.System::display_number([[=items.total_like=]]);?></td>                                    
                                    <td>[[|items.token_name|]]</td>
                                    <td class="text-center">
                                    	<button type="button" class="btn bg-blue waves-effect btnUpdateGroups" data-type="group">[[.Group.]]</button>
										<button type="button" class="btn bg-blue waves-effect btnUpdateGroups" data-type="page">[[.Page.]]</button>
                                    	<button type="button" class="btn bg-blue waves-effect btnUpdateGroups" data-type="friend">[[.Friend.]]</button>
                                    </td>
                                    <td style="width: 60px;">
                                        <div class="switch">
                                            <label><input  type="checkbox" class="btnActionModuleItem"  <?php echo ([[=items.status=]]==1?'checked':'');?>><span class="lever switch-col-light-blue"></span></label>
                                        </div>
                                    </td>
                                    <td style="width: 90px;">
                                        <div class="btn-group" role="group">
                                            <a href="<?php echo Url::build_current(array('cmd'=>'edit','id'=>[[=items.id=]]));?>" class="btn bg-light-green waves-effect"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                                            <button type="button" class="btn bg-light-green waves-effect btnActionModuleItem" data-action="delete" data-confirm="Bạn có chắc muốn xóa không?"><i class="fa fa-trash" aria-hidden="true"></i></button>
                                        </div>
                                    </td>
                                </tr>
                            	<!--/LIST:items-->
                            </tbody>
                        </table>   
                        <table class="table table-bordered table-striped table-hover mb0" cellpadding="4" cellspacing="4">    
		                        <tr>
                                	<td align="right">Tổng <b>[[|total|]]</b> - [[|paging|]]</td>
                                </tr> 
        				</table>
                    </div>
                </div>
            </div>
        </div>
    </form>        
	</div>
</section>
