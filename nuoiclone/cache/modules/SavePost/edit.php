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
                                        <select  name="deplay_post_now" class="form-control deplay_post_now" id="deplay_post_now"><?php
					if(isset($this->map['deplay_post_now_list']))
					{
						foreach($this->map['deplay_post_now_list'] as $key=>$value)
						{
							echo '<option value="'.$key.'"';
							echo '>'.$value.'</option>';
							
						}
					}
					?><?php if(isset($_REQUEST['deplay_post_now']) or isset($this->map['deplay_post_now'])){?><script type="text/javascript">document.getElementById('deplay_post_now').value = "<?php echo addslashes(URL::get('deplay_post_now',isset($this->map['deplay_post_now'])?$this->map['deplay_post_now']:''));?>";</script><?php }?></select>
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
                                                        <b><i class="fa fa-clock-o" aria-hidden="true"></i> <?php echo Portal::language('Time_post');?></b>
                                                        <div class="input-group mb0">
                                                            <div class="form-line">
                                                                <input type="text" name="time_post" class="form-control form-datetime">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6 col-xs-6">
                                                        <b><i class="fa fa-bullseye" aria-hidden="true"></i> <?php echo Portal::language('Delay');?> (<?php echo Portal::language('minutes');?>)</b>
                                                        <div class="input-group mb0">
                                                            <select  name="deplay" class="form-control" id="deplay"><?php
					if(isset($this->map['deplay_list']))
					{
						foreach($this->map['deplay_list'] as $key=>$value)
						{
							echo '<option value="'.$key.'"';
							echo '>'.$value.'</option>';
							
						}
					}
					?><?php if(isset($_REQUEST['deplay']) or isset($this->map['deplay'])){?><script type="text/javascript">document.getElementById('deplay').value = "<?php echo addslashes(URL::get('deplay',isset($this->map['deplay'])?$this->map['deplay']:''));?>";</script><?php }?></select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <b><i class="fa fa-pause-circle-o" aria-hidden="true"></i> <?php echo Portal::language('Auto_pause_after_complete');?></b>
                                                        <div class="input-group mb0">
                                                            <select  name="auto_pause" class="form-control"><?php
					if(isset($this->map['auto_pause_list']))
					{
						foreach($this->map['auto_pause_list'] as $key=>$value)
						{
							echo '<option value="'.$key.'"';
							echo '>'.$value.'</option>';
							
						}
					}
					?><?php if(isset($_REQUEST['auto_pause']) or isset($this->map['auto_pause'])){?><script type="text/javascript">document.getElementById('auto_pause').value = "<?php echo addslashes(URL::get('auto_pause',isset($this->map['auto_pause'])?$this->map['auto_pause']:''));?>";</script><?php }?></select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <b><i class="fa fa-clock-o" aria-hidden="true"></i> <?php echo Portal::language('Time_pause');?></b>
                                                        <select  name="time_pause" class="form-control"><?php
					if(isset($this->map['time_pause_list']))
					{
						foreach($this->map['time_pause_list'] as $key=>$value)
						{
							echo '<option value="'.$key.'"';
							echo '>'.$value.'</option>';
							
						}
					}
					?><?php if(isset($_REQUEST['time_pause']) or isset($this->map['time_pause'])){?><script type="text/javascript">document.getElementById('time_pause').value = "<?php echo addslashes(URL::get('time_pause',isset($this->map['time_pause'])?$this->map['time_pause']:''));?>";</script><?php }?></select>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <b><i class="fa fa-repeat" aria-hidden="true"></i> Repeat post</b>
                                                        <div class="input-group mb0">
                                                            <select  name="auto_repeat" class="form-control"><?php
					if(isset($this->map['auto_repeat_list']))
					{
						foreach($this->map['auto_repeat_list'] as $key=>$value)
						{
							echo '<option value="'.$key.'"';
							echo '>'.$value.'</option>';
							
						}
					}
					?><?php if(isset($_REQUEST['auto_repeat']) or isset($this->map['auto_repeat'])){?><script type="text/javascript">document.getElementById('auto_repeat').value = "<?php echo addslashes(URL::get('auto_repeat',isset($this->map['auto_repeat'])?$this->map['auto_repeat']:''));?>";</script><?php }?>
                                                                <option value="0"  <?php 
						if('0' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>No</option>
                                                                <option value="3600"  <?php 
						if('3600' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>1 Hours</option>
                                                                <option value="7200"  <?php 
						if('7200' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>2 Hours</option>
                                                                <option value="10800"  <?php 
						if('10800' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>3 Hours</option>
                                                                <option value="14400"  <?php 
						if('14400' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>4 Hours</option>
                                                                <option value="18000"  <?php 
						if('18000' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>5 Hours</option>
                                                                <option value="21600"  <?php 
						if('21600' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>6 Hours</option>
                                                                <option value="25200"  <?php 
						if('25200' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>7 Hours</option>
                                                                <option value="28800"  <?php 
						if('28800' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>8 Hours</option>
                                                                <option value="32400"  <?php 
						if('32400' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>9 Hours</option>
                                                                <option value="36000"  <?php 
						if('36000' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>10 Hours</option>
                                                                <option value="39600"  <?php 
						if('39600' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>11 Hours</option>
                                                                <option value="43200"  <?php 
						if('43200' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>12 Hours</option>
                                                                <option value="46800"  <?php 
						if('46800' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>13 Hours</option>
                                                                <option value="50400"  <?php 
						if('50400' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>14 Hours</option>
                                                                <option value="54000"  <?php 
						if('54000' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>15 Hours</option>
                                                                <option value="57600"  <?php 
						if('57600' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>16 Hours</option>
                                                                <option value="61200"  <?php 
						if('61200' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>17 Hours</option>
                                                                <option value="64800"  <?php 
						if('64800' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>18 Hours</option>
                                                                <option value="68400"  <?php 
						if('68400' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>19 Hours</option>
                                                                <option value="72000"  <?php 
						if('72000' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>20 Hours</option>
                                                                <option value="75600"  <?php 
						if('75600' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>21 Hours</option>
                                                                <option value="79200"  <?php 
						if('79200' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>22 Hours</option>
                                                                <option value="82800"  <?php 
						if('82800' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>23 Hours</option>
                                                                <option value="86400"  <?php 
						if('86400' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>1 Days</option>
                                                                <option value="172800"  <?php 
						if('172800' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>2 Days</option>
                                                                <option value="259200"  <?php 
						if('259200' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>3 Days</option>
                                                                <option value="345600"  <?php 
						if('345600' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>4 Days</option>
                                                                <option value="432000"  <?php 
						if('432000' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>5 Days</option>
                                                                <option value="518400"  <?php 
						if('518400' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>6 Days</option>
                                                                <option value="604800"  <?php 
						if('604800' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>7 Days</option>
                                                                <option value="691200"  <?php 
						if('691200' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>8 Days</option>
                                                                <option value="777600"  <?php 
						if('777600' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>9 Days</option>
                                                                <option value="864000"  <?php 
						if('864000' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>10 Days</option>
                                                                <option value="950400"  <?php 
						if('950400' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>11 Days</option>
                                                                <option value="1036800"  <?php 
						if('1036800' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>12 Days</option>
                                                                <option value="1123200"  <?php 
						if('1123200' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>13 Days</option>
                                                                <option value="1209600"  <?php 
						if('1209600' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>14 Days</option>
                                                                <option value="1296000"  <?php 
						if('1296000' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>15 Days</option>
                                                                <option value="1382400"  <?php 
						if('1382400' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>16 Days</option>
                                                                <option value="1468800"  <?php 
						if('1468800' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>17 Days</option>
                                                                <option value="1555200"  <?php 
						if('1555200' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>18 Days</option>
                                                                <option value="1641600"  <?php 
						if('1641600' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>19 Days</option>
                                                                <option value="1728000"  <?php 
						if('1728000' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>20 Days</option>
                                                                <option value="1814400"  <?php 
						if('1814400' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>21 Days</option>
                                                                <option value="1900800"  <?php 
						if('1900800' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>22 Days</option>
                                                                <option value="1987200"  <?php 
						if('1987200' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>23 Days</option>
                                                                <option value="2073600"  <?php 
						if('2073600' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>24 Days</option>
                                                                <option value="2160000"  <?php 
						if('2160000' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>25 Days</option>
                                                                <option value="2246400"  <?php 
						if('2246400' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>26 Days</option>
                                                                <option value="2332800"  <?php 
						if('2332800' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>27 Days</option>
                                                                <option value="2419200"  <?php 
						if('2419200' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>28 Days</option>
                                                                <option value="2505600"  <?php 
						if('2505600' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>29 Days</option>
                                                                <option value="2592000"  <?php 
						if('2592000' == URL::get('auto_repeat',$this->map['auto_repeat']))
						{
							echo ' selected';
						}?>>30 Days</option>                                                                
                                                        </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <b><i class="fa fa-calendar" aria-hidden="true"></i> <?php echo Portal::language('End_day');?></b>
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
                            <button type="button" class="btn bg-light-blue waves-effect btnPausePost"><i class="fa fa-pause" aria-hidden="true"></i> <?php echo Portal::language('Pause');?></button>
                            <button type="button" class="btn bg-light-blue waves-effect btnResumePost"><i class="fa fa-repeat" aria-hidden="true"></i> <?php echo Portal::language('Resume');?></button>
                        </div>
                        <div class="countTimer right pt5">
                            <div class="countDown col-black"><b><?php echo Portal::language('Time_left');?>: <span class="col-red">--:--</span></b></div>
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
                        <select  name="getSavePost" class="form-control mr5 getSavePost" data-action="?page=save_post&cmd=ajax_get_save"><?php
					if(isset($this->map['getSavePost_list']))
					{
						foreach($this->map['getSavePost_list'] as $key=>$value)
						{
							echo '<option value="'.$key.'"';
							echo '>'.$value.'</option>';
							
						}
					}
					?><?php if(isset($_REQUEST['getSavePost']) or isset($this->map['getSavePost'])){?><script type="text/javascript">document.getElementById('getSavePost').value = "<?php echo addslashes(URL::get('getSavePost',isset($this->map['getSavePost'])?$this->map['getSavePost']:''));?>";</script><?php }?></select>
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
                                <select  name="account" class="form-control mr5 filter_account"><?php
					if(isset($this->map['account_list']))
					{
						foreach($this->map['account_list'] as $key=>$value)
						{
							echo '<option value="'.$key.'"';
							echo '>'.$value.'</option>';
							
						}
					}
					?><?php if(isset($_REQUEST['account']) or isset($this->map['account'])){?><script type="text/javascript">document.getElementById('account').value = "<?php echo addslashes(URL::get('account',isset($this->map['account'])?$this->map['account']:''));?>";</script><?php }?></select>
                            </div>
                            <div class="form-group wa">
                                <select  name="categories" class="form-control mr5 categories" id="categories" data-action="?page=save_post&cmd=ajax_get_category"><?php
					if(isset($this->map['categories_list']))
					{
						foreach($this->map['categories_list'] as $key=>$value)
						{
							echo '<option value="'.$key.'"';
							echo '>'.$value.'</option>';
							
						}
					}
					?><?php if(isset($_REQUEST['categories']) or isset($this->map['categories'])){?><script type="text/javascript">document.getElementById('categories').value = "<?php echo addslashes(URL::get('categories',isset($this->map['categories'])?$this->map['categories']:''));?>";</script><?php }?></select>
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
                                <label class="mb0 mr15" for="md_checkbox_profile"><?php echo Portal::language('All_Profiles');?></label>
    
                                <input type="checkbox" id="md_checkbox_group" class="filled-in chk-col-deep-orange filter_group" checked="" value="group">
                                <label class="mb0 mr15" for="md_checkbox_group"><?php echo Portal::language('All_Groups');?></label>
                                
                                <input type="checkbox" id="md_checkbox_page" class="filled-in chk-col-deep-orange filter_page" checked="" value="page">
                                <label class="mb0 mr15" for="md_checkbox_page"><?php echo Portal::language('All_Pages');?></label>
    
                                <input type="checkbox" id="md_checkbox_likedpage" class="filled-in chk-col-deep-orange filter_likedpage" checked="" value="liked">
                                <label class="m0" for="md_checkbox_likedpage"><?php echo Portal::language('All_Liked_Pages');?></label>
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
                                    <th><?php echo Portal::language('Account');?></th>
                                    <th><?php echo Portal::language('Name');?></th>
                                    <th><?php echo Portal::language('Type');?></th>
                                    <th><?php echo Portal::language('Privacy');?></th>
                                    <th><?php echo Portal::language('Link');?></th>
                                    <th><?php echo Portal::language('Process');?></th>
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
                            <tr class="post-pending">
                                <td>
                                    <input type="checkbox" name="id[]" id="md_checkbox_<?php echo $this->map['items']['current']['fid'];?>" class="filled-in chk-col-red checkItem" value="<?php echo "profile{-}".$this->map['items']['current']['id']."{-}".$this->map['items']['current']['fullname']."{-}".$this->map['items']['current']['fid']."{-}".$this->map['items']['current']['fullname']."{-}1"?>">
                                    <label class="p0 m0" for="md_checkbox_<?php echo $this->map['items']['current']['fid'];?>">&nbsp;</label>
                                </td>
                                <td><?php echo $this->map['items']['current']['username'];?></td>
                                <td><?php echo $this->map['items']['current']['fullname'];?></td>
                                <td>profile</td>
                                <td>______</td>
                                <td><a href="https://facebook.com/<?php echo $this->map['items']['current']['fid'];?>" target="_blank"><i class="fa fa-link" aria-hidden="true"></i> <?php echo Portal::language('Visit_profile');?></a></td>
                                <td class="status-post"></td>
                            </tr>
                            	<?php
					if(isset($this->map['items']['current']['groups']) and is_array($this->map['items']['current']['groups']))
					{
						foreach($this->map['items']['current']['groups'] as $key2=>&$item2)
						{
							if($key2!='current')
							{
								$this->map['items']['current']['groups']['current'] = &$item2;?>
								<?php 
                                    $type = ($this->map['items']['current']['groups']['current']['privacy'] == "CLOSED" || $this->map['items']['current']['groups']['current']['privacy'] == "SECRET")?0:1;
                                ?>
                                <tr class="post-pending">
                                    <td>
                                        <input type="checkbox" name="id[]" id="md_checkbox_<?php echo $this->map['items']['current']['groups']['current']['pid'];?>" class="filled-in chk-col-red checkItem" value="<?php echo $this->map['items']['current']['groups']['current']['type']."{-}".$this->map['items']['current']['id']."{-}".$this->map['items']['current']['fullname']."{-}".$this->map['items']['current']['groups']['current']['pid']."{-}".$this->map['items']['current']['groups']['current']['name']."{-}".$type?>">
                                        <label class="p0 m0" for="md_checkbox_<?php echo $this->map['items']['current']['groups']['current']['pid'];?>">&nbsp;</label>
                                    </td>
                                    <td><?php echo $this->map['items']['current']['username'];?></td>
                                    <td><?php echo $this->map['items']['current']['groups']['current']['name'];?></td>
                                    <td><?php echo $this->map['items']['current']['groups']['current']['type'];?></td>
                                    <td><?php echo ($this->map['items']['current']['groups']['current']['privacy'] != "")?"":('______');?>
                                        <?php if($this->map['items']['current']['groups']['current']['privacy'] != ""){?>
                                            <i class="fa fa-eye<?php echo $this->map['items']['current']['groups']['current']['privacy'] != "OPEN"?"-slash col-red":" col-green";?>" aria-hidden="true"></i> <?php echo $this->map['items']['current']['groups']['current']['privacy'];?>
                                        <?php }?>
                                    </td>
                                    <td><a href="https://facebook.com/<?php echo $this->map['items']['current']['groups']['current']['pid'];?>" target="_blank"><i class="fa fa-link" aria-hidden="true"></i> <?php echo ($this->map['items']['current']['groups']['current']['type']=='page'?Portal::language('Visit_page'):Portal::language('Visit_group'));?></a></td>
                                    <td class="status-post"></td>
                                </tr>
                            	
							
						<?php
							}
						}
					unset($this->map['items']['current']['groups']['current']);
					} ?>                                
							
							
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
			
			
    <div class="modal fade" id="modal-update-category" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header bg-blue-grey">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel"><?php echo Portal::language('Select_category');?></h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <select  name="category_id" class="form-control mr5 category_id"><?php
					if(isset($this->map['category_id_list']))
					{
						foreach($this->map['category_id_list'] as $key=>$value)
						{
							echo '<option value="'.$key.'"';
							echo '>'.$value.'</option>';
							
						}
					}
					?><?php if(isset($_REQUEST['category_id']) or isset($this->map['category_id'])){?><script type="text/javascript">document.getElementById('category_id').value = "<?php echo addslashes(URL::get('category_id',isset($this->map['category_id'])?$this->map['category_id']:''));?>";</script><?php }?></select>
                    </div>   
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary btn-modal-update-category"><i class="fa fa-floppy-o" aria-hidden="true"></i> <?php echo Portal::language('Update');?></button>
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
                    <button type="button" class="btn btn-primary btn-modal-add-category"><i class="fa fa-floppy-o" aria-hidden="true"></i> <?php echo Portal::language('Add_new');?></button>
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