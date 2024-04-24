<section class="content">
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>TỰ ĐỘNG GỬI LỜI MỜI KẾT BẠN</h2>
                    </div>
                    <div class="body">
				       <form name="AutoMakeFriendForm" id="wizard_with_validation" class="ScheduleList" data-action="<?php echo Url::build_current(array('cmd'=>'save_schedules'));?>">                         
                            <h2 class="card-inside-title">Chọn tài khoản: </h2>
                            <select  name="facebook_id" class="form-control show-tick select-facebook-account" data-action="<?php echo Url::build_current();?>&cmd=get_friend" required><?php
					if(isset($this->map['facebook_id_list']))
					{
						foreach($this->map['facebook_id_list'] as $key=>$value)
						{
							echo '<option value="'.$key.'"';
							echo '>'.$value.'</option>';
							
						}
					}
					?><?php if(isset($_REQUEST['facebook_id']) or isset($this->map['facebook_id'])){?><script type="text/javascript">document.getElementById('facebook_id').value = "<?php echo addslashes(URL::get('facebook_id',isset($this->map['facebook_id'])?$this->map['facebook_id']:''));?>";</script><?php }?></select>
                            <h2 class="card-inside-title">Lấy danh sách từ: </h2>
                            <input  name="type" id="user" class="with-gap radio-col-black" value="user" checked="checked" type ="radio" value="<?php echo String::html_normalize(URL::get('type'));?>"/>
                            <label for="user" class="m-r-20">BẠN BÈ</label>
                            <input  name="type" id="follower" class="with-gap radio-col-black" value="follower" type ="radio" value="<?php echo String::html_normalize(URL::get('type'));?>"/>
                            <label for="follower" class="m-r-20">NGƯỜI THEO DÕI</label>
                            <input  name="type" id="group" class="with-gap radio-col-black" value="group" type ="radio" value="<?php echo String::html_normalize(URL::get('type'));?>"/>
                            <label for="group">THÀNH VIÊN NHÓM</label>
                            <input  name="type" id="post" class="with-gap radio-col-black" value="post" type ="radio" value="<?php echo String::html_normalize(URL::get('type'));?>"/>
                            <label for="post">BÀI ĐĂNG</label>
                            <h2 class="card-inside-title">Facebook ID: </h2>
                            <div class="input-group" style="width: 300px;margin-bottom: 0px;">
                                <span class="input-group-addon">
                                    <i class="material-icons">search</i>
                                </span>
                                <div class="form-line">
                                    <input  type="text" name="link" class="form-control date" placeholder="Nhập Facebook ID">
                                </div>
                                <span class="input-group-addon">
                                    <button type="button" id="search" class="btn btn-primary waves-effect"  data-action="<?php echo Url::build_current();?>&cmd=get_friend_by_id" style="cursor: pointer;">LẤY DANH SÁCH</button>
                                </span>
                            </div>
                            <div style="margin:6px 0 10px 0"><small>* Mẹo: Nếu không lấy được ID từ link. Hãy vào <a href="http://findmyfbid.com/" target="_blank"><b>trang này</b></a> để lấy ID rồi dán vào khung bên trên nhé</small></div>
                            <div class="loading"></div>
                            <div id="my-friends">
                            </div>
                            <div id="show-users">
                            </div>
                            <div id="input-users">
                            </div>
                            <h2 class="card-inside-title" id="title-distance">Khoảng cách giữa 2 lần gửi lời mời: 200 giây</h2>
                            <div id="distance"></div>
                            <input type="hidden" name="distance" value="30">
                            <h2 class="card-inside-title" id="title-post-done">Thời gian hoàn thành: Chưa xác định</h2>
                            <br>
                            <br>
                            <center>
                            <button type="button" class="btn bg-cyan btn-block btn-lg waves-effect request-friend" style="width:150px;">BẮT ĐẦU</button>
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
	var postDistance = document.getElementById('distance');
    noUiSlider.create(postDistance, {
        start: 30,
        connect: 'lower',
        range: {
            'min': 30,
            'max': 300
        }
    });
	 postDistance.noUiSlider.on('update', function () {
        var val = postDistance.noUiSlider.get();
        $id = $(postDistance).attr('id');
        $(postDistance).parent().find('input[name="'+$id+'"]').val(parseInt(val));
        $("#title-distance").html('Khoảng cách giữa 2 lần gửi lời mời: '+parseInt(val)+' giây');
        // Update thời gian hoàn thành
        calcTimeDone();
    });
	function calcTimeDone () {
        $numberGroup = $("#input-users").find("input[checked='checked']").length;
        $distance = $("input[name='distance']").val();
        var val = $("input[name='pause-time']").val();
        if($numberGroup === 0) $("#title-post-done").html('Thời gian hoàn thành: Chưa xác định');
        else {
            $timePostDone = parseInt($distance) * $numberGroup / 60;
            if($timePostDone > 60) $("#title-post-done").html('Thời gian hoàn thành: ' + parseInt($timePostDone/60) + ' tiếng ' + parseInt($timePostDone%60) + ' phút');
            else $("#title-post-done").html('Thời gian hoàn thành: ' + parseInt($timePostDone) + ' phút');
        }
    }
</script>