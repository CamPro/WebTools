<form>
	<section class="content">
        <div class="container-fluid">
           <div class="row">
    			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
			            <div class="header">
                            <h2>
                                <i class="fa fa-plus-square" aria-hidden="true"></i> Thêm nhiều tài khoản Facebook cùng lúc 
                            </h2>
                        </div>
                        <div class="body pt0">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs tab-nav-right" role="tablist">
                                <li role="presentation" class="active" id="tab1"><a href="#home" data-toggle="tab" aria-expanded="true">ACCESS TOKEN</a></li>
                            </ul>            
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane fade active in" id="home">
                                    <div class="row">
                                        <div class="col-sm-12 mb0">
                                        <em style="color:#F00;clear:both;font-size:11px;">Để nuôi nick, dùng access token full quyền. Access Token full quyền có dạng EAAAA</em>
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="hidden" class="form-control" name="id" value="<?php echo Url::iget('id',0);?>">
                                                <textarea name="access_token" id="access_token" rows="16" class="form-control no-resize access_token" placeholder="Copy/paste Access Token vào đây rồi ấn Ghi lại. Mỗi Access Token trên 1 dòng. Nhấn Enter để xuống dòng."></textarea>
                                            </div>
                                        </div>                                                
                                    <button type="button" id="submit" class="btn bg-red waves-effect">Ghi lại</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>        
        </div>
	</div>        
	</div>
</section>
</form>
<script>
	autosize($('#access_token'));
	$(document).on('click','#submit', function () {
        var access_token = $("#access_token").val();
		if(access_token=='')
		{
			  swal({title: "Bạn chưa nhập danh sách token",type: 'error',timer: 1000,showConfirmButton: false});
		}
       $('#submit').attr('disabled','disabled');
	   $('#submit').html('Đang thêm tài khoản. Xin vui lòng đợi...');
		$.post('<?php echo Url::build_current(array('cmd'=>'add_all_token'));?>',{access_token:access_token}, function(res){
			if(res.error){
				 swal({title: res.error,type: 'error',timer: 5000,showConfirmButton: false});
			}
			else
			{
				swal({title: 'Bạn đã thêm được '+res.total +' tài khoản',type: 'success',timer: 5000,showConfirmButton: false});
			}
			setTimeout(function(){
				window.location.assign(res.redirect);
			},6000);
		},'json');
    });
</script>