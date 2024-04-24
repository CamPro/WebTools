<section class="content">
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>TỰ ĐỘNG MỜI BẠN VÀO NHÓM</h2>
                    </div>
                    <div class="body">
                        <form id="wizard_with_validation" method="POST">
                            <h2 class="card-inside-title">Chọn tài khoản: </h2><em style="color:#F00">Lưu ý: tài khoản phải có quyền quản lý nhóm</em>
                            <select  name="facebook_id" class="form-control show-tick" data-size="8" id="select-facebook-account" required><?php
					if(isset($this->map['facebook_id_list']))
					{
						foreach($this->map['facebook_id_list'] as $key=>$value)
						{
							echo '<option value="'.$key.'"';
							echo '>'.$value.'</option>';
							
						}
					}
					?><?php if(isset($_REQUEST['facebook_id']) or isset($this->map['facebook_id'])){?><script type="text/javascript">document.getElementById('facebook_id').value = "<?php echo addslashes(URL::get('facebook_id',isset($this->map['facebook_id'])?$this->map['facebook_id']:''));?>";</script><?php }?></select>
                            <div id="my-group" class="m-t-10 m-b-10" style="display: none">
                                <h2 class="card-inside-title">Chọn nhóm: </h2>
                                <select class="form-control show-tick" name="group_id" data-size="8" id="select-group"></select>
                            </div>                            
                            <div class="card-inside-title"><label for="time_continue" style="cursor:pointer">Tiếp nối thời gian các lần gửi trước<input  name="time_continue" id="time_continue" checked="checked" style="position:relative;opacity:1;left:inherit" type ="checkbox" value="<?php echo String::html_normalize(URL::get('time_continue'));?>"/></label> </div>
                            <h2 class="card-inside-title" id="title-distance">Khoảng cách giữa 2 lần mời: 100 giây</h2>
                            <div id="distance"></div>
                            <input type="hidden" name="distance" value="100">
                            <h2 class="card-inside-title" id="title-post-done">Thời gian hoàn thành: Chưa xác định</h2>
                            <em style="color:#F00">Để hạn chế bị checkpoint mỗi ngày nên mời từ 15-20 người vào 1 nhóm.</em>
                            <br>
                            <center>
                            <input type="hidden" value="0" id="is-submit">
                            <button type="submit" id="submit-form" class="btn bg-cyan btn-block btn-lg waves-effect" style="width:150px;">Lên lịch</button>
                            </center>
                            <div class="total"></div>
                            <div id="show-users">
                            </div>
                            <div id="input-users">
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

    var postDistance = document.getElementById('distance');
    noUiSlider.create(postDistance, {
        start: 100,
        connect: 'lower',
        range: {
            'min': 20,
            'max': 500
        }
    });

    postDistance.noUiSlider.on('update', function () {
        var val = postDistance.noUiSlider.get();
        $id = $(postDistance).attr('id');
        $(postDistance).parent().find('input[name="'+$id+'"]').val(parseInt(val));
        $("#title-distance").html('Khoảng cách giữa 2 lần mời: '+parseInt(val)+' giây');
        // Update thời gian hoàn thành
        calcTimeDone();
    });

    $("body").on('change', 'input[name="select-user"]', function () {
        $id = $(this).attr('id');
        $status = this.checked;
        if($status === true) {
            $("#input-users").find('input[data-id="'+$id+'"]').prop('checked',true);
        } else {
            $("#input-users").find('input[data-id="'+$id+'"]').prop('checked',false);
        }
        // Update thời gian hoàn thành
        calcTimeDone();
    });
	$("body").on('change', '#check-all', function () {
        $isChecked = $(this).is(':checked');
        $allSelectGroup = $("#all-users").find('[name="select-user"]');
        $.each($allSelectGroup , function (key,val) {
            $id = $(val).attr('id');
            if($isChecked == true) {
                $(val).prop('checked',true);
                $("#input-users").find('input[data-id="'+$id+'"]').prop('checked',true);
            } else {
                $(val).prop('checked',false);
                $("#input-users").find('input[data-id="'+$id+'"]').prop('checked',false);
            }
        });
		calcTimeDone();	
    });
	function removeGroup()
	{
		var select = document.getElementById("select-group");
		var length = select.options.length;
		for (i = 0; i < length; i++) {
		  select.options[i] = null;
		}	
	}
    $("#select-facebook-account").on('change', function () {
       $("#my-group").show();
		removeGroup();
        $id = $(this).val();
        if($id == '0'){
            swal({title: "Bạn chưa chọn tài khoản",type: 'error',timer: 1000,showConfirmButton: false});
            return false;
        }
		$(".page-loader-action").fadeIn();	
        $.post('<?php echo Url::build_current(array('cmd'=>'get_group'));?>',{facebook_id:$id}, function(res){
			$(".page-loader-action").fadeOut();
              if(res.error){showAlert('error', res.error);removeGroup();return;}		
			   $.each(res.groups, function (key,val) {
                    $("#select-group").append('<option data-content="<b>'+val.name+'</b>" value="'+val.id+'|'+val.name+'">'+val.name+'</option>');
                });			  
				$("#show-users").html('');
				$("#input-users").html('');
				// CREATE TABLE
				$html = '<div class="table-responsive">';
				$html += '<table class="table table-striped table-hover js-basic-example show-users">';
				$html += '<thead><tr><th><input type="checkbox" id="check-all" class="filled-in" checked=""><label for="check-all" style="height:9px;">Tất cả</label></th><th>STT</th><th>Facebook ID</th><th>Tên</th></tr></thead>';
				$html += '<tbody id="all-users"></tbody>';
				$html += '</table>';
				$html += '</div>';
				$("#show-users").append($html);	
				 $.each(res.friends, function(key,val){
                    $html = '';
                    $html += '<tr>';
                    $html += '<td><input type="checkbox" name="select-user" id="'+val.id+'" class="filled-in" value="'+val.id+'" checked=""><label for="'+val.id+'" style="height:9px;"></label></td>';
                    $html += '<td>'+(key+1)+'</td>';
                    $html += '<td>'+val.id+'</td>';
                    $html += '<td><a href="https://facebook.com/'+val.id+'" target="_blank">'+val.name+'</a></td>';
                    $html += '</tr>';
                    $("body").find("#all-users").append($html);
                    $("#input-users").append('<input type="checkbox" name="users[]" data-id="'+val.id+'" class="filled-in" value="'+val.id+'|'+val.name+'" style="display:none" checked="checked">');
                });
				$('.total').html('Có <b style="color:#ff0000">'+res.friends.length+'</b> bạn.');
			 calcTimeDone();
		},'json');
    });
    function calcTimeDone () {
        $numberGroup = $("#input-users").find("input[checked='checked']").length;
        if($numberGroup === 0) $("#title-post-done").html('Thời gian hoàn thành: Chưa xác định');
        else {
			$timePostDone = parseInt($("input[name='distance']").val()) * $numberGroup / 60;
			if($timePostDone > 60) $("#title-post-done").html('Thời gian hoàn thành: ' + parseInt($timePostDone/60) + ' tiếng ' + parseInt($timePostDone%60) + ' phút');
			else $("#title-post-done").html('Thời gian hoàn thành: ' + parseInt($timePostDone) + ' phút');
        }
    }
</script> 