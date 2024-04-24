<section class="content">
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>TỰ ĐỘNG GỬI LỜI MỜI KẾT BẠN THEO DANH SÁCH UID</h2>
                    </div>
                    <div class="body">
				       <form name="MakeFriendByUIDForm" id="wizard_with_validation" class="ScheduleList" data-action="<?php echo Url::build_current(array('cmd'=>'save_schedules'));?>">                         
                            <h2 class="card-inside-title">Chọn tài khoản: </h2>
                            <select name="facebook_id" class="form-control show-tick" id="facebook_id"></select>
                            <h2 class="card-inside-title">Danh sách UID: <small>Mỗi UID cách nhau bởi dầu , (dấu phẩy)</small></h2>
							<textarea name="list_uid" id="list_uid" class="form-control" rows="8"></textarea>
                            <h2 class="card-inside-title" id="title-distance">Khoảng cách giữa 2 lần gửi lời mời: 200 giây</h2>
                            <div id="distance"></div>
                            <input type="hidden" name="distance" value="30">
                            <br>
                            <br>
                            <center>
                            <button type="button" class="btn bg-cyan btn-block btn-lg waves-effect request-friend-by-uid" style="width:150px;">BẮT ĐẦU</button>
                            </center>
                        </form>
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
    });
</script>