<section class="content">
    <div class="container-fluid">
       <form class="formSchedule" action="<?php echo Url::build_current(array('cmd'=>'ajax_post_now'));?>" data-action="<?php echo Url::build_current(array('cmd'=>'ajax_save_schedules'));?>">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="card">
                    <div class="body pt0">
                        <div class="row clearfix">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 mb0">
                                <!-- Nav tabs -->
                                <ul class="nav nav-tabs tab-nav-right tab-col-pink post_type" role="tablist">
                                    <li role="presentation" class="active" data-type="text"><a href="#home_animation_1" data-toggle="tab" aria-expanded="true"><i class="material-icons">view_headline</i> TEXT</a></li>
                                    <li role="presentation" class="" data-type="link"><a href="#profile_animation_1" data-toggle="tab" aria-expanded="false"><i class="material-icons">link</i> LINK</a></li>
                                    <li role="presentation" class="" data-type="image"><a href="#messages_animation_1" data-toggle="tab" aria-expanded="false"><i class="material-icons">camera_alt</i> IMAGE</a></li>
                                    <li role="presentation" class="" data-type="video"><a href="#settings_animation_1" data-toggle="tab" aria-expanded="false"><i class="material-icons">videocam</i> VIDEO</a></li>
                                    <li role="presentation" class="" data-type="images"><a href="#images_animation_1" data-toggle="tab" aria-expanded="false"><i class="material-icons">perm_media</i> MULTI IMAGE</a></li>
                                </ul>                                
                                <!-- Tab panes -->
                                <div class="row mt15">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 mb0">
                                        <label>Message</label>
                                        <div class="form-group">
                                            <div class="form-line p5">
                                                <textarea rows="4" class="form-control no-resize post-message" name="message" placeholder="Write something..."></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>    
                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane active" id="home_animation_1">                                        
                                    </div>
                                    <div role="tabpanel" class="tab-pane" id="profile_animation_1">
                                        <label>Link</label>
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" name="link_url" class="form-control">
                                            </div>
                                        </div>
                                        <label>Picture</label>
                                        <div class="input-group">
                                            <div class="form-line">
                                                <input type="text" name="link_picture" class="form-control">
                                            </div>
                                            <span class="input-group-btn">
                                              <a class="btn bg-red waves-effect dialog-upload"><i class="fa fa-upload" aria-hidden="true"></i> Upload</a>
                                            </span>
                                        </div>
                                        <label>Title</label>
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" name="link_title" class="form-control">
                                            </div>
                                        </div>
                                        <label>Caption</label>
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" name="link_caption" class="form-control">
                                            </div>
                                        </div>
                                        <label>Description</label>
                                        <div class="form-group">
                                            <div class="form-line">
                                                <textarea rows="4" name="link_description" class="form-control no-resize"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div role="tabpanel" class="tab-pane" id="messages_animation_1">
                                        <label>Image</label>
                                        <div class="input-group">
                                            <div class="form-line">
                                                <input type="text" name="image_url" class="form-control">
                                            </div>
                                            <span class="input-group-btn">
                                              <a class="btn bg-red waves-effect dialog-upload"><i class="fa fa-upload" aria-hidden="true"></i> Upload</a>
                                            </span>
                                        </div>
                                    </div>
                                    <div role="tabpanel" class="tab-pane" id="settings_animation_1">
                                        <label>Video URL <em style="font-weight:normal;color:#F00;font-size:10px;">*Đăng được link youtube dạng https://www.youtube.com/watch?v=FN7ALfpGxiI</em></label>
                                        <div class="input-group">
                                            <div class="form-line">
                                                <input type="text" name="video_url" class="form-control">
                                            </div>
                                            <span class="input-group-btn">
                                              <a class="btn bg-red waves-effect dialog-upload"><i class="fa fa-upload" aria-hidden="true"></i> Upload</a>
                                            </span>
                                        </div>
                                    </div>
                                    <div role="tabpanel" class="tab-pane" id="images_animation_1">
                                        <label>Images</label> <span class="col-grey">(add at least two and maximum five images)</span>
                                        <div class="input-group">
                                            <div class="form-line">
                                                <input type="text" name="images_url" class="form-control remote-image" placeholder="Enter image url and then click add image">
                                            </div>
                                            <span class="input-group-btn">
                                              <a class="btn bg-black waves-effect btn-add-image"><i class="fa fa-plus-square" aria-hidden="true"></i> Add image</a>
                                              <a class="btn bg-red waves-effect dialog-uploads"><i class="fa fa-upload" aria-hidden="true"></i> Upload</a>
                                            </span>
                                        </div>
                                        <div class="list-images"></div>
                                    </div>
                                </div>
    
                                <div class="row">
                                    <div class="col-md-12 col-xs-12">
                                        <b>Delay (seconds)</b>
                                        <select name="deplay_post_now" class="form-control deplay_post_now" id="deplay_post_now"></select>
                                    </div>
                                </div>
    
                                <div class="row">
                                    <div class="col-md-12 mb0">
                                        <button type="button" class="btn bg-grey waves-effect btnSavePost" data-type="post" data-action="<?php echo Url::build_current(array('cmd'=>'ajax_save'));?>"><i class="fa fa-floppy-o" aria-hidden="true"></i> Lưu mẫu </button>
                                        <div class="btn-group right" role="group">
                                            <button type="button" class="btn bg-light-green waves-effect btnPostnow"><i class="fa fa-paper-plane-o" aria-hidden="true"></i> Đăng ngay</button>
                                            <button type="button" class="btn bg-light-green waves-effect open-schedule" style="margin-left:2px;"><i class="fa fa-calendar-check-o" aria-hidden="true"></i> Lên lịch đăng</button>
                                        </div>
                                    </div>
                                </div>    
                                <div class="row mt15 box-post-schedule">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb0">
                                        <div class="custom-card">
                                            <div class="body">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <b><i class="fa fa-clock-o" aria-hidden="true"></i> [[.Time_post.]]</b>
                                                        <div class="input-group mb0">
                                                            <div class="form-line">
                                                                <input type="text" name="time_post" class="form-control form-datetime">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6 col-xs-6">
                                                        <b><i class="fa fa-bullseye" aria-hidden="true"></i> [[.Delay.]] ([[.minutes.]])</b>
                                                        <div class="input-group mb0">
                                                            <select name="deplay" class="form-control" id="deplay"></select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <b><i class="fa fa-pause-circle-o" aria-hidden="true"></i> [[.Auto_pause_after_complete.]]</b>
                                                        <div class="input-group mb0">
                                                            <select name="auto_pause" class="form-control"></select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <b><i class="fa fa-clock-o" aria-hidden="true"></i> [[.Time_pause.]]</b>
                                                        <select name="time_pause" class="form-control"></select>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <b><i class="fa fa-repeat" aria-hidden="true"></i> Repeat post</b>
                                                        <div class="input-group mb0">
                                                            <select name="auto_repeat" class="form-control">
                                                                <option value="0">No</option>
                                                                <option value="3600">1 Hours</option>
                                                                <option value="7200">2 Hours</option>
                                                                <option value="10800">3 Hours</option>
                                                                <option value="14400">4 Hours</option>
                                                                <option value="18000">5 Hours</option>
                                                                <option value="21600">6 Hours</option>
                                                                <option value="25200">7 Hours</option>
                                                                <option value="28800">8 Hours</option>
                                                                <option value="32400">9 Hours</option>
                                                                <option value="36000">10 Hours</option>
                                                                <option value="39600">11 Hours</option>
                                                                <option value="43200">12 Hours</option>
                                                                <option value="46800">13 Hours</option>
                                                                <option value="50400">14 Hours</option>
                                                                <option value="54000">15 Hours</option>
                                                                <option value="57600">16 Hours</option>
                                                                <option value="61200">17 Hours</option>
                                                                <option value="64800">18 Hours</option>
                                                                <option value="68400">19 Hours</option>
                                                                <option value="72000">20 Hours</option>
                                                                <option value="75600">21 Hours</option>
                                                                <option value="79200">22 Hours</option>
                                                                <option value="82800">23 Hours</option>
                                                                <option value="86400">1 Days</option>
                                                                <option value="172800">2 Days</option>
                                                                <option value="259200">3 Days</option>
                                                                <option value="345600">4 Days</option>
                                                                <option value="432000">5 Days</option>
                                                                <option value="518400">6 Days</option>
                                                                <option value="604800">7 Days</option>
                                                                <option value="691200">8 Days</option>
                                                                <option value="777600">9 Days</option>
                                                                <option value="864000">10 Days</option>
                                                                <option value="950400">11 Days</option>
                                                                <option value="1036800">12 Days</option>
                                                                <option value="1123200">13 Days</option>
                                                                <option value="1209600">14 Days</option>
                                                                <option value="1296000">15 Days</option>
                                                                <option value="1382400">16 Days</option>
                                                                <option value="1468800">17 Days</option>
                                                                <option value="1555200">18 Days</option>
                                                                <option value="1641600">19 Days</option>
                                                                <option value="1728000">20 Days</option>
                                                                <option value="1814400">21 Days</option>
                                                                <option value="1900800">22 Days</option>
                                                                <option value="1987200">23 Days</option>
                                                                <option value="2073600">24 Days</option>
                                                                <option value="2160000">25 Days</option>
                                                                <option value="2246400">26 Days</option>
                                                                <option value="2332800">27 Days</option>
                                                                <option value="2419200">28 Days</option>
                                                                <option value="2505600">29 Days</option>
                                                                <option value="2592000">30 Days</option>                                                                
                                                        </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <b><i class="fa fa-calendar" aria-hidden="true"></i> [[.End_day.]]</b>
                                                        <div class="input-group mb0">
                                                            <div class="form-line">
                                                                <input type="text" name="repeat_end" class="form-control form-date">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
    
                                                <div class="row">
                                                    <div class="col-md-12 mb0">
                                                        <div class="btn-group" role="group">
                                                            <button type="button" class="btn bg-light-blue waves-effect btnSaveSchedules"><i class="fa fa-calendar-check-o" aria-hidden="true"></i> Lưu lên lịch</button>
                                                        </div>
                                                    </div>
                                                </div>
    
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="footer">
                        <div class="btn-group" role="group">
                            <button type="button" class="btn bg-light-blue waves-effect btnPausePost"><i class="fa fa-pause" aria-hidden="true"></i> [[.Pause.]]</button>
                            <button type="button" class="btn bg-light-blue waves-effect btnResumePost"><i class="fa fa-repeat" aria-hidden="true"></i> [[.Resume.]]</button>
                        </div>
                        <div class="countTimer right pt5">
                            <div class="countDown col-black"><b>[[.Time_left.]]: <span class="col-red">--:--</span></b></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div> 
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                            <i class="fa fa-desktop" aria-hidden="true"></i> Xem trước 
                        </h2>
                    </div>
                    <div class="body p0">
                        <div class="post-preview">
                            <div class="preview-header">
                                <img src="skins/news/images/avatar.png">
                                <div class="box-info">
                                    <div class="title"><?php echo Session::get('user_data','full_name');?></div>
                                    <div class="desc">Just now <i class="fa fa-globe" aria-hidden="true"></i></div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="preview-content">
                                <div class="data-message">
                                    <div class="line-no-text"></div><div class="line-no-text"></div><div class="line-no-text w50"></div>
                                </div>
                                <div class="preview-box preview-box-2 box-hide">
                                    <div class="box-preview-link">
                                        <div class="bg-grey preview-box-image"></div>
                                        <div class="preview-footer-link">
                                            <div class="description-block">
                                                <h5 class="description-header preview-box-title"><div class="line-no-text"></div></h5>
                                                <span class="description-text preview-box-desc"><div class="line-no-text"></div><div class="line-no-text w50"></div></span>
                                                <span class="description-caption preview-box-caption"><div class="line-no-text w25"></div></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="preview-box preview-box-3 box-hide">
                                    <div class="box-preview-link">
                                        <div class="bg-grey preview-box-image"></div>
                                    </div>
                                </div>
                                <div class="preview-box preview-box-4 box-hide">
                                    <div class="box-preview-link">
                                        <div class="bg-grey preview-box-video">
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="preview-box preview-box-5 box-hide">
                                    <div class="box-preview-link">
                                        <img src="skins/news/images/preview5.png" style="width: 100%;">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                    <div class="card">
                    <div class="body">
                        <select name="getSavePost" class="form-control mr5 getSavePost" data-action="?page=save_post&cmd=ajax_get_save"></select>
                    </div>
                </div>
            </div>    
            <div class="clearfix"></div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                            <i class="fa fa-bars" aria-hidden="true"></i> Chọn Pages/Groups/Profiles </h2>
                    </div>
                    <div class="header">
                      	<small style="color:#F00">Trên tài khoản Facebook có quản lý nhóm/fanpage mà trên phần mềm không có vui lòng nhấn Group/Page/Friend trong <a href="<?php echo Url::build('facebook_accounts');?>" target="_blank">tài khoản facebook</a> tương ứng để cập nhật lại.</small>
                        <div class="form-inline form-manage-groups">
                            <div class="form-group wa">
                                <select name="account" class="form-control mr5 filter_account"></select>
                            </div>
                            <div class="form-group wa">
                                <select name="categories" class="form-control mr5 categories" id="categories" data-action="?page=save_post&cmd=ajax_get_category"></select>
                            </div> 
                            <div class="form-group wa mr15">
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn bg-blue-grey waves-effect btnAddCategory" data-type="post" data-toggle="tooltip" title="Add new category" data-action="<?php echo Url::build_current(array('cmd'=>'ajax_add_category'));?>"><i class="fa fa-plus" aria-hidden="true"></i></button>
                                    <button type="button" class="btn bg-blue-grey waves-effect btnUpdateCategory" data-type="post" data-toggle="tooltip" title="Update category" data-action="<?php echo Url::build_current(array('cmd'=>'ajax_update_category'));?>"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
                                    <button type="button" class="btn bg-blue-grey waves-effect btnDeleteCategory" data-toggle="tooltip" title="Remove category selected" data-action="<?php echo Url::build_current(array('cmd'=>'ajax_delete_category'));?>"> <i class="fa fa-trash-o" aria-hidden="true"></i></button>
                                </div>
                            </div>
                            <div class="form-group wa" style="margin-top: 8px;">
                                <input type="checkbox" id="md_checkbox_profile" class="filled-in chk-col-deep-orange filter_profile" checked="" value="profile">
                                <label class="mb0 mr15" for="md_checkbox_profile">[[.All_Profiles.]]</label>
    
                                <input type="checkbox" id="md_checkbox_group" class="filled-in chk-col-deep-orange filter_group" checked="" value="group">
                                <label class="mb0 mr15" for="md_checkbox_group">[[.All_Groups.]]</label>
                                
                                <input type="checkbox" id="md_checkbox_page" class="filled-in chk-col-deep-orange filter_page" checked="" value="page">
                                <label class="mb0 mr15" for="md_checkbox_page">[[.All_Pages.]]</label>
    
                                <input type="checkbox" id="md_checkbox_likedpage" class="filled-in chk-col-deep-orange filter_likedpage" checked="" value="liked">
                                <label class="m0" for="md_checkbox_likedpage">[[.All_Liked_Pages.]]</label>
                            </div>
                        </div>
                    </div>
                    <div class="body p0">
                        <table class="table table-bordered table-striped table-hover js-dataTable dataTable mb0">
                            <thead>
                                <tr>
                                    <th style="width: 10px;">
                                        <input type="checkbox" id="md_checkbox_all" class="filled-in chk-col-red checkAll">
                                        <label class="p0 m0" for="md_checkbox_all">&nbsp;</label>
                                    </th>
                                    <th>[[.Account.]]</th>
                                    <th>[[.Name.]]</th>
                                    <th>[[.Type.]]</th>
                                    <th>[[.Privacy.]]</th>
                                    <th>[[.Link.]]</th>
                                    <th>[[.Process.]]</th>
                                </tr>
                            </thead>
                            <tbody>
							<!--LIST:items-->
                            <tr class="post-pending">
                                <td>
                                    <input type="checkbox" name="id[]" id="md_checkbox_[[|items.fid|]]" class="filled-in chk-col-red checkItem" value="<?php echo "profile{-}".[[=items.id=]]."{-}".[[=items.fullname=]]."{-}".[[=items.fid=]]."{-}".[[=items.fullname=]]."{-}1"?>">
                                    <label class="p0 m0" for="md_checkbox_[[|items.fid|]]">&nbsp;</label>
                                </td>
                                <td>[[|items.username|]]</td>
                                <td>[[|items.fullname|]]</td>
                                <td>profile</td>
                                <td>______</td>
                                <td><a href="https://facebook.com/[[|items.fid|]]" target="_blank"><i class="fa fa-link" aria-hidden="true"></i> [[.Visit_profile.]]</a></td>
                                <td class="status-post"></td>
                            </tr>
                            	<!--LIST:items.groups-->
								<?php 
                                    $type = ([[=items.groups.privacy=]] == "CLOSED" || [[=items.groups.privacy=]] == "SECRET")?0:1;
                                ?>
                                <tr class="post-pending">
                                    <td>
                                        <input type="checkbox" name="id[]" id="md_checkbox_[[|items.groups.pid|]]" class="filled-in chk-col-red checkItem" value="<?php echo [[=items.groups.type=]]."{-}".[[=items.id=]]."{-}".[[=items.fullname=]]."{-}".[[=items.groups.pid=]]."{-}".[[=items.groups.name=]]."{-}".$type?>">
                                        <label class="p0 m0" for="md_checkbox_[[|items.groups.pid|]]">&nbsp;</label>
                                    </td>
                                    <td>[[|items.username|]]</td>
                                    <td>[[|items.groups.name|]]</td>
                                    <td>[[|items.groups.type|]]</td>
                                    <td><?php echo ([[=items.groups.privacy=]] != "")?"":('______');?>
                                        <?php if([[=items.groups.privacy=]] != ""){?>
                                            <i class="fa fa-eye<?php echo [[=items.groups.privacy=]] != "OPEN"?"-slash col-red":" col-green";?>" aria-hidden="true"></i> [[|items.groups.privacy|]]
                                        <?php }?>
                                    </td>
                                    <td><a href="https://facebook.com/[[|items.groups.pid|]]" target="_blank"><i class="fa fa-link" aria-hidden="true"></i> <?php echo ([[=items.groups.type=]]=='page'?Portal::language('Visit_page'):Portal::language('Visit_group'));?></a></td>
                                    <td class="status-post"></td>
                                </tr>
                            	<!--/LIST:items.groups-->                                
							<!--/LIST:items-->
                           </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <div class="modal fade" id="modal-update-category" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header bg-blue-grey">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">[[.Select_category.]]</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <select name="category_id" class="form-control mr5 category_id"></select>
                    </div>   
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary btn-modal-update-category"><i class="fa fa-floppy-o" aria-hidden="true"></i> [[.Update.]]</button>
                </div>
            </div>
        </div>
    </div>       
    <div class="modal fade" id="modal-category" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header bg-blue-grey">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">title</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <input type="text" class="form-control category_title"/>
                    </div>   
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary btn-modal-add-category"><i class="fa fa-floppy-o" aria-hidden="true"></i> [[.Add_new.]]</button>
                </div>
            </div>
        </div>
    </div>
  </div>
</section>
<style>
.nav > li > a {
    position: relative;
    display: block;
    padding: 10px 12px;
}
</style>