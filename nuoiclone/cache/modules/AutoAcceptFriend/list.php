<section class="content">
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>TỰ ĐỘNG CHẤP NHẬN KẾT BẠN</h2>
                    </div>
                    <div class="body">
				       <form name="AutoAcceptFriendForm" id="wizard_with_validation" class="ScheduleList" data-action="<?php echo Url::build_current(array('cmd'=>'save_schedules'));?>">                         
                            <h2 class="card-inside-title">Chọn tài khoản: </h2>
                            <select  name="facebook_id" class="form-control show-tick choose-facebook-account" data-action="<?php echo Url::build_current();?>&cmd=get_friend" required><?php
					if(isset($this->map['facebook_id_list']))
					{
						foreach($this->map['facebook_id_list'] as $key=>$value)
						{
							echo '<option value="'.$key.'"';
							echo '>'.$value.'</option>';
							
						}
					}
					?><?php if(isset($_REQUEST['facebook_id']) or isset($this->map['facebook_id'])){?><script type="text/javascript">document.getElementById('facebook_id').value = "<?php echo addslashes(URL::get('facebook_id',isset($this->map['facebook_id'])?$this->map['facebook_id']:''));?>";</script><?php }?></select>
                            <div id="show-users">
                            </div>
                            <div id="input-users">
                            </div>
                            <br>
                            <div><label for="time_continue" style="cursor:pointer">Tiếp nối thời gian các lần gửi trước<input  name="time_continue" id="time_continue" checked="checked" style="position:relative;opacity:1;left:inherit" type ="checkbox" value="<?php echo String::html_normalize(URL::get('time_continue'));?>"/></label> </div>
                            <div><b>Chỉ kết bạn với giới tính là:</b> <select  name="sex" id="sex"><?php
					if(isset($this->map['sex_list']))
					{
						foreach($this->map['sex_list'] as $key=>$value)
						{
							echo '<option value="'.$key.'"';
							echo '>'.$value.'</option>';
							
						}
					}
					?><?php if(isset($_REQUEST['sex']) or isset($this->map['sex'])){?><script type="text/javascript">document.getElementById('sex').value = "<?php echo addslashes(URL::get('sex',isset($this->map['sex'])?$this->map['sex']:''));?>";</script><?php }?></select></div>
                            <h2 class="card-inside-title" id="title-mutual">Đồng ý nếu có lớn hơn hoặc bằng: 0 bạn chung</h2>
                            <div id="mutual"></div>
                            <input type="hidden" name="mutual" value="0">
                            <br>
                            <br>
                            <center>
                            <button type="button" class="btn bg-cyan btn-block btn-lg waves-effect accept-request-friend" style="width:150px;">BẮT ĐẦU</button>
                            </center>
                        <input type="hidden" name="form_block_id" value="<?php echo isset(Module::$current->data)?Module::$current->data['id']:'';?>"/>
			</form >
			
			
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
	$("#result").hide();
	var mutual = document.getElementById('mutual');
    noUiSlider.create(mutual, {
        start: 0,
        connect: 'lower',
        range: {
            'min': 0,
            'max': 100
        }
    });
    mutual.noUiSlider.on('update', function () {
        var val = mutual.noUiSlider.get();
        $id = $(mutual).attr('id');
        $(mutual).parent().find('input[name="'+$id+'"]').val(parseInt(val));
        $("#title-mutual").html('Đồng ý nếu có lớn hơn hoặc bằng: '+parseInt(val)+' bạn chung');
    });
</script>