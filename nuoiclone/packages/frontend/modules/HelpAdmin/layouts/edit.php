<section class="content">
    <div class="container-fluid">
         <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                            <i class="fa fa-user" aria-hidden="true"></i> <?php if(Url::get('cmd')=='add'){echo 'Thêm mới hướng dẫn';}else{echo 'Sửa hướng dẫn';}?> 
                        </h2>
                    </div>
                    <div class="body">
                        <div class="row">
                            <div class="col-sm-12 mb0">
                                <form method="post">
                                    <input  type="hidden" class="form-control" name="id" value="<?php echo Url::get('id');?>">
                                    <b>Tiêu đề hướng dẫn</b>
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input name="title" type="text" id="title" class="form-control">
                                        </div>
                                    </div>
                                    <b>Cấp hiển thị</b>
                                    <div class="form-group">
                                        <div class="form-line">
                                            <select name="level" id="level" class="form-contron"></select>
                                        </div>
                                    </div>
                                    <b>Vị trí</b>
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input name="position" type="text" id="position" class="form-control">
                                        </div>
                                    </div>
                                    <b>Nội dung hướng dẫn</b>
                                    <div class="form-group">
                                        <div class="form-line">
											<textarea  name="content" id="content" rows="15" class="form-control no-resize"><?php if(isset($_REQUEST['content'])){echo $_REQUEST['content'];}?></textarea>
                                        </div>
                                    </div>
                                    <button type="submit" class="btn bg-red waves-effect">Ghi lại</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>        
   </div>
</section>
  <script>advance_mce('#content');</script> 
