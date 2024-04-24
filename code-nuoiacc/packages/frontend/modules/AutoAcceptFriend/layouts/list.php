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
                            <select name="facebook_id" class="form-control show-tick choose-facebook-account" data-action="<?php echo Url::build_current();?>&cmd=get_friend" required></select>
                            <div id="show-users">
                            </div>
                            <div id="input-users">
                            </div>
                            <br>
                            <div><label for="time_continue" style="cursor:pointer">Tiếp nối thời gian các lần gửi trước<input name="time_continue" type="checkbox" id="time_continue" checked="checked" style="position:relative;opacity:1;left:inherit"></label> </div>
                            <div><b>Chỉ kết bạn với giới tính là:</b> <select name="sex" id="sex"></select></div>
                            <h2 class="card-inside-title" id="title-mutual">Đồng ý nếu có lớn hơn hoặc bằng: 0 bạn chung</h2>
                            <div id="mutual"></div>
                            <input type="hidden" name="mutual" value="0">
                            <br>
                            <br>
                            <center>
                            <button type="button" class="btn bg-cyan btn-block btn-lg waves-effect accept-request-friend" style="width:150px;">BẮT ĐẦU</button>
                            </center>
                        </form>
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