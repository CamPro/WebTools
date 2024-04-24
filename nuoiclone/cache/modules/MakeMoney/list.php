<section class="content">
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>GIỚI THIỆU BẠN BÈ SỬ DỤNG HỆ THỐNG</h2>
                    </div>
                    <div class="body" style="line-height:24px;">
                    	 <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                            <u><b>Quyền lợi được hưởng khi giới thiệu bạn bè sử dụng hệ thống:</b></u>
                            <div>
                            - Nhận <?php echo Portal::get_setting('percen_profit');?>% giá trị tất cả hóa đơn nạp tiền của người được giới thiệu.<br/>
                            - Không giới hạn thời gian, số tiền, số hóa đơn nạp được hưởng <?php echo Portal::get_setting('percen_profit');?>%.<br/>
                            <u><b>Cách làm:</b></u><br/>
                            <b>B1:</b> Khi tham gia kiếm tiền với hệ thống bạn sẽ có 1 đường Link để giới thiệu tới bạn bè. <br/>
                            <b>B2:</b> Chia sẻ đến bạn bè đường link đó để họ đăng ký, sau khi đăng ký nếu bạn bè của bạn nâng cấp tài khoản thì bạn sẽ nhận được 1 số tiền (<?php echo Portal::get_setting('percen_profit');?>% giá trị của số tiền nâng cấp).<br/> 
                            <u><b>Ví dụ:</b></u> bạn bè của bạn nạp 200k mua 50 tài khoản sử dụng trong 1 tháng bạn sẽ nhận được <?php echo Portal::get_setting('percen_profit');?>% của 200k  cộng vào tài khoản. 
                            <span style="color:#F00">Khi số tiền lớn hơn 100k bạn có thể rút số tiền đó về tài khoản ngân hàng của mình.</span> (Chúng tôi sẽ thanh toán cho bạn trong vòng 1 tuần kể từ lúc tạo lệnh rút tiền).<br/>
                            <b>Sao chép đường dẫn giới thiệu phía dưới:</b><br/>
                           <b style="color:#F00"><?php echo $this->map['ref_code'];?></b> <button class="btn" data-clipboard-demo="" data-clipboard-action="copy" data-clipboard-text="<?php echo $this->map['ref_code'];?>"><font><font class=""><font size = 4>Copy</font></font></font></button>
                            </div>
                          </div>  
                          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4" style="border:1px solid #ccc;background-color:#f1f1f1">
                          	<u><b>Thống kê:</b></u>
                          	<div>Bạn đã kiếm được: <b style="color:#F00"><?php echo System::display_number($this->map['total']);?></b> VNĐ</div>
                            <div>Số tiền có thể rút ngay: <b style="color:#F00"><?php echo System::display_number($this->map['remain']);?></b> VNĐ</div>
                            <div>Có: <b style="color:#F00"><?php echo count($this->map['items']);?></b> thành viên đăng ký từ link giới thiệu của bạn</div>
                          </div>
                          <?php if($this->map['remain']>100000){?>
                          <form method="post">
                          <input  name="total" value="<?php echo $this->map['remain'];?>" type="hidden">
                          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4" style="border:1px solid #ccc;background-color:#f1f1f1">
                          	<u><b>Số tiền của bạn hiện lớn hơn 100k</b></u>
                            <div style="font-size:11px;">Nhập thông tin vào form để rút tiền về tài khoản NH của bạn</div>
                            <textarea  name="bank" id="bank" class="form-control no-resize access_token" rows="4" placeholder="Nhập tên chủ tài khoản - Số tài khoản - Chi nhánh - Ngân hàng"><?php echo String::html_normalize(URL::get('bank',''));?></textarea>
                            <div align="right" style="margin-top:5px;padding-bottom:5px;"><button type="submit" class="btn bg-light-green waves-effect" id="submit">Rút tiền</button></div>
                          </div>
                          <input type="hidden" name="form_block_id" value="<?php echo isset(Module::$current->data)?Module::$current->data['id']:'';?>"/>
			</form >
			
			
                          <?php }?>
                          <br clear="all">
                        <h2 class="card-inside-title" style="margin-top:0px;">LỊCH SỬ RÚT TIỀN</h2>
                         <table class="table table-bordered table-striped table-hover mb0">                            
                                <thead>
                                    <tr>
                                        <th width="5%">#</th>
                                        <th width="15%">Thời gian</th>
                                        <th width="35%">Thông tin ngân hàng</th>
                                        <th width="10%">Số tiền</th>
                                        <th width="10%">Trạng thái</th>
                                        <th width="20%">Ghi chú</th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<?php $i=1;?>
                                	<?php
					if(isset($this->map['pay']) and is_array($this->map['pay']))
					{
						foreach($this->map['pay'] as $key1=>&$item1)
						{
							if($key1!='current')
							{
								$this->map['pay']['current'] = &$item1;?>
                                    <tr role="row">
                                        <td><?php echo $i++;?></td>
                                        <td><?php echo date('G:i d/m/Y',$this->map['pay']['current']['time']);?></td>
                                        <td><?php echo $this->map['pay']['current']['bank'];?></td>
                                        <td><?php echo System::display_number($this->map['pay']['current']['total']);?></td>
                                        <td><?php echo MakeMoneyDB::status($this->map['pay']['current']['status']);?></td>
                                        <td><?php echo $this->map['pay']['current']['note'];?></td>
                                    </tr>
                                	
							
						<?php
							}
						}
					unset($this->map['pay']['current']);
					} ?>   
                                </tbody>
                            </table>
                        <h2 class="card-inside-title">DANH SÁCH NGƯỜI ĐĂNG KÝ TỪ LINK CỦA BẠN </h2>
						<div>
                        <table class="table table-bordered table-striped table-hover mb0">                            
                                <thead>
                                    <tr>
                                        <th width="5%">#</th>
                                        <th width="15%">Tạo lúc</th>
                                        <th width="20%">Họ tên</th>
                                        <th width="20%">Email</th>
                                        <th width="20%">Số tiền nạp</th>
                                        <th width="20%">Số tiền bạn kiếm được</th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<?php $i=1;?>
                                	<?php
					if(isset($this->map['items']) and is_array($this->map['items']))
					{
						foreach($this->map['items'] as $key2=>&$item2)
						{
							if($key2!='current')
							{
								$this->map['items']['current'] = &$item2;?>
                                    <tr role="row">
                                        <td><?php echo $i++;?></td>
                                        <td><?php echo date('G:i d/m/Y',$this->map['items']['current']['create_date']);?></td>
                                        <td><?php echo $this->map['items']['current']['full_name'];?></td>
                                        <td><?php echo $this->map['items']['current']['email'];?></td>
                                        <td align="right"><?php echo System::display_number($this->map['items']['current']['total']);?></td>
                                        <td align="right"><?php $amount = ceil(Portal::get_setting('percen_profit')*$this->map['items']['current']['total']/100);echo System::display_number($amount);?></td>
                                    </tr>
                                	
							
						<?php
							}
						}
					unset($this->map['items']['current']);
					} ?>   
                                    <tr>
                                    	<td colspan="5" align="right"><b>Tổng tiền:</b></td>
                                        <td align="right"><b style="color:#F00"><?php echo System::display_number($this->map['total']);?></b></td>
                                    </tr>                                 
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
var clipboardDemos=new Clipboard('[data-clipboard-demo]');
clipboardDemos.on('success',function(e){
	e.clearSelection();
	alert('Copy thành công!');
});
</script>
