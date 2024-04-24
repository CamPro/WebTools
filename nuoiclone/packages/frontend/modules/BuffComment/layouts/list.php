<section class="content">
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>AUTO SEEDING COMMENT</h2>
                    </div>
                    <div class="body">
                        <small style="color:#F00">Tổng seeding phụ thuộc vào số nick của bạn thêm trong phần <a href="<?php echo Url::build('facebook_accounts');?>" target="_blank">tài khoản Facebook</a>. Hệ thống cam kết không lấy bất kỳ token của thành viên nào để đi seeding. <a href="<?php echo Url::build('facebook_accounts',array('cmd'=>'add'));?>" target="_blank">Thêm nick Facebook</a> để seeding.</small><br/>
                        <small style="color:#F00"> Sử dụng tính năng này tài khoản của bạn phải trên 18 tuổi, bật chế độ công khai cho cấu hình "<a href="https://www.facebook.com/settings?tab=followers" target="_blank">Ai có thể theo dõi tôi" </a> trên Facebook.</small><br/>
                        <br/>
                        <form id="wizard_with_validation" method="post">
							<div class="input-group" style="width:100%">
                            <textarea name="message" id="message" rows="10" class="form-control no-resize" placeholder="Nội dung cần comment"></textarea>
                            </div>
                            <h2 class="card-inside-title" id="title-distance">Số lượng Seeding</h2>
                            <div id="distance"></div>
                            <input type="hidden" name="distance" value="20">
                            <br/><br/>
                            <div class="input-group" style="width:100%">
                            	<div class="form-line">
		                             <input  type="text" name="like_id" class="form-control date" placeholder="Nhập ID status, fanpage ... cần buff" required>
                                 </div>
                                 <span class="input-group-addon">   
		                            <button type="button" id="submit-form" class="btn btn-primary btn-like waves-effect">SEEDING COMMENT</button>
                                 </span>   
							</div>
                            <div class="result" style="display:none">
	                            <h4 class="total">Đã seeding được <b style="color:#F00"></b> comment.</h4>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script type="text/javascript">
 var postDistance = document.getElementById('distance');
    noUiSlider.create(postDistance, {
        start: 20,
        connect: 'lower',
        range: {
            'min': 1,
            'max': 5000
        }
    });

    postDistance.noUiSlider.on('update', function () {
        var val = postDistance.noUiSlider.get();
        $id = $(postDistance).attr('id');
        $(postDistance).parent().find('input[name="'+$id+'"]').val(parseInt(val));
        $("#title-distance").html('Số lượng seeding: '+parseInt(val)+' comment');
    });
    $(".btn-like").click(function () {
        $like_id = $('input[name="like_id"]').val();
        $message = $('#message').val();
		$limit = $('input[name="distance"]').val();
		if($like_id === '') {
            swal({title: "Bạn chưa nhập id cần seeding comment",type: 'error',timer: 1000,showConfirmButton: false});
            return false;
        }
		if($message === '') {
            swal({title: "Bạn chưa nhập nội dung cần seeding",type: 'error',timer: 1000,showConfirmButton: false});
            return false;
        }		
		$(".page-loader-action").fadeIn();	
         $.post('<?php echo Url::build_current(array('cmd'=>'buff_comment'));?>',{like_id:$like_id,message:$message,limit:$limit}, function(result){
			$(".page-loader-action").fadeOut();
			if(result.status==1)
			{
				$('.total b').html(result.total);	
				$('.result').show();				
			}
			else
			{
	            swal({title: "Đã có lỗi xảy ra trong quá trình seeding",type: 'error',timer: 1000,showConfirmButton: false});
			}
		},'json');
        return false;
    });
</script> 