<section class="content">
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>TỰ ĐỘNG THAM GIA NHÓM</h2>
                    </div>
                    <div class="body">
                        <form id="wizard_with_validation" method="post">
                            <h2 class="card-inside-title">Chọn tài khoản: </h2>
                            <select  name="facebook_id" class="form-control show-tick" id="select-facebook-account"><?php
					if(isset($this->map['facebook_id_list']))
					{
						foreach($this->map['facebook_id_list'] as $key=>$value)
						{
							echo '<option value="'.$key.'"';
							echo '>'.$value.'</option>';
							
						}
					}
					?><?php if(isset($_REQUEST['facebook_id']) or isset($this->map['facebook_id'])){?><script type="text/javascript">document.getElementById('facebook_id').value = "<?php echo addslashes(URL::get('facebook_id',isset($this->map['facebook_id'])?$this->map['facebook_id']:''));?>";</script><?php }?></select>
                            <h2 class="card-inside-title"><label for="show_member" style="cursor:pointer">Hiển thị số thành viên của nhóm:<input  name="show_member" id="show_member" style="position:relative;opacity:1;left:inherit" type ="checkbox" value="<?php echo String::html_normalize(URL::get('show_member'));?>"/></label></h2><em style="color:#F00">Khi tick vào hiển thị số thành viên của nhóm, số liệu phải tổng hợp và tính toán. Do vậy cần có thời gian để xử lý, vui lòng chờ 3-5 phút.</em>
                            <h2 class="card-inside-title">Tìm nhóm: </h2>
                            <div class="input-group" style="width: 300px;margin-bottom: 0px;">
                                <span class="input-group-addon">
                                    <i class="material-icons">search</i>
                                </span>
                                <div class="form-line">
                                    <input type="text" name="keyword" class="form-control date" placeholder="Tìm nhóm mà bạn cần tham gia" required>
                                </div>
                                <span class="input-group-addon">
                                    <button type="button" id="search" class="btn btn-primary waves-effect" style="cursor: pointer;">TÌM KIẾM</button>
                                </span>
                            </div>
                            <div id="input-groups">
                            </div>
                            <div class="card-inside-title"><label for="time_continue" style="cursor:pointer">Tiếp nối thời gian các lần gửi trước<input  name="time_continue" id="time_continue" checked="checked" style="position:relative;opacity:1;left:inherit" type ="checkbox" value="<?php echo String::html_normalize(URL::get('time_continue'));?>"/></label> </div>
                            <h2 class="card-inside-title" id="title-distance">Khoảng cách giữa 2 lần tham gia: 200 giây</h2>
                            <div id="distance"></div>
                            <input type="hidden" name="distance" value="200">

                            <h2 class="card-inside-title" id="title-post-done">Thời gian hoàn thành: Chưa xác định</h2>
                            <br>
                            
                            <center>
                            <input type="hidden" value="0" id="is-submit">
                            <button type="button" id="submit-form" class="btn bg-cyan btn-block btn-lg waves-effect" style="width:150px;">Tham gia</button>
                            </center>
                        <input type="hidden" name="form_block_id" value="<?php echo isset(Module::$current->data)?Module::$current->data['id']:'';?>"/>
			</form >
			
			

                        <div class="total"></div>
                        <div id="show-groups">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script type="text/javascript">
    var postDistance = document.getElementById('distance');
    noUiSlider.create(postDistance, {
        start: 200,
        connect: 'lower',
        range: {
            'min': 100,
            'max': 500
        }
    });
    postDistance.noUiSlider.on('update', function () {
        var val = postDistance.noUiSlider.get();
        $id = $(postDistance).attr('id');
        $(postDistance).parent().find('input[name="'+$id+'"]').val(parseInt(val));
        $("#title-distance").html('Khoảng cách giữa 2 lần tham gia: '+parseInt(val)+' giây');
        calcTimeDone();
    });
    $("body").on('change', 'input[name="select-group"]', function () {
        $id = $(this).attr('id');
        $status = this.checked;
        if($status === true) {
            $("#input-groups").find('input[data-id="'+$id+'"]').prop('checked',true);
        } else {
            $("#input-groups").find('input[data-id="'+$id+'"]').prop('checked',false);
        }
        // Update thời gian hoàn thành
        calcTimeDone();
    });

    $("body").on('change', '#check-all', function () {
        $isChecked = $(this).is(':checked');
        $allSelectGroup = $("#all-groups").find('[name="select-group"]');
        $.each($allSelectGroup , function (key,val) {
            $id = $(val).attr('id');

            if($isChecked == true) {
                $(val).prop('checked',true);
                $("#input-groups").find('input[data-id="'+$id+'"]').prop('checked',true);
            } else {
                $(val).prop('checked',false);
                $("#input-groups").find('input[data-id="'+$id+'"]').prop('checked',false);
            }
        });
		calcTimeDone();	
    });

    $("#search").click(function () {

        $keyword = $('input[name="keyword"]').val();
		$show_member = $('#show_member').is(':checked');
        if($keyword === '') {
            swal({title: "Bạn chưa nhập tên nhóm",type: 'error',timer: 1000,showConfirmButton: false});
            return false;
        }

        $id = $("#select-facebook-account").val();
        if($id == '0'){
            swal({title: "Bạn chưa chọn tài khoản",type: 'error',timer: 1000,showConfirmButton: false});
            return false;
        }
        $("#show-groups").html('');
        $("#input-groups").html('');
        $html = '<table class="table table-striped table-hover js-basic-example dataTable">';
        $html += '<thead><tr><th><input type="checkbox" id="check-all" class="filled-in" checked=""><label for="check-all" style="height:9px;">Tất cả</label></th><th>Tên</th>'+($show_member==true?'<th>Số Thành viên</th>':'')+'<th>Loại nhóm</th></tr></thead>';
        $html += '<tbody id="all-groups"></tbody>';
        $html += '</table>';
        $("#show-groups").append($html);
		$(".page-loader-action").fadeIn();	
         $.post('<?php echo Url::build_current(array('cmd'=>'get_group'));?>',{facebook_id:$id,keyword:$keyword,show_member:($show_member==true?1:0)}, function(res){
			  if(res.length <= 0) {showAlert('error', 'Không tìm thấy nhóm nào cả');return;}
                $(".dataTable").show();
                $("#all-groups").html('');
                $(".total").html('Có '+res.length+' kết quả !');
                $.each(res, function (key,val) {
                    $html = '<tr>';
                    $html += '<td><input type="checkbox" name="select-group" id="'+val.id+'" class="filled-in" value="'+val.id+'" checked=""><label for="'+val.id+'" style="height:9px;"></label></td>';
                    $html += '<td><a href="https://facebook.com/'+val.id+'" target="_blank">'+val.name+'</a></td>';
					$html += ($show_member==true?'<td>'+val.total_mem+'</td>':'');
					$html += '<td> <i class="fa fa-eye'+ (val.privacy!='OPEN'?"-slash col-red":" col-green")+'" aria-hidden="true"> '+(val.privacy=='OPEN'?'Nhóm công khai':'Nhóm kín')+'</i></td>';
                    $html += '</tr>';
                    $("#all-groups").append($html);
                    $("#input-groups").append('<input type="checkbox" name="groups[]" data-id="'+val.id+'" class="filled-in" value="'+val.id+'|'+val.name+'" style="display:none" checked="checked">');
                });
                // show Table
                $("body").find('.dataTable').DataTable({
                    "lengthMenu": [[-1], ["Tất cả"]],
                    "paging":   false,
                    "ordering": false,
                    "info":     false,
                    "language": {
                        "search" : "Tìm kiếm",
                    }
                });
                // Update thời gian hoàn thành
                calcTimeDone();
			$(".page-loader-action").fadeOut();
		},'json');
        return false;
    });
    $("#wizard_with_validation").submit(function () {
        if($("#is-submit").val() === '1')
            return true;
        $("#search").click();
        return false;
    });

    $("#submit-form").click(function () {
        $("#is-submit").val('1');
        $("#wizard_with_validation").submit();
    });

    function calcTimeDone () {
        $numberGroup = $("#input-groups").find("input[checked='checked']").length;
        if($numberGroup === 0) $("#title-post-done").html('Thời gian hoàn thành: Chưa xác định');
        else {
			$timePostDone = parseInt($("input[name='distance']").val()) * $numberGroup / 60;
			if($timePostDone > 60) $("#title-post-done").html('Thời gian hoàn thành: ' + parseInt($timePostDone/60) + ' tiếng ' + parseInt($timePostDone%60) + ' phút');
			else $("#title-post-done").html('Thời gian hoàn thành: ' + parseInt($timePostDone) + ' phút');
        }
    }
</script> 