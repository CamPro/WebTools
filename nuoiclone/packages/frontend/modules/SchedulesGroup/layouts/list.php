<section class="content">
    <div class="container-fluid">
       <form class="ScheduleList" action="<?php echo Url::build_current(array('cmd'=>'ajax_action_multiple'));?>">
            <div class="row">
                <div class="clearfix"></div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header"> 
                            <h2>
                                <i class="fa fa-bars" aria-hidden="true"></i> Lịch thực hiện nhóm                 
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
                                    		<li><a class="btnActionModule" data-action="delete_all" data-confirm="Bạn có chắc chắn xóa tất cả không?" href="javascript:void(0);">Xóa tất cả</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div style="margin-top:10px;">Chờ xử lý <b style="color:#ff0000;">[[|processing|]]</b> | Lỗi: <b style="color:#ff0000;">[[|failure|]]</b> | Hoàn thành:  <b style="color:#ff0000;">[[|complated|]]</b> | Tổng: <b style="color:#ff0000;">[[|total|]]</b></div>
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
                                        <th>Tài khoản</th>
                                        <th>Hành động</th>
                                        <th>Loại</th>
                                        <th>Thực hiện</th>
                                        <th>Trạng thái</th>
                                        <th>Tạo lúc</th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<!--LIST:items-->
                                    <tr role="row">
                                    	<td>
                                            <input type="checkbox" name="id[]" id="md_checkbox_[[|items.id|]]" class="filled-in chk-col-red checkItem" value="[[|items.id|]]">
                                            <label class="p0 m0" for="md_checkbox_[[|items.id|]]">&nbsp;</label>
                                        </td>
                                        <td>[[|items.account_name|]]</td>
                                        <td>
                                        <?php if([[=items.type=]]=='Up Top Group'){?>
                                        <a href="http://facebook.com/[[|items.groupid|]]" target="_blank">Up Top Group [[|items.message|]]&nbsp;</a>
                                        <?php }elseif([[=items.groupid=]]){?>
                                      Thêm <a href="http://facebook.com/[[|items.uid|]]" target="_blank">[[|items.uid_name|]]</a> vào <a href="http://facebook.com/[[|items.groupid|]]" target="_blank">[[|items.group_name|]]</a>
										<?php }else{?>
                                        <a href="http://facebook.com/[[|items.uid|]]" target="_blank">[[|items.uid_name|]]</a>
                                        <?php }?>
                                        </td>
                                        <td>[[|items.type|]]</td>
                                        <td>[[|items.time_post_show|]]</td>
                                        <td title="[[|items.message_error|]]"><?php echo SchedulesGroup::status_post([[=items.status=]]);?></td>
                                        <td>[[|items.created|]]</td>
                                    </tr>
                                	<!--/LIST:items-->    
                                    <tr>
                                    	<td colspan="7">Có tổng <b style="color:#F00">[[|total|]]</b> - [[|paging|]]</td>
                                    </tr>                                
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </form>        
   </div>
</section>