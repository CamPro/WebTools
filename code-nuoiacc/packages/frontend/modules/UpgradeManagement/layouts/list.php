<section class="content">
    <div class="container-fluid">
       <form name="UserManager" class="ScheduleList" method="post" action="<?php echo Url::build_current(array('cmd'=>'ajax_action_multiple'));?>">
            <div class="row">
                <div class="clearfix"></div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2><i class="fa fa-user" aria-hidden="true"></i> Quản lý nâng cấp tài khoản</h2>
                        </div>
                        <div class="header">
                            <div class="form-inline">
                                <div class="btn-group" role="group">
                                    <div class="btn-group" role="group">
                                        <button type="button" class="btn bg-red waves-effect dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">[[.Action.]]<span class="caret"></span></button>
                                        <ul class="dropdown-menu">
                                            <li><a class="btnActionModule" data-action="delete" data-confirm="Bạn có chắc chắn muốn xóa không?" href="javascript:void(0);">Xóa</a></li>
                                        </ul>
                                    </div>
                                    <a href="<?php echo Url::build_current(array('cmd'=>'add'));?>" class="btn bg-light-green waves-effect"><i class="fa fa-plus" aria-hidden="true"></i> Thêm mới</a>
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
                                        <th>Thành viên</th> 
                                        <th>Số lượng tài khoản FB</th> 
                                        <th>Số tháng</th>
                                        <th>Ngày nâng cấp</th>
                                        <th>Thành tiền</th>
                                        <th>[[.Option.]]</th>
                                    </tr>
                                </thead>
                                <tbody>
									<!--LIST:items-->
									<tr class="pending" data-action="<?php echo Url::build_current(array('cmd'=>'ajax_action_item'));?>" data-id="[[|items.id|]]">
										<td>
											<input type="checkbox" name="id[]" id="md_checkbox_[[|items.id|]]" class="filled-in chk-col-red checkItem" value="[[|items.id|]]">
											<label class="p0 m0" for="md_checkbox_[[|items.id|]]">&nbsp;</label>
										</td>
										<td>[[|items.user_id|]]</td>
										<td>[[|items.account_quantity|]]</td>
										<td>[[|items.month_quantity|]]</td>
										<td>[[|items.date|]]</td>
                                        <td><?php echo System::display_number([[=items.total_price=]]);?></td>
										<td style="width: 80px;">
											<div class="btn-group" role="group">
												<a href="<?php echo Url::build_current(array('cmd'=>'edit','id'=>[[=items.id=]]));?>" class="btn bg-light-green waves-effect"><i class="fa fa-pencil" aria-hidden="true"></i></a>
												<button type="button" class="btn bg-light-green waves-effect btnActionModuleItem" data-action="delete" data-confirm="Bạn có chắc chắn muốn xóa không?"><i class="fa fa-trash" aria-hidden="true"></i></button>
											</div>
										</td>
									</tr>
									<!--/LIST:items-->
                                </tbody>
                            </table>   
                        </div>
                    </div>
                </div>
            </div>
		</form>        
	</div>
</section>

