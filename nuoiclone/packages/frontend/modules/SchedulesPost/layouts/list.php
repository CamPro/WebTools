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
                                <div style="margin-top:10px;">Chờ xử lý <b style="color:#ff0000;">[[|processing|]]</b> | Lỗi: <b style="color:#ff0000;">[[|failure|]]</b> | Hoàn thành:  <b style="color:#ff0000;">[[|complated|]]</b> | Tổng: <b style="color:#ff0000;">[[|total|]]</b></div>                                
                            </div>
                        </div>
                        <div class="body p0">
                        	<div style="padding:10px 10px">
							<table width="100%" border="0" cellspacing="4" cellpadding="4">
                              <tr>
                                <td align="right">Lọc theo: <select name="facebook_id" id="facebook_id" style="border:1px solid #ddd;height:23px"></select>&nbsp;<input name="Search" type="submit" value="Lọc"></td>
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
                                        <th>[[.Option.]]</th>
                                        <th>[[.Account.]]</th>
                                        <th>[[.Name.]]</th>
                                        <th>[[.Category.]]</th>
                                        <th>[[.Type.]]</th>
                                        <th>[[.Time_Post.]]</th>
                                        <th>[[.Repeat_Post.]]</th>
                                        <th>[[.Status.]]</th>
                                        <th>[[.Created.]]</th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<!--LIST:items-->
                                    <tr role="row">
                                    	<td>
                                            <input type="checkbox" name="id[]" id="md_checkbox_[[|items.id|]]" class="filled-in chk-col-red checkItem" value="[[|items.id|]]">
                                            <label class="p0 m0" for="md_checkbox_[[|items.id|]]">&nbsp;</label>
                                        </td>
                                         <td>
                                            <div class="btn-group" role="group">
                                                <button type="button" class="btn btn-primary waves-effect btnAnalyticsPost" data-action="<?php echo Url::build_current(array('cmd'=>'ajax_analytics_post'));?>" data-id="[[|items.id|]]" a data-trigger="focus" data-container="body" data-toggle="popover" data-placement="top" title="" data-content="Loading..." data-original-title="Analytics Post">
                                                    <i class="fa fa-area-chart" aria-hidden="true"></i>
                                                </button>
                                            </div>
	                                    </td>
                                        <td>[[|items.account_name|]]</td>
                                        <td>[[|items.name|]]<a href='https://facebook.com/<?php echo ([[=items.result=]]?[[=items.result=]]:[[=items.group_id=]])?>' target='_blank'><i class='col-light-blue fa fa-external-link-square' aria-hidden='true'></i></a></td>
                                        <td>[[|items.category|]]</td>
                                        <td>[[|items.type|]]</td>
                                        <td>[[|items.time_post|]]</td>
                                        <td>[[|items.repeat_post|]]</td>
                                        <td><span data-toggle="tooltip" <?php if([[=items.message_error=]]){ echo 'title="'.[[=items.message_error=]].'"';}?>><?php echo SchedulesPost::status_post([[=items.status=]]);?></span></td>
                                        <td>[[|items.created|]]</td>
                                    </tr>
                                	<!--/LIST:items-->                                    
                                </tbody>
                            </table>
                            <div style="padding:10px 10px">
							<table width="100%" border="0" cellspacing="4" cellpadding="4">
                              <tr>
                                <td align="left">Có tổng <b style="color:#F00">[[|total|]]</b></td>
                                <td align="right">[[|paging|]]</td>
                              </tr>
                            </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>        
   </div>
</section>