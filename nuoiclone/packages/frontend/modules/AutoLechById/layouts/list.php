<section class="content">
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>Copy bài đăng lên trang cá nhân</h2>
                    </div>
                    <div class="body">
				       <form name="AutoLechPageForm" id="wizard_with_validation" class="ScheduleList" data-action="<?php echo Url::build_current(array('cmd'=>'save_schedules'));?>" data-redirect="<?php echo Url::build('schedules');?>">                                                 
                            <h2 class="card-inside-title">Chọn tài khoản lấy bài đăng: </h2>
                            <select name="facebook_id" class="form-control show-tick" data-size="8" id="facebook_id" required></select>                            
                            <h2 class="card-inside-title">Kiểu bài đăng: </h2>
                            <input name="type" type="radio" id="status" class="with-gap radio-col-black" value="status">
                            <label for="status" style="margin-right: 20px;">STATUS</label>
                            <input name="type" type="radio" id="photo" class="with-gap radio-col-black" value="photo" checked="checked">
                            <label for="photo" style="margin-right: 20px;">ẢNH</label>
                            <input name="type" type="radio" id="video" class="with-gap radio-col-black" value="video">
                            <label for="video" style="margin-right: 20px;">VIDEO</label>
                            <input name="type" type="radio" id="album" class="with-gap radio-col-black" value="album">
                            <label for="album">ALBUM ẢNH</label>                            
                            <h2 class="card-inside-title">ID của bài đăng cần lấy: </h2>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="material-icons">link</i>
                                </span>
                                <div class="form-line">
                                    <input name="uid" class="form-control date" placeholder="Nhập ID của bài đăng cần lấy" required="" type="text">
                                </div>
                            </div>

                            <div id="description" style="display: none;">
                                <h2 class="card-inside-title">Sửa mô tả của bài viết: </h2>
                                <div class="input-group">
                                    <div class="form-line">
                                        <textarea class="form-control no-resize" name="description" placeholder="Nhập nội dung... ENTER để xuống dòng" required="required"></textarea>
                                    </div>
                                </div>
                            </div>

                            <div id="photos" style="display: none;">
                                <div class="content-wrap">
                                    <div class="input-group" style="margin-bottom: 5px;">
                                        <div class="form-line">
                                            <input name="photos[]" class="form-control photo-album" placeholder="Nhập link ảnh muốn thêm vào album" required="" type="text">
                                        </div>
                                    </div>
                                </div>
                                <button type="button" class="btn bg-teal btn- waves-effect add-photo">Thêm link ảnh</button>
                            </div>

                            <h2 class="card-inside-title">Sẽ đăng lên tài khoản: </h2>
                            <!--LIST:items-->
                            <input name="facebook_accounts[[[|items.fid|]]|[[|items.fullname|]]|[[|items.id|]]]" type="checkbox" id="[[|items.fid|]]" data-name="[[|items.fullname|]]" class="filled-in chk-col-red facebook_accounts" checked=""><label for="[[|items.fid|]]" style="margin-right: 20px;display: block;"><img src="https://graph.facebook.com/[[|items.fid|]]/picture/?type=small" width="24" height="24" alt="User" style="border-radius:50%;margin-right: 10px;">[[|items.fullname|]] - [[|items.username|]]</label>
                            <!--/LIST:items-->                            
                            <br>
                            <center>
                                <button type="button" class="btn bg-cyan btn-lg waves-effect auto-lech-by-id">ĐĂNG BÀI</button>
                            </center>
                            <input type="hidden" name="photo" value="0">
                            <input type="hidden" name="video" value="0">
                            <input type="hidden" name="album" value="0">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script type="text/javascript">
    function hideDescription () 
	{
        $("[name='description']").html("");
        $("#description").hide('fast');
    }
    function showDescription(message) {
        hideWait();
        $("[name='description']").html(message);
        autosize($("[name='description']"));
        $("#description").show('fast');
    }
    function checkType(data) {

    	// reset
    	$("#photos").hide('fast');

        // Get type
        var type = $("[name='type']:checked").val();
        var result = {};

        if(type == 'status') {
            if(typeof data.message === 'undefined') {
                result.error = 'Bài viết này không phải là STATUS ! Hãy chọn đúng kiểu bài viết';
                return result;
            }
            if(typeof data.message === 'undefined') showDescription("");
            else showDescription(data.message);
        }

        if(type == 'photo') {
            if(typeof data.images === 'undefined') {
                result.error = 'Bài viết này không phải là ẢNH ! Hãy chọn đúng kiểu bài viết';
                return result;
            }
            $("[name='"+type+"']").val(data.source);
            if(typeof data.name === 'undefined') showDescription("");
            else showDescription(data.name);
        }

        if(type == 'video') {
            if(typeof data.format === 'undefined') {
                result.error = 'Bài viết này không phải là VIDEO ! Hãy chọn đúng kiểu bài viết';
                return result;
            }
            $("[name='"+type+"']").val(data.source);
            if(typeof data.description === 'undefined') showDescription("");
            else showDescription(data.description);
        }

        if(type == 'album') {
            if(typeof data.message === 'undefined') {
                result.error = 'Bài viết này không phải là ALBUM ẢNH ! Hãy chọn đúng kiểu bài viết';
                return result;
            }
            $("#photos").show('fast');
            if(typeof data.message === 'undefined') showDescription("");
            else showDescription(data.message);
        }

        result.success = true;
        return result;
    }

    function getContent () {
        showWait('Đang xử lý bài viết');
        hideDescription();
        var facebook_id = $("[name='facebook_id']").val();
        var id = $("[name='uid']").val();
		$.ajax({
			dataType: 'json',
			url : '<?php echo Url::build_current(array('cmd'=>'get_content'));?>&facebook_id='+facebook_id+'&id='+id,
			method : "GET",
			error : function (res) {
				showAlert('error', res.error.message);
				hideWait();
			}
		}).done(function (res) {
			if(res.error) {
				showAlert('error', res.error.message);
				hideWait();
				return;
			}
			var check = checkType(res);
			if(check.error) {
				showAlert('error', check.error);
				hideWait();
				return;
			}
		});
    }

    var delay = (function(){
        var timer = 0;
        return function(callback, ms){
            clearTimeout (timer);
            timer = setTimeout(callback, ms);
        };
    })();

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
    $(".add-photo").click(function () {
        $html = '<div class="input-group" style="margin-bottom: 5px;">';
        $html += '<div class="form-line">';
        $html += '<input type="text" class="form-control no-resize photo-album" name="photos[]" placeholder="Nhập link ảnh muốn thêm vào album" required="required">';
        $html += '</div>';
        $html += '<button type="button" class="btn bg-red btn-xs waves-effect delete-content"><i class="material-icons" style="font-size:14px;">delete</i> Xóa</button>';
        $html += '</div>';

        $(".content-wrap").append($html);
    });
    $(".content-wrap").on('click', '.delete-content', function () {
        $parent = $(this).parent();
        $parent.remove();
    });
    $("[name='type']").on('change', function () {
        var id = $("[name='uid']").val();
        var facebook_id = $("[name='facebook_id']").val(); 
        if(id.length !== 0 && facebook_id !== '0') {
            getContent();
        }
    });

    $("[name='facebook_id']").on('change', function () {
        var id = $("[name='uid']").val();
        if(id.length !== 0) {
            getContent();
        }
    });

    $("[name='uid']").on('keyup', function () {
        var _this = this;
        delay(function () {
            var id = $(_this).val();
            var facebook_id = $("[name='facebook_id']").val();
            if(id.length === 0) return;
            if(facebook_id === '0') {
                showAlert('error', 'Bạn chưa chọn tài khoản Facebook');
                hideWait();
                return;
            }
            getContent();
        },500);
    });

    $(".auto-lech-by-id").click(function () {
        var facebookIDs = $(".facebook_accounts:checked");
        var count = 0;
        var sum = facebookIDs.length;
		 _that    = $(this);
		 _form     = _that.closest("form");
		_action   = _form.data("action");
		_redirect = _form.data("redirect");
		_data     = _form.serialize();
		$uid = $('#uid').val()
		$facebook_id = $('#facebook_id').val()
		if(count === sum) {
           showAlert('error', 'Chọn tài khoản Facebook sẽ đăng lên');
            return;
        };
		if($facebook_id === '0') {
			showAlert('error', 'Bạn chưa chọn tài khoản Facebook');
			hideWait();
			return;
		}
		 showWait('Đang đăng bài viết');
		$.post(_action, _data, function(result){
				 hideWait();
				showAlert('success', "Đăng lên tường thành công");
					setTimeout(function(){
					window.location.assign(_redirect);
				},2000);

		},'html');
    });

</script> 