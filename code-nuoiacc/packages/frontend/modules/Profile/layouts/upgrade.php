<?php 
$startdate = date("Y-m-d H:i:s"); 
$enddate = Session::get('user_data','expiration_date'); 
$diff=strtotime($enddate)-strtotime($startdate); 
$days = floor($diff/86400)+1;
?>
<section class="content">
    <div class="card">
        <div class="header">
            <h2>
                <i class="fa fa-user" aria-hidden="true"></i> NẠP TIỀN VÀO TÀI KHOẢN
            </h2>
        </div>
        <div class="body">
            <div class="row">
                <div class="col-sm-12 mb0">
                    <ul class="list-group">
                        <li class="list-group-item">Bạn đang có <span class="badge bg-green"><?php echo Session::get('user_data','sobcoin');?> XU</span></li>
                        <li class="list-group-item">Số tài khoản facebook bạn được thêm  <span class="badge bg-red"><a href="<?php echo Url::build_current(array('cmd'=>'buy_more_account'));?>" style="color:#FFF;text-decoration:none">Mua thêm tài khoản</a></span><span class="badge bg-blue">[[|maximum_facebook_accounts|]] tài khoản</span></li>
                        <li class="list-group-item">Còn lại <span class="badge bg-light-green"><?php echo $days;?> ngày sử dụng</span> </li>
                    </ul>
                    <div><?php echo Portal::get_setting('payment_info');?></div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="content">    
   <div class="card">
  		 <div class="header">
            <h2>
                <i class="fa fa-user" aria-hidden="true"></i> Lịch sử nạp tiền vào tài khoản
            </h2>
        </div>
        <div class="body" align="center">
            <table class="table table-bordered table-striped table-hover mb0">                            
                <thead>
                    <tr>
                        <th width="3%">#</th>
                        <th width="15%">Thời gian</th>
                        <th width="15%">Số XU nạp</th>
                        <th width="15%">Số tiền nạp</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i=1;?>
                    <!--LIST:items-->
                    <tr role="row">
                        <td><?php echo $i++;?></td>
                        <td><?php echo date('G:i d/m/Y',strtotime([[=items.date=]]));?></td>
                        <td><?php echo System::display_number([[=items.sobcoin=]]);?></td>
                        <td><?php echo System::display_number([[=items.total_price=]]);?></td>                        
                    </tr>
                    <!--/LIST:items-->   
                </tbody>
            </table>
		</div>
	</div>
</section>
