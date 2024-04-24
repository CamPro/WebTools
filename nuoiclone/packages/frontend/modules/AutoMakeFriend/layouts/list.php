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
                            <select name="facebook_id" class="form-control show-tick select-facebook-account" data-action="<?php echo Url::build_current();?>&cmd=get_friend" required></select>
                            <h2 class="card-inside-title">Lấy danh sách từ: </h2>
                            <input name="type" type="radio" id="user" class="with-gap radio-col-black" value="user" checked="checked">
                            <label for="user" class="m-r-20">BẠN BÈ</label>
                            <input name="type" type="radio" id="follower" class="with-gap radio-col-black" value="follower">
                            <label for="follower" class="m-r-20">NGƯỜI THEO DÕI</label>
                            <input name="type" type="radio" id="group" class="with-gap radio-col-black" value="group">
                            <label for="group">THÀNH VIÊN NHÓM</label>
                            <input name="type" type="radio" id="post" class="with-gap radio-col-black" value="post">
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
                        </form>
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