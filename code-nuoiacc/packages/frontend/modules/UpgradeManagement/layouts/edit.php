<section class="content">
    <div class="container-fluid">
         <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                            <i class="fa fa-user" aria-hidden="true"></i> <?php if(Url::get('cmd')=='add'){echo 'Thêm mới nâng cấp';}else{echo 'Sửa nâng cấp';}?> 
                        </h2>
                    </div>
                    <div class="body">
                        <div class="row">
                            <div class="col-sm-12 mb0">
                                <form action="<?php echo Url::build_current(array('cmd'=>'ajax_update'));?>" data-redirect="<?php echo Url::build_current();?>">
                                    <input  type="hidden" class="form-control" name="id" value="<?php echo Url::get('id');?>">
                                    <b>Tài khoản nâng cấp</b>
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input name="user_id" type="text" id="user_id" class="form-control">
                                        </div>
                                    </div>
                                    <b>Số lượng tài khoản FB</b>
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input name="account_quantity" type="text" id="account_quantity" class="form-control number">
                                        </div>
                                    </div>
                                    <b>Số tháng sử dụng</b>
                                    <div class="form-group">
                                        <div class="form-line">
                                            <select name="month_quantity" id="month_quantity" class="form-contron"></select>
                                        </div>
                                    </div>
                                    <b>Ngày nâng cấp</b>
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input name="date" type="text" id="date" class="form-control form-datetime">
                                        </div>
                                    </div>
                                    <b>Tổng tiền phải thanh toán</b>
                                    <div class="form-group">
                                        <div class="form-line">
										  <input name="total_price" type="text" id="total_price" class="form-control number">
                                        </div>
                                    </div>
                                    <?php if(Url::get('cmd')=='add'){?>
                                    <div class="switch">
                                        <label data-toggle="tooltip" data-placement="top" data-original-title="Khi tích chọn thì số lượng tài khoản Facebook & thời gian sử dụng của tài khoản này sẽ được cập nhật thêm"><input name="update" type="checkbox"><span class="lever switch-col-green" style="margin-left: 0px; vertical-align: -3px;"></span>Cập nhật số lượng & thời gian sử dụng vào tài khoản này</label>
                                    </div>
                                    <?php }?>
                                    <button type="submit" class="btn bg-red waves-effect btnActionUpdate">Ghi lại</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>        
   </div>
</section>
<script src="packages/core/includes/js/jquery/jquery-ui-1.9.2.custom.min.js" type="text/javascript"></script>
<script>
$(function() {                
	$("#user_id").autocomplete({
		source: "<?php echo Url::build_current(array('cmd'=>'get_user'));?>",
		minLength: 1
	});
	$('input.number').keyup(function(event) {	
	  if(event.which >= 37 && event.which <= 40) return;	
	  // format number
	  $(this).val(function(index, value) {
		return value
		.replace(/\D/g, "")
		.replace(/\B(?=(\d{3})+(?!\d))/g, ".")
		;
	  });
	});
});
</script>

