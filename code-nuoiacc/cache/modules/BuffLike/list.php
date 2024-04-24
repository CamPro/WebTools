<section class="content">
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>AUTO SEEDING LIKE</h2>
                    </div>
                    <div class="body">
                    	<small style="color:#F00">Tổng seeding phụ thuộc vào số nick của bạn thêm trong phần <a href="<?php echo Url::build('facebook_accounts');?>" target="_blank">tài khoản Facebook</a>. Hệ thống cam kết không lấy bất kỳ token của thành viên nào để đi seeding. <a href="<?php echo Url::build('facebook_accounts',array('cmd'=>'add'));?>" target="_blank">Thêm nick Facebook</a> để seeding.</small><br/><br/>
                        <form id="wizard_with_validation" method="post">
                            <h2 class="card-inside-title" id="title-distance">Số lượng Seeding</h2>
                            <div id="distance"></div>
                            <input type="hidden" name="distance" value="20">
                            <h2 class="card-inside-title">Nhập ID cần like: </h2>
                            <div class="input-group">
                            	<div class="form-line">
		                             <input  type="text" name="like_id" class="form-control date" placeholder="Nhập ID status, fanpage ... cần seeding like" required>
                                 </div>
                                 <span class="input-group-addon">   
		                            <button type="button" id="submit-form" class="btn btn-primary btn-like waves-effect">SEEDING LIKE</button>
                                 </span>   
							</div>
                            <h4 class="total" style="display:none">Đã Seeding được <b style="color:#F00"></b> like.</h4>
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
        $("#title-distance").html('Số lượng Seeding: '+parseInt(val)+' like');
    });
    $(".btn-like").click(function () {
        $like_id = $('input[name="like_id"]').val();
		$limit = $('input[name="distance"]').val();		
        if($like_id === '') {
            swal({title: "Bạn chưa nhập id cần seeding like",type: 'error',timer: 1000,showConfirmButton: false});
            return false;
        }
		$(".page-loader-action").fadeIn();	
         $.post('<?php echo Url::build_current(array('cmd'=>'buff_like'));?>',{like_id:$like_id,limit:$limit}, function(result){
			$(".page-loader-action").fadeOut();
			if(result.status==1)
			{
				$('.total').show();
				$('.total b').html(result.total);	
			}
			else
			{
	            swal({title: "Đã có lỗi xảy ra trong quá trình seeding like",type: 'error',timer: 1000,showConfirmButton: false});
			}
		},'json');
        return false;
    });
</script> 