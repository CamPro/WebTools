<section class="content">
  <div class="container-fluid">
  <div class="alert alert-danger">
        <strong>* LƯU Ý:</strong> TẤT CẢ CÁC CHỨC NĂNG CỦA HỆ THỐNG ĐỀU CHẠY ẨN. KHI TẮT MÁY CÁC CHỨC NĂNG VẪN HOẠT ĐỘNG BÌNH THƯỜNG
    </div>
    <div class="row">
        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box-2 bg-orange hover-zoom-effect">
                <div class="icon">
                    <i class="material-icons">send</i>
                </div>
                <div class="content">
                    <div class="text uc">Tổng xử lý</div>
                    <div class="number"><?php echo System::display_number([[=total_process=]]);?></div>
                </div>
            </div>
    
        </div>
        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box-2 bg-light-green hover-zoom-effect">
                <div class="icon">
                    <i class="material-icons">beenhere</i>
                </div>
                <div class="content">
                    <div class="text uc">Thành công</div>
                    <div class="number"><?php echo System::display_number([[=total_success=]]);?></div>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box-2 bg-red hover-zoom-effect">
                <div class="icon">
                    <i class="material-icons">sms_failed</i>
                </div>
                <div class="content">
                    <div class="text uc">Xảy ra lỗi</div>
                    <div class="number"><?php echo System::display_number([[=total_failure=]]);?></div>
    
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box-2 bg-blue hover-zoom-effect">
                <div class="icon">
                    <i class="material-icons">layers</i>
                </div>
                <div class="content">
                    <div class="text uc">Chờ xử lý</div>
                    <div class="number"><?php echo System::display_number([[=total_processing=]]);?></div>                    
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box-2 bg-purple hover-zoom-effect">
                <div class="icon">
                    <i class="material-icons">contacts</i>
                </div>
                <div class="content">
                    <div class="text uc">Số nick FB</div>
                    <div class="number"><?php echo System::display_number([[=total_profile=]]);?></div>
                </div>
            </div>
    
        </div>
        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box-2 bg-teal hover-zoom-effect">
                <div class="icon">
                    <i class="material-icons">group</i>
                </div>
                <div class="content">
                    <div class="text uc">Nhóm</div>
                    <div class="number"><?php echo System::display_number([[=total_group=]]);?></div>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box-2 bg-pink hover-zoom-effect">
                <div class="icon">
                    <i class="material-icons">library_books</i>
                </div>
                <div class="content">
                    <div class="text uc">FanPage</div>
                    <div class="number"><?php echo System::display_number([[=total_page=]]);?></div>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box-2 bg-cyan hover-zoom-effect">
                <div class="icon">
                    <i class="material-icons">toc</i>
                </div>
                <div class="content">
                    <div class="text uc">Tổng like Page</div>
                    <div class="number"><?php echo System::display_number([[=total_liked=]]);?></div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="card">
                <div class="header bg-blue-grey">
                    <h2 class="uc">Báo cáo theo ngày</h2>
                </div>
                <div class="body">
                    <div class="ajax_post_by_day"></div>
                </div>
            </div>
        </div>
    </div>    
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="card">
                <div class="header bg-blue-grey" style="border: 1px solid #ddd; border-bottom: none;">
                    <h2 class="uc">Đăng bài</h2>
                </div>
                <div class="body">
                    <div class="post_pie_chart"></div>
                </div>
                <div class="body p0">
                    <ul class="list-group">
                        <li class="list-group-item"><i class="fa fa-check col-light-green" aria-hidden="true"></i> Thành công <span class="badge bg-grey"><?php echo System::display_number([[=total_success=]]);?></span></li>
                        <li class="list-group-item"><i class="fa fa-exclamation-circle col-red" aria-hidden="true"></i> Xảy ra lỗi <span class="badge bg-grey"><?php echo System::display_number([[=total_failure=]]);?></span></li>
                        <li class="list-group-item"><i class="fa fa-repeat col-blue" aria-hidden="true"></i> Chờ xử lý <span class="badge bg-grey"><?php echo System::display_number([[=total_processing=]]);?></span></li>
                        <li class="list-group-item"><i class="fa fa-tasks col-deep-purple" aria-hidden="true"></i> Tổng cộng <span class="badge bg-grey"><?php echo System::display_number([[=total_process=]]);?></span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function(){
        $('.ajax_post_by_day').highcharts({
            title: {
                text: ''
            },
            xAxis: {
                type: 'datetime',
                dateTimeLabelFormats: {
                    day: '%b %e',
                },
                tickInterval: 0,
                labels: {
                    enabled: true,
                    formatter: function() { return moment(this.value).format("MMM D"); },
                }
            },
            yAxis: {
                title: ''
            },
            tooltip: {
                crosshairs: true,
                animation: true,
                shared: true,
            },
            series: [
                {
                    name: '[[.Post.]]',
                    data: [[[|post_by_day|]]]
                }
            ]
        });

        Analytics.Highcharts({
            element : '.post_pie_chart',
            height  : 350,
            titlex  : 'datetime',
            type    : 'pie',
            name    : '[[.Post.]]',
            data    : [[[|post_pie_chart|]]],
            dataLabels : {
                formatter: function() {
                    return this.y > 1 ? '<b>'+ this.point.name +':</b> '+ Analytics.round(this.percentage,2) +'%'  : null;
                }
            }
        });
    });
    </script>