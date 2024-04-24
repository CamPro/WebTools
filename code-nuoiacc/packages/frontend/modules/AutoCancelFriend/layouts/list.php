<section class="content">
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>TỰ ĐỘNG HỦY KẾT BẠN</h2>
                    </div>
                    <div class="body">
				       <form name="AutoCancelFriendForm" id="wizard_with_validation" class="ScheduleList" data-action="<?php echo Url::build_current(array('cmd'=>'save_schedules'));?>">                         
                            <h2 class="card-inside-title">Chọn tài khoản: </h2>
                            <select name="facebook_id" class="form-control show-tick get-all-friend" data-action="<?php echo Url::build_current();?>&cmd=get_friend" required></select>
                            <div id="show-users">
                            </div>
                            <div id="input-users">
                            </div>
                            <br>
                            <center>
                            <button type="button" class="btn bg-cyan btn-block btn-lg waves-effect accept-request-friend" style="width:150px;">BẮT ĐẦU</button>
                            </center>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
