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
                                <a href="<?php echo Url::build_current(array('cmd'=>'add'));?>" class="btn bg-light-green waves-effect"><i class="fa fa-plus" aria-hidden="true"></i> [[.Add_new.]]</a>                                
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
                                    <th>[[.Name.]]</th>
                                    <th>[[.Category.]]</th>
                                    <th>[[.Type.]]</th>
                                    <th>[[.Status.]]</th>
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
                                    <td>[[|items.name|]]</td>
                                    <td>[[|items.category|]]</td>
                                    <td>[[|items.type|]]</td>
                                    <td style="width: 60px;">
                                        <div class="switch">
                                            <label><input type="checkbox" class="btnActionModuleItem"<?php if([[=items.status=]]){echo ' checked';}?>><span class="lever switch-col-light-blue"></span></label>
                                        </div>
                                    </td>
                                    <td style="width: 80px;">
                                        <div class="btn-group" role="group">
                                            <button type="button" class="btn bg-light-green waves-effect btnActionModuleItem" data-action="delete" data-confirm="<?php echo Portal::language('Are you sure you want to delete this item?');?>"><i class="fa fa-trash" aria-hidden="true"></i></button>
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
