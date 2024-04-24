<?php 
$startdate = date("Y-m-d H:i:s"); 
$enddate = Session::get('user_data','expiration_date'); 
$diff=strtotime($enddate)-strtotime($startdate); 
$days = floor($diff/86400)+1;
?>
<section class="content">
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>TỰ ĐỘNG COMMENT BÀI VIẾT TRÊN NEWFFEED</h2>
                    </div>
                    <div class="body">
                        <form id="wizard_with_validation" method="POST" data-action="<?php echo Url::build_current(array('cmd'=>'save_schedules'));?>">                         
                            <h2 class="card-inside-title">Chọn tài khoản: <small style="color:#F00;font-size:11px">Chức năng này chỉ thao tác 1 lần, và hệ thống sẽ tự động tìm kiếm bài đăng thực hiện.</small></h2>
                            <select  name="facebook_id" id="facebook_id" class="form-control" required><?php
					if(isset($this->map['facebook_id_list']))
					{
						foreach($this->map['facebook_id_list'] as $key=>$value)
						{
							echo '<option value="'.$key.'"';
							echo '>'.$value.'</option>';
							
						}
					}
					?><?php if(isset($_REQUEST['facebook_id']) or isset($this->map['facebook_id'])){?><script type="text/javascript">document.getElementById('facebook_id').value = "<?php echo addslashes(URL::get('facebook_id',isset($this->map['facebook_id'])?$this->map['facebook_id']:''));?>";</script><?php }?></select>
                            <h2 class="card-inside-title">Nội dung: </h2>
                            <div class="content-wrap">
                                <div class="input-group" style="margin-bottom: 5px;">
                                    <div class="form-line">
                                        <textarea rows="1" class="form-control no-resize" name="contents" id="contents" placeholder="Nhập nội dung... ENTER để xuống dòng" required="required" style="overflow: hidden; word-wrap: break-word; height: 32px;"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div style="clear: both"></div>

                            <h2 class="card-inside-title" id="title-flimit" style="margin-bottom: 0px;">Số lần thể hiện cảm xúc trong một ngày: 20 lần</h2>
                            <small>Khi có bài viết mới trên newfeed là hệ thống tự động thể hiện cảm xúc bài viết đó</small>
                            <div id="flimit"></div>
                            <input type="hidden" name="flimit" value="20">
                            <br><br>                            
                            <div class="switch" style="display:none">
                                <label><input type="checkbox" name="only-friend" checked=""><span class="lever" style="margin-left: 0px;"></span>Chỉ thể hiện cảm xúc với BẠN BÈ</label>
                            </div>
                             <div style="color:#F00">Thời gian chạy bot comment của bạn còn lại <?php echo $days;?> ngày (Bằng thời gian sử dụng của nick)</div>
                            <div>
                                <center><button type="button" class="btn bg-cyan btn-lg waves-effect btn-reaction">LÊN LỊCH</button></center>
                            </div>
                        <input type="hidden" name="form_block_id" value="<?php echo isset(Module::$current->data)?Module::$current->data['id']:'';?>"/>
			</form >
			
			
                        <div class="card" style="margin-top:10px; padding:10px">
                            <div class="header" style="margin-bottom:10px">
                            <h2><i class="fa fa-facebook-official" aria-hidden="true"></i> &nbsp;  Danh sách tài khoản</h2>
                            </div>
                            <div class="body p0">
                                    <table class="table table-bordered table-striped table-hover js-dataTableSchedule mb0">
                                    <thead>
                                    <tr>
                                        <th>
                                            <input type="checkbox" id="md_checkbox" class="filled-in chk-col-red checkAll">
                                            <label class="p0 m0" for="md_checkbox">&nbsp;</label>
                                        </th>
                                        <th>Tài khoản</th> 
                                        <th>Nội dung</th>           
                                        <th>Thời gian kết thúc</th>
                                        <th>Trạng thái</th>
                                    </tr>
                                </thead>
                                    <tbody>
                                        <?php
					if(isset($this->map['item_reaction']) and is_array($this->map['item_reaction']))
					{
						foreach($this->map['item_reaction'] as $key1=>&$item1)
						{
							if($key1!='current')
							{
								$this->map['item_reaction']['current'] = &$item1;?>
                                        <tr class="pending" data-action="<?php echo Url::build_current(array('cmd'=>'ajax_action_item'));?>" data-action-groups="<?php echo Url::build_current(array('cmd'=>'ajax_get_groups'));?>" data-id="<?php echo $this->map['item_reaction']['current']['id'];?>">
                                            <td>
                                                <input type="checkbox" name="id[]" id="md_checkbox_<?php echo $this->map['item_reaction']['current']['id'];?>" class="filled-in chk-col-red checkItem" value="<?php echo $this->map['item_reaction']['current']['id'];?>">
                                                <label class="p0 m0" for="md_checkbox_<?php echo $this->map['item_reaction']['current']['id'];?>">&nbsp;</label>
                                            </td>
                                            <td><?php echo $this->map['item_reaction']['current']['name'];?></td>
                                            <td><?php echo $this->map['item_reaction']['current']['message'];?></td>
                                            <td><?php echo $this->map['item_reaction']['current']['time_post_show'];?></td>
                                            <td>
                                          	  <button type="button" class="btn bg-light-green waves-effect btnActionModuleItem" data-action="delete" data-confirm="Bạn có chắc muốn xóa không?"><i class="fa fa-trash" aria-hidden="true"></i></button>
                                                <span class="switch">
                                                    <label><input  type="checkbox" class="btnActionModuleItem"  <?php echo ($this->map['item_reaction']['current']['status']==1?'checked':'');?>><span class="lever switch-col-light-blue"></span></label>
                                                </span>
                                            </td>
                                        </tr>
                                        
							
						<?php
							}
						}
					unset($this->map['item_reaction']['current']);
					} ?>                                    
                                    </tbody>
                                </table>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script type="text/javascript">
	autosize($('textarea[name="contents[]"]'));
	function showWait (message) {
        $(".card").waitMe({
            effect: "facebook",
            bg: "rgba(255,255,255,0.8)",
            text: message
        });
    }
    function hideWait () {
        $(".card").waitMe('hide');
    }
    var maxPost = document.getElementById('flimit');

    noUiSlider.create(maxPost, {
        start: 5,
        connect: 'lower',
        range: {
            'min': 1,
            'max': 20
        }
    });

    maxPost.noUiSlider.on('update', function () {
        var val = maxPost.noUiSlider.get();
        $("#title-flimit").html('Số lần comment trong mỗi lần lướt newfeed: '+parseInt(val)+' lần');
    });
	
	 $(".btn-reaction").click(function () {
		 _that    = $(this);
		 _form     = _that.closest("form");
		_action   = _form.data("action");
		_data     = _form.serialize();
		$facebook_id = $('#facebook_id').val()
		$contents =  $("#contents").val();
		if($facebook_id === '0') {
			showAlert('error', 'Bạn chưa chọn tài khoản Facebook');
			hideWait();
			return;
		}
		if($contents=='')
		{
			showAlert('error', 'Nhập nội dung comment');
			hideWait();
			return;
		}
		showWait('Đang lên lịch...');
		$.post(_action, _data, function(result){
				  hideWait();				 
				 showAlert(result.st,result.txt);
				  setTimeout(function(){
						window.location.reload();
					},4000);	

		},'json');
    });

</script> 