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
                        <h2>TỰ ĐỘNG THỂ HIỆN CẢM XÚC TRÊN BẢNG TIN</h2>
                    </div>
                    <div class="body">
                        <form id="wizard_with_validation" method="POST" data-action="<?php echo Url::build_current(array('cmd'=>'save_schedules'));?>">                         
                           	<h2 class="card-inside-title">Chọn tài khoản: <small style="color:#F00;font-size:11px">Chức năng này chỉ thao tác 1 lần, và hệ thống sẽ tự động tìm kiếm bài đăng thực hiện.</small></h2>
                            <select name="facebook_id" id="facebook_id" class="form-control" required></select>
                            		
                            <h2 class="card-inside-title">Chọn cảm xúc: </h2>
                            <input type="hidden" name="type" value="0">
                            <div class="facebook-reaction" style="position: relative;">
                                <img class="reaction" id="LIKE" src="skins/news/images/reaction/like.gif" data-toggle="tooltip" data-placement="top" title="" data-original-title="Like">
                                <div class="overlay-01" data-id="LIKE"></div>
                                <img class="reaction" id="LOVE" src="skins/news/images/reaction/love.gif" data-toggle="tooltip" data-placement="top" title="" data-original-title="Thả tim">
                                <div class="overlay-01" data-id="LOVE" style="left:60px"></div>
                                <img class="reaction" id="THANKFUL" src="skins/news/images/reaction/thankful.gif" data-toggle="tooltip" data-placement="top" title="" data-original-title="Biết ơn">
                                <div class="overlay-01" data-id="THANKFUL" style="left:110px"></div>
                                <img class="reaction" id="HAHA" src="skins/news/images/reaction/haha.gif" data-toggle="tooltip" data-placement="top" title="" data-original-title="Haha">
                                <div class="overlay-01" data-id="HAHA" style="left:160px"></div>
                                <img class="reaction" id="WOW" src="skins/news/images/reaction/wow.gif" data-toggle="tooltip" data-placement="top" title="" data-original-title="Wow">
                                <div class="overlay-01" data-id="WOW" style="left:210px"></div>
                                <img class="reaction" id="SAD" src="skins/news/images/reaction/sad.gif" data-toggle="tooltip" data-placement="top" title="" data-original-title="Buồn">
                                <div class="overlay-01" data-id="SAD" style="left:260px"></div>
                                <img class="reaction" id="ANGRY" src="skins/news/images/reaction/angry.gif" data-toggle="tooltip" data-placement="top" title="" data-original-title="Tức giận">
                                <div class="overlay-01" data-id="ANGRY" style="left:310px"></div>
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
                            <div style="color:#F00">Thời gian chạy bot cảm xúc của bạn còn lại <?php echo $days;?> ngày (Bằng thời gian sử dụng của nick)</div>
                            <div>
                                <center><button type="button" class="btn bg-cyan btn-lg waves-effect btn-reaction">LÊN LỊCH</button></center>
                            </div>
                        </form>
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
                                    <th>Hành động</th>           
                                    <th>Thời gian kết thúc</th>
                                    <th>Hành động</th>
                                </tr>
                            </thead>
                                <tbody>
                                	<!--LIST:item_reaction-->
                                    <tr class="pending" data-action="<?php echo Url::build_current(array('cmd'=>'ajax_action_item'));?>" data-action-groups="<?php echo Url::build_current(array('cmd'=>'ajax_get_groups'));?>" data-id="[[|item_reaction.id|]]">
                                        <td>
                                            <input type="checkbox" name="id[]" id="md_checkbox_[[|item_reaction.id|]]" class="filled-in chk-col-red checkItem" value="[[|item_reaction.id|]]">
                                            <label class="p0 m0" for="md_checkbox_[[|item_reaction.id|]]">&nbsp;</label>
                                        </td>
                                    	<td>[[|item_reaction.name|]]</td>
                                        <td>[[|item_reaction.message|]]</td>
                                        <td>[[|item_reaction.time_post_show|]]</td>
                                        <td nowrap="nowrap">
                                      	  <button type="button" class="btn bg-light-green waves-effect btnActionModuleItem" data-action="delete" data-confirm="Bạn có chắc muốn xóa không?"><i class="fa fa-trash" aria-hidden="true"></i></button>
                                            <span class="switch">
                                                <label><input  type="checkbox" class="btnActionModuleItem"  <?php echo ([[=item_reaction.status=]]==1?'checked':'');?>><span class="lever switch-col-light-blue"></span></label>
                                            </span>
                                   		</td>
                                    </tr>
                                	<!--/LIST:item_reaction-->                                    
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
<style type="text/css">
    .reaction {
        width: 50px;cursor: pointer !important;
        float: left;
    }

    .overlay-01 {
        position: absolute;
        width: 30px;
        height: 30px;
        background: rgba(0, 0, 0, 0.7);
        left: 10px;
        top: 10px;
        display: block;
        border-radius: 50%;
    }
</style>
<script type="text/javascript">

    $(".overlay-01").click(function () {
        $(".reaction + .overlay-01").css('display', 'block');
        $id = $(this).attr('data-id');
        $("#" + $id + " + .overlay-01").css('display', 'none');
        $("input[name='type']").val($id);
        showAlert('success', 'Đã chọn cảm xúc ' + $("#" + $id).attr('data-original-title'));
    });
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
        $id = $(maxPost).attr('id');
        $(maxPost).parent().find('input[name="'+$id+'"]').val(parseInt(val));
        $("#title-flimit").html('Số lần thể hiện cảm xúc trong một lần lướt newfeed: '+parseInt(val)+' lần');
    });
	
	 $(".btn-reaction").click(function () {
		 _that    = $(this);
		 _form     = _that.closest("form");
		_action   = _form.data("action");
		_data     = _form.serialize();
		$facebook_id = $('#facebook_id').val()
		$type =  $("input[name='type']").val();
		if($facebook_id === '0') {
			showAlert('error', 'Bạn chưa chọn tài khoản Facebook');
			hideWait();
			return;
		}
		if($type=='0')
		{
			showAlert('error', 'Bạn chưa chọn kiểu cảm xúc.');
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