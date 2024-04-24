<section class="content">
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2> <i class="fa fa-bars" aria-hidden="true"></i> Quản lý tin nhắn Page</h2>
                    </div>
                    <div class="body">
                        <div class="filters-group">
                            <div class="input-group"><select name="facebook_id" class="form-control show-tick" id="facebook_id"></select></div>
                        </div>    
                        <fieldset style="clear:both;">
                        	<legend>Tin nhắn gần đây</legend>
                             <div class="conversations col-lg-6 col-md-6 col-sm-6 col-xs-6" style="height:569px;overflow:auto;border:1px solid #ddd;overflow-x: hidden;">
                             </div>
                             <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6" style="height:569px;border:1px solid #ddd;border-left:0px;">
                             	<div class="previewer">
                                	<div class="conversation-box">
                                    	<div class="comment-list"></div>
                                        <div class="comment-input">
                                            <div class="form-group">
                                                <div class="form-line p5">
                                                    <textarea rows="4" class="form-control no-resize post-message" name="message" placeholder="Write something..."></textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                 <div class="col-xs-12" align="right" style="margin-top:-8px;padding-right:0px;">
                                                   <button type="button" class="btn bg-light-green waves-effect btnPostCon"><i class="fa fa-paper-plane-o" aria-hidden="true"></i> Gửi ngay</button>
                                                </div>
                                            </div>
                                       </div>
									</div>
                                 </div>        
                             </div>  
						</fieldset>
                         <br clear="all"/>
                    </div>
                </div>
              </div>  
         </div>   
    </div>
</section>
<script>
function showWait (message,name) {
	$(name).waitMe({
		effect: "facebook",
		bg: "rgba(255,255,255,0.8)",
		text: message
	});
}
function hideWait (name) {
	$(name).waitMe('hide');
}
jQuery('#facebook_id').change(function(){
	jQuery('.conversations').html('');
	jQuery('.previewer').hide();
	$obj = jQuery(this);
	showWait('Đang tải dữ liệu...',".conversations");	
	$.post('<?php echo Url::build_current(array('cmd'=>'get_all_conversation'));?>',{'facebook_id':$obj.val()}, function(html){
		 hideWait('.conversations');
		 jQuery('.conversations').html(html);
		 
	},'html');
});
function conversations($obj)
{
	jQuery('.previewer').show();
	jQuery($obj).removeClass('active');
	jQuery($obj).addClass('active');
	$user_id = $obj.data('user_id');
	showWait('Đang tải dữ liệu...',".comment-list");		
	$.post('<?php echo Url::build_current(array('cmd'=>'get_conversation'));?>',{'access_token':$obj.data('token'),'message_id':$obj.data('message_id')}, function(result){
		 hideWait(".comment-list");
		 var html = '';
		 $.each(result, function(key,val){
			html+= '<div class="comment-item ng-scope '+($user_id==val['from_user_id']?'bubbledLeft':'bubbledRight')+'">';
			html+= '<p class="from-name">';
			html+= '<a target="_blank" class="ng-binding" href="http://facebook.com/'+val['from_user_id']+'">'+val['from_user_name']+'</a>';
			html+= '</p>';
			html+= '<div class="comment-box">';
			html+= '<div class="comment-avatar"><a target="_blank" href="http://facebook.com/'+val['from_user_id']+'"><img class="fb-picture" src="https://graph.facebook.com/'+val['from_user_id']+'/picture?type=small"></a></div>';
			html+= '<div id="comment-0" class="comment-content ng-binding">'+val['message']+'<p class="text-muted"><i class="fa fa-clock-o"></i>&nbsp;<span class="ng-binding">'+val['created_time']+'</span></p></div>';
			html+= '</div>';
			html+= '</div>';
		});
		jQuery('.comment-list').html(html);
		jQuery('.comment-input').show();
		
	},'json');
}
jQuery('.btnPostCon').click(function(){
	$message = jQuery('.post-message').val();
	if($message=='')
	{
		showAlert('error', 'Nhập nội dung tin nhắn');
	}
	else
	{
		$obj = jQuery('.list-group-item.active');
		$.post('<?php echo Url::build_current(array('cmd'=>'post_conversation'));?>',{'access_token':$obj.data('token'),'message_id':$obj.data('message_id'),'message':$message}, function(result){
			console.log(result)			
		},'html');
	}
});
</script>
