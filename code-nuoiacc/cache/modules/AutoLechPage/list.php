<section class="content">
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>TỰ ĐỘNG LẤY BÀI ĐĂNG CỦA PAGE KHÁC</h2>
                    </div>
                    <div class="body">
				       <form name="AutoLechPageForm" id="wizard_with_validation" class="ScheduleList" data-action="<?php echo Url::build_current(array('cmd'=>'save_schedules'));?>" data-redirect="<?php echo Url::build('schedules');?>">                                                 
                            <h2 class="card-inside-title">Chọn tài khoản: <small style="color:#F00">Lưu ý: access token khi lấy phải full quyền thì mới sử dụng được tính năng này. Token dạng EAAAA thì mới là token full quyền.</small></h2>                            
                            <select  name="facebook_id" class="form-control show-tick" data-size="8" id="facebook_id" required><?php
					if(isset($this->map['facebook_id_list']))
					{
						foreach($this->map['facebook_id_list'] as $key=>$value)
						{
							echo '<option value="'.$key.'"';
							echo '>'.$value.'</option>';
							
						}
					}
					?><?php if(isset($_REQUEST['facebook_id']) or isset($this->map['facebook_id'])){?><script type="text/javascript">document.getElementById('facebook_id').value = "<?php echo addslashes(URL::get('facebook_id',isset($this->map['facebook_id'])?$this->map['facebook_id']:''));?>";</script><?php }?></select>                            
                             <div id="my-page" class="m-t-10 m-b-10" style="display: none">
                                <h2 class="card-inside-title">Chọn Page đang quản lý: </h2>
                                <select class="form-control show-tick" name="page_id" data-size="8" id="select-page"></select>
							</div>
                            <h2 class="card-inside-title">ID Page cần lấy: </h2>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="material-icons">link</i>
                                </span>
                                <div class="form-line">
                                    <input name="uid" class="form-control date" id="uid" placeholder="Nhập ID Page hoặc ID người cần lấy" required="" type="text">
                                </div>
                            </div>
                            <small>* Mẹo: Nếu không lấy được ID từ link. Hãy vào <a href="http://findmyfbid.com/" target="_blank"><b>trang này</b></a> để lấy ID rồi dán vào khung bên trên nhé</small>
                            
                            <h2 class="card-inside-title" id="title-max-post">Giới hạn một ngày đăng: 20 bài</h2>
                            <div id="max-post"></div>
                            <input type="hidden" name="max-post" value="20">
                            <br>
                            <br>                                
                                <div class="switch">
                                    <label data-toggle="tooltip" data-placement="top" data-original-title="Nếu bỏ chọn thì các bài đăng sẽ ở chế độ Bạn bè"><input  name="public" checked="checked" type ="checkbox" value="<?php echo String::html_normalize(URL::get('public'));?>"/><span class="lever switch-col-green" style="margin-left: 0px; vertical-align: -3px;"></span>Đăng ở chế độ <i class="material-icons" style="font-size:12px;">public</i> <b>CÔNG KHAI</b></label>
                                </div>
                                <hr style="margin-top:10px;">
                                
                                <button type="button" class="btn bg-cyan btn-lg waves-effect auto-lech-post" style="float: right;">LÊN LỊCH</button>
                                <div class="switch" style="margin-top: 10px;">
                                    <label><input name="type[]" checked="" value="status" type="checkbox"><span class="lever" style="margin-left: 0px; vertical-align: -3px;"></span><i class="material-icons" style="font-size: 14px;vertical-align: -2px;">create</i> Tự động lấy STATUS</label>
                                </div>
                                <div class="switch" style="margin-top: 5px;">
                                    <label><input name="type[]" value="link" checked="" type="checkbox"><span class="lever" style="margin-left: 0px; vertical-align: -3px;"></span><i class="material-icons" style="font-size: 14px;vertical-align: -2px;">link</i> Tự động lấy LINK</label>
                                </div>
                                <div class="switch" style="margin-top: 5px;">
                                   <label><input name="type[]" value="photo" checked="" type="checkbox"><span class="lever" style="margin-left: 0px; vertical-align: -3px;"></span><i class="material-icons" style="font-size: 14px;vertical-align: -2px;">insert_photo</i> Tự động lấy ẢNH</label>
                                </div>
                                <div class="switch" style="margin-top: 5px;">
                                   <label><input name="type[]" value="video" type="checkbox"><span class="lever" style="margin-left: 0px; vertical-align: -3px;"></span><i class="material-icons" style="font-size: 14px;vertical-align: -2px;">videocam</i> Tự động lấy VIDEO</label>
                                </div>
                                <div class="switch" style="margin-top: 5px;">
                                    <label><input name="type[]" value="album" checked="" type="checkbox"><span class="lever" style="margin-left: 0px; vertical-align: -3px;"></span><i class="material-icons" style="font-size: 14px;vertical-align: -2px;">wallpaper</i> Tự động lấy ALBUM ẢNH</label>
                                </div>                         
                            </div>
                        <input type="hidden" name="form_block_id" value="<?php echo isset(Module::$current->data)?Module::$current->data['id']:'';?>"/>
			</form >
			
			
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script type="text/javascript">
    var postDistance = document.getElementById('max-post');
    noUiSlider.create(postDistance, {
        start: 20,
        connect: 'lower',
        range: {
            'min': 1,
            'max': 100
        }
    });
    postDistance.noUiSlider.on('update', function () {
        var val = postDistance.noUiSlider.get();
        $id = $(postDistance).attr('id');
        $(postDistance).parent().find('input[name="'+$id+'"]').val(parseInt(val));
        $("#title-max-post").html('Giới hạn một ngày đăng: '+parseInt(val)+' bài');
    });
	function removePage()
	{
		var select = document.getElementById("select-page");
		var length = select.options.length;
		for (i = 0; i < length; i++) {
		  select.options[i] = null;
		}	
	}
	$('#facebook_id').on('change',function(){
		$facebook_id = $('#facebook_id').val();
		if($facebook_id == '0')
		{
			removePage();
			$('#my-page').hide();
		   swal({title: "Bạn chưa chọn tài khoản",type: 'error',timer: 1000,showConfirmButton: false});
		}	
		$(".page-loader-action").fadeIn();	
		$.post('<?php echo Url::build_current(array('cmd'=>'get_page'));?>',{facebook_id:$facebook_id}, function(res){
			$(".page-loader-action").fadeOut();
			if(res.error){ swal({title: res.error,type: 'error',timer: 5000,showConfirmButton: false});removePage();return;}
			$.each(res.data, function (key,val) {
				$("#select-page").append('<option data-content="<b>'+val.name+'</b>" value="'+val.id+'|'+val.name+'">'+val.name+'</option>');
			});	
			$('#my-page').show();
		},'json');
	});
</script> 