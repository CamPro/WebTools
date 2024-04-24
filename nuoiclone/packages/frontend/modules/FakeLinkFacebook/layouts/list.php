<form id="wizard_with_validation" method="POST">
    <section class="content">
        <div class="container-fluid">
           <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header"><h2>FAKE LINK FACEBOOK</h2></div>
                         <div class="body" style="overflow:auto">
                             <label>Link hiển thị khi Facebook quét</label>
                                <div class="form-group">
                                    <div class="form-line">
                                        <input name="fake_link" type="text" id="fake_link" class="form-control"/>
                                    </div>
                                </div>       
                                <label>Link chuyển đến khi click từ máy tính</label>
                                <div class="form-group">
                                    <div class="form-line">
                                        <input name="link_redirect" type="text" id="link_redirect" class="form-control" required>
                                    </div>
                                </div>
                                <label>Link chuyển đến khi click từ mobile</label>
                                <div class="form-group">
                                    <div class="form-line">
                                        <input name="mobile_link_redirect" type="text" id="mobile_link_redirect" class="form-control" required>
                                    </div>
                                </div>
                                <label>Tên miền chuyển trung gian</label>
                                <div class="form-group">
                                    <div class="form-line">
                                        <select name="domain" class="form-control" id="domain"></select>
                                    </div>
                                </div>
                                <button type="submit" id="submit-form" class="btn bg-cyan btn-block btn-lg waves-effect" style="width:150px;">GHI LẠI</button>
 	                         <br/><br/><small style="color:#F00">Nếu lấy link chia sẻ lên Facebook mà không hiển thị đúng nội dung mong muốn, vui lòng <a href="https://developers.facebook.com/tools/debug/" target="_blank">nhấn vào đây</a> để xóa cache Facebook.</small>
                        </div>                             
                         <div class="header"><h2>DANH SÁCH LINK FAKE ĐÃ THÊM</h2></div>
                          <div class="body" style="overflow:auto">
                          <br/><br/>
							<table class="table table-bordered table-striped table-hover js-dataTableSchedule mb0">                            
                                <thead>
                                    <tr>
                                        <th width="5">STT</th>
                                        <th>Link</th>
                                        <th>Ngày tạo</th>
                                        <th>Lượt xem</th>
                                         <th>[[.Option.]]</th>                                     
                                    </tr>
                                </thead>
                                <tbody>
                                	<?php $i=1;?>
                                	<!--LIST:items-->
                                    <tr role="row">
                                        <td><?php echo $i++;?></td>
                                        <td>
										<input name="code" value="[[|items.domain|]][[|items.code|]]" style="width:100%;" onclick="this.focus();this.select();">
                                        <a href="[[|items.fake_link|]]" target="_blank">Link hiển thị khi Facebook quét</a><br/>
                                        <a href="[[|items.link_redirect|]]" target="_blank">Link chuyển khi click từ máy tính</a><br/>
                                        <a href="[[|items.mobile_link_redirect|]]" target="_blank">Link chuyển khi click từ mobile</a><br/>
                                        </td>
                                        <td><?php echo date('H:i d/m/Y',[[=items.time=]]);?></td>
                                        <td>[[|items.hitcount|]]</td>
                                        <td style="width: 80px;">
                                            <div class="btn-group" role="group">
                                                <a href="<?php echo Url::build_current(array('cmd'=>'edit','id'=>[[=items.id=]]));?>" class="btn bg-light-green waves-effect"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                                                <button type="button" class="btn bg-light-green waves-effect" data-action="delete" onclick="if(confirm('Bạn có chắc muốn xóa không?')){location='<?php echo Url::build_current(array('cmd'=>'delete_item','id'=>[[=items.id=]]));?>';}"><i class="fa fa-trash" aria-hidden="true"></i></button>
                                            </div>
                                        </td>                                                                                                                                                                                                                                                                                      
                                    </tr>
                                	<!--/LIST:items-->                                    
                                </tbody>
                            </table>
                          </div>
                     </div>
                 </div>
           </div>
       </div>
    </section>                        
</form>
<script>
var _type = 'extra';
autosize($('textarea[name="link_description"]'));
$('#image_url').change(function(){
	var obj = $(this);
	$('.preview-box-image').attr('src',obj.val());
});
</script>
<style>
.table.dataTable{
	border:1px solid #eee !important;	
}
</style>