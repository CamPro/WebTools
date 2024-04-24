<form action="<?php echo Url::build_current(array('cmd'=>'ajax_update'));?>" data-redirect="<?php echo Url::build_current();?>">
	<section class="content">
        <div class="container-fluid">
           <div class="row">
    			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
			            <div class="header">
                            <h2>
                                <i class="fa fa-plus-square" aria-hidden="true"></i> Lấy Access Token hàng loạt
                            </h2>
                        </div>
                        <div class="body pt0"><br/>
                            <span>Nick faceook dạng <b style="color:#F00">Email hoặc số điện thoại|Mật khẩu</b> mỗi nick trên 1 dòng. Token lấy được là dạng full quyền.</span><br/>
                            <div class="form-group">
                              <textarea  name="nicks" id="nicks" rows="10" class="form-control no-resize access_token"><?php echo String::html_normalize(URL::get('nicks',''));?></textarea>                        
                            </div>
                            <b>Chọn ứng dụng (<span class="col-red">*</span>)</b> 
                            <select  name="app_id" id="app_id"><?php
					if(isset($this->map['app_id_list']))
					{
						foreach($this->map['app_id_list'] as $key=>$value)
						{
							echo '<option value="'.$key.'"';
							echo '>'.$value.'</option>';
							
						}
					}
					?><?php if(isset($_REQUEST['app_id']) or isset($this->map['app_id'])){?><script type="text/javascript">document.getElementById('app_id').value = "<?php echo addslashes(URL::get('app_id',isset($this->map['app_id'])?$this->map['app_id']:''));?>";</script><?php }?></select>
                            <br/> 
                            <div class="result" style="display:none">
                            <b>Access Token</b>
                            <textarea  name="access_token" id="access_token" rows="10" class="form-control no-resize access_token" onclick="this.focus();this.select()"><?php echo String::html_normalize(URL::get('access_token',''));?></textarea>                        
                            </div>
                             <br/> 
                            <button type="button" class="btn bg-light-green waves-effect" id="submit">Get Access Token</button>
		            </div>
        	</div>        
        </div>
	</div>        
	</div>
</section>
<input type="hidden" name="form_block_id" value="<?php echo isset(Module::$current->data)?Module::$current->data['id']:'';?>"/>
			</form >
			
			
<script>
String.prototype.replaceAll = function (find, replace) {
    var result = this;
    do {
        var split = result.split(find);
        result = split.join(replace);
    } while (split.length > 1);
    return result;
};
    $(document).on('click','#submit', function () {
		var nicks = $("#nicks")["val"]();		
		if(nicks==''){
			alert('Nhập nick facebook | mật khẩu');
			return false;
		}
		else
		{
			$('#submit')['attr']('disabled','disabled'), $('#submit')['html']("Vui lòng đợi...");
			var app_id = $("#app_id option:selected")["val"]();
			$["ajax"]({
				url: "<?php echo Url::build_current(array('cmd'=>'get_access_token'));?>",
				type: "post",
				data: {
					nicks: nicks,
					app_id: app_id
				},
				success: function (result) {
					$('#submit')["removeAttr"]("disabled"),$('#submit')['html']("Lấy token"),$("#access_token").val(result.trim().replaceAll('\\n', String.fromCharCode(13, 10))),$('.result').show();
				}
			})["fail"](function () {
				$('#submit')["removeAttr"]("disabled"), $('#submit')['html']("Lấy token"), $("#load_result")["show"](), $("#result")["val"]("Thất bại vui lòng thử lại")
			})
		}
    });
</script>