<section class="content">
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>THAM GIA NHÓM THEO LIST UID</h2>
                    </div>
                    <div class="body">
				       <form name="MakeFriendByUIDForm" id="wizard_with_validation" class="ScheduleList" data-action="<?php echo Url::build_current(array('cmd'=>'save_schedules'));?>">                         
                            <h2 class="card-inside-title">Chọn tài khoản: </h2>
                            <select  name="facebook_id" class="form-control show-tick" id="facebook_id"><?php
					if(isset($this->map['facebook_id_list']))
					{
						foreach($this->map['facebook_id_list'] as $key=>$value)
						{
							echo '<option value="'.$key.'"';
							echo '>'.$value.'</option>';
							
						}
					}
					?><?php if(isset($_REQUEST['facebook_id']) or isset($this->map['facebook_id'])){?><script type="text/javascript">document.getElementById('facebook_id').value = "<?php echo addslashes(URL::get('facebook_id',isset($this->map['facebook_id'])?$this->map['facebook_id']:''));?>";</script><?php }?></select>
                            <h2 class="card-inside-title">Danh sách UID nhóm: <small>Mỗi UID cách nhau bởi dầu , (dấu phẩy)</small></h2>
							<textarea  name="list_uid" id="list_uid" class="form-control" rows="8"><?php echo String::html_normalize(URL::get('list_uid',''));?></textarea>
                            <div class="card-inside-title"><label for="time_continue" style="cursor:pointer">Tiếp nối thời gian các lần gửi trước<input  name="time_continue" id="time_continue" checked="checked" style="position:relative;opacity:1;left:inherit" type ="checkbox" value="<?php echo String::html_normalize(URL::get('time_continue'));?>"/></label> </div>
                            <h2 class="card-inside-title" id="title-distance">Khoảng cách giữa 2 lần gửi lời mời: 200 giây</h2>
                            <div id="distance"></div>
                            <input type="hidden" name="distance" value="30">
                            <br>
                            <br>
                            <center>
                            <button type="button" class="btn bg-cyan btn-block btn-lg waves-effect request-friend-by-uid" style="width:150px;">BẮT ĐẦU</button>
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
	autosize($('textarea[name="list_uid"]'));
	var postDistance = document.getElementById('distance');
    noUiSlider.create(postDistance, {
        start: 200,
        connect: 'lower',
        range: {
            'min': 100,
            'max': 3000
        }
    });
	 postDistance.noUiSlider.on('update', function () {
        var val = postDistance.noUiSlider.get();
        $id = $(postDistance).attr('id');
        $(postDistance).parent().find('input[name="'+$id+'"]').val(parseInt(val));
        $("#title-distance").html('Khoảng cách giữa 2 lần gửi lời mời: '+parseInt(val)+' giây');
    });
</script>