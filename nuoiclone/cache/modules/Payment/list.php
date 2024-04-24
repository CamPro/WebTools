<section class="content">
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>  <i class="fa fa-bars" aria-hidden="true"></i> Thanh toán hoa hồng cho thành viên</h2>
                    </div>
                    <div class="clearfix"></div>
					 <div class="body p0" style="margin:10px;">
                        <table class="table table-bordered table-striped table-hover js-dataTableSchedule mb0">                        
                            <thead>
                                <tr>
                                    <th width="5%">#</th>
                                    <th width="15%">Thời gian</th>
                                    <th width="35%">Thông tin ngân hàng</th>
                                    <th width="10%">Số tiền</th>
                                    <th width="10%">Trạng thái</th>
                                    <th width="20%">Ghi chú</th>
                                    <th></th>
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
                                    <td><?php echo PaymentDB::status($this->map['pay']['current']['status']);?></td>
                                    <td><?php echo $this->map['pay']['current']['note'];?></td>
                                    <td style="width: 80px;">
                                        <div class="btn-group" role="group">
                                            <a title="Xử lý" href="<?php echo Url::build_current(array('cmd'=>'edit','id'=>$this->map['pay']['current']['id']));?>" class="btn bg-light-green waves-effect"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                                        </div>
                                    </td>
                                </tr>
                                
							
						<?php
							}
						}
					unset($this->map['pay']['current']);
					} ?>   
                            </tbody>
                        </table>
                        <br/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>