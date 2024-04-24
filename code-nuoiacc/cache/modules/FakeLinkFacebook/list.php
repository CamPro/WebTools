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
                                        <input  name="fake_link" id="fake_link" class="form-control"/ type ="text" value="<?php echo String::html_normalize(URL::get('fake_link'));?>"/>
                                    </div>
                                </div>       
                                <label>Link chuyển đến khi click từ máy tính</label>
                                <div class="form-group">
                                    <div class="form-line">
                                        <input  name="link_redirect" id="link_redirect" class="form-control" required type ="text" value="<?php echo String::html_normalize(URL::get('link_redirect'));?>"/>
                                    </div>
                                </div>
                                <label>Link chuyển đến khi click từ mobile</label>
                                <div class="form-group">
                                    <div class="form-line">
                                        <input  name="mobile_link_redirect" id="mobile_link_redirect" class="form-control" required type ="text" value="<?php echo String::html_normalize(URL::get('mobile_link_redirect'));?>"/>
                                    </div>
                                </div>
                                <label>Tên miền chuyển trung gian</label>
                                <div class="form-group">
                                    <div class="form-line">
                                        <select  name="domain" class="form-control" id="domain"><?php
					if(isset($this->map['domain_list']))
					{
						foreach($this->map['domain_list'] as $key=>$value)
						{
							echo '<option value="'.$key.'"';
							echo '>'.$value.'</option>';
							
						}
					}
					?><?php if(isset($_REQUEST['domain']) or isset($this->map['domain'])){?><script type="text/javascript">document.getElementById('domain').value = "<?php echo addslashes(URL::get('domain',isset($this->map['domain'])?$this->map['domain']:''));?>";</script><?php }?></select>
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
                                         <th><?php echo Portal::language('Option');?></th>                                     
                                    </tr>
                                </thead>
                                <tbody>
                                	<?php $i=1;?>
                                	<?php
					if(isset($this->map['items']) and is_array($this->map['items']))
					{
						foreach($this->map['items'] as $key1=>&$item1)
						{
							if($key1!='current')
							{
								$this->map['items']['current'] = &$item1;?>
                                    <tr role="row">
                                        <td><?php echo $i++;?></td>
                                        <td>
										<input name="code" value="<?php echo $this->map['items']['current']['domain'];?><?php echo $this->map['items']['current']['code'];?>" style="width:100%;" onclick="this.focus();this.select();">
                                        <a href="<?php echo $this->map['items']['current']['fake_link'];?>" target="_blank">Link hiển thị khi Facebook quét</a><br/>
                                        <a href="<?php echo $this->map['items']['current']['link_redirect'];?>" target="_blank">Link chuyển khi click từ máy tính</a><br/>
                                        <a href="<?php echo $this->map['items']['current']['mobile_link_redirect'];?>" target="_blank">Link chuyển khi click từ mobile</a><br/>
                                        </td>
                                        <td><?php echo date('H:i d/m/Y',$this->map['items']['current']['time']);?></td>
                                        <td><?php echo $this->map['items']['current']['hitcount'];?></td>
                                        <td style="width: 80px;">
                                            <div class="btn-group" role="group">
                                                <a href="<?php echo Url::build_current(array('cmd'=>'edit','id'=>$this->map['items']['current']['id']));?>" class="btn bg-light-green waves-effect"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                                                <button type="button" class="btn bg-light-green waves-effect" data-action="delete" onclick="if(confirm('Bạn có chắc muốn xóa không?')){location='<?php echo Url::build_current(array('cmd'=>'delete_item','id'=>$this->map['items']['current']['id']));?>';}"><i class="fa fa-trash" aria-hidden="true"></i></button>
                                            </div>
                                        </td>                                                                                                                                                                                                                                                                                      
                                    </tr>
                                	
							
						<?php
							}
						}
					unset($this->map['items']['current']);
					} ?>                                    
                                </tbody>
                            </table>
                          </div>
                     </div>
                 </div>
           </div>
       </div>
    </section>                        
<input type="hidden" name="form_block_id" value="<?php echo isset(Module::$current->data)?Module::$current->data['id']:'';?>"/>
			</form >
			
			
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