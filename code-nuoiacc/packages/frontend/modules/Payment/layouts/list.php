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
                                <!--LIST:pay-->
                                <tr role="row">
                                    <td><?php echo $i++;?></td>
                                    <td><?php echo date('G:i d/m/Y',[[=pay.time=]]);?></td>
                                    <td>[[|pay.bank|]]</td>
                                    <td><?php echo System::display_number([[=pay.total=]]);?></td>
                                    <td><?php echo PaymentDB::status([[=pay.status=]]);?></td>
                                    <td>[[|pay.note|]]</td>
                                    <td style="width: 80px;">
                                        <div class="btn-group" role="group">
                                            <a title="Xử lý" href="<?php echo Url::build_current(array('cmd'=>'edit','id'=>[[=pay.id=]]));?>" class="btn bg-light-green waves-effect"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                                        </div>
                                    </td>
                                </tr>
                                <!--/LIST:pay-->   
                            </tbody>
                        </table>
                        <br/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>