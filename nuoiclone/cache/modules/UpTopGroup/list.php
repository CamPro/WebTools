<section class="content">
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>TỰ ĐỘNG UP TOP BÀI VIẾT</h2>
                    </div>
                    <div class="body">
                        <form id="wizard_with_validation" method="POST">
                            <h2 class="card-inside-title">Chọn tài khoản: </h2>
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
							<h2 class="card-inside-title">ID bài viết: </h2>
							<div class="input-group" style="margin-bottom: 0px;">
                                <div class="form-line">
                                    <textarea rows="1" class="form-control no-resize" name="list" placeholder="Nhập ID bài viết (Mỗi bài viết một dòng)... ENTER để xuống dòng" required="required"></textarea>
                                </div>
                            </div>

                            <h2 class="card-inside-title">Nội dung: </h2>
                            <div class="input-group" style="margin-bottom: 5px;">
                                <div class="form-line">
                                    <textarea rows="1" class="form-control no-resize" name="content" placeholder="Nhập nội dung... ENTER để xuống dòng" required="required"></textarea>
                                </div>
                            </div>
                            <small style="color:#F00">*Mẹo: Bạn có thể dùng cú pháp icon của Facebook để tạo icon khi đăng bài</small>
                            <div class="loading"></div>
                            <h2 class="card-inside-title" id="title-distance">Khoảng cách giữa 2 lần up bài: 200 giây</h2>
                            <div id="distance"></div>
                            <input type="hidden" name="distance" value="200">
                            <br>
                            <br>
                            <center>
                            <input type="hidden" value="0" id="is-submit">
                            <button type="submit" id="submit-form" class="btn bg-cyan btn-block btn-lg waves-effect" style="width:150px;">Bắt đầu</button>
                            </center>
                        <input type="hidden" name="form_block_id" value="<?php echo isset(Module::$current->data)?Module::$current->data['id']:'';?>"/>
			</form >
			
			
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script type="text/javascript">

	autosize($('textarea[name="list"]'));
	autosize($('textarea[name="content"]'));

	var postDistance = document.getElementById('distance');

    noUiSlider.create(postDistance, {
        start: 600,
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
        $("#title-distance").html('Khoảng cách giữa 2 bài đăng: '+parseInt(val)+' giây');
    });
</script>