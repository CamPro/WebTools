<fieldset id="toolbar">
    <div id="toolbar-title">
        <h4><i class="fa fa-users"></i><?php echo $_REQUEST['page_name'];?> <em>(<?php echo Portal::language(Url::sget('cmd'));?>)</em></h4>
        <div id="toolbar-content" align="right">
            <table style="float:right">
                <tbody>
                    <tr>
                        <!--IF:can_add(User::can_add(false,ANY_CATEGORY))-->
                        <td id="toolbar-save" class="toolbar-btn" align="center"><a><i class="fa fa-save"></i>[[.save.]] </a> </td>
                        <!--/IF:can_add-->          
                        <td id="toolbar-back" class="toolbar-btn" align="center"><a><i class="fa fa-chevron-left"></i>[[.back.]] </a> </td>         
                        <!--IF:can_view(User::can_view(false,ANY_CATEGORY))-->
                        <td id="toolbar-help" class="toolbar-btn" align="center"><a><i class="fa fa-question-circle"></i> [[.Help.]] </a> </td>
                        <!--/IF:can_view-->
                    </tr>
            	</tbody>
            </table>
        </div>
    </div>
    <div class="clear"></div>
    <div id="cms-content">
	<form name="EditUserAdminForm" method="post" enctype="multipart/form-data">
    	<?php if(Form::$current->is_error()){echo Form::$current->error_messages();}?>
        <fieldset id="toolbar-gray">
        <legend>[[.thong_tin_tai_khoan.]]</legend>
        <table cellpadding="4" cellspacing="0" border="0" width="100%">
            <tr>
                <td align="right"><label for="id">[[.user_name.]]</label>(<span class="require">*</span>)</td>
                <td><input name="id" type="text" id="id" class="select-large" /></td>
            </tr>
            <tr>
                <td width="35%" align="right"><label for="password">[[.password.]]</label></td>
                <td width="65%"><input name="password" type="password" id="password" class="select-large" /> </td>
            </tr>
            <tr>	
                <td align="right"><label for="active">[[.active.]]</label></td>
                <td><input name="active" id="active" type="checkbox" value="1" <?php echo (URL::get('active')?'checked':'');?> /></td>
            </tr>
            <tr>
                <td align="right"><label for="join_date">[[.create_date.]]</label></td>
                <td>
                	<div style="float:left"><input name="join_date" type="text" id="join_date" class="input" style="width:100px"></div>
                	<div style="float:left;padding-top:3px;padding-left:2px"><i class="fa fa-lg fa-calendar" style="padding-top:2px;padding-left:2px;cursor:pointer;" onclick="jQuery('#join_date').focus();"></i></div>
                 </td>
            </tr>
        </table>
        </fieldset>
		 <fieldset id="toolbar-gray" style="margin-top:30px;">  
          <legend>[[.thong_tin_ca_nhan.]]</legend>              
            	<table cellpadding="4" cellspacing="0" border="0" width="100%">
				<tr>
				<td valign="top">
					<table cellpadding="4" width="100%">
						<tr>
							<td width="22%" rowspan="9" align="center">
                           	<img src="<?php if(isset($_REQUEST['image_url'])){echo Url::get('image_url');}else{echo 'skins/default/images/no_avatar.jpg';}?>" style="width:150px;border:1px solid #999;padding:1px;">
                           	<input name="image_url" type="file" id="image_url" size="18"></td>
						  <td width="13%" align="right"><label for="full_name">[[.full_name.]]</label>(<span class="require">*</span>)</td>
							<td width="65%"><input name="full_name" type="text" id="full_name" class="input-large"/></td>
						</tr>
						<tr>
							<td align="right"><label for="address">[[.address.]]</label>(<span class="require">*</span>)</td>
							<td><input name="address" type="text" id="address" class="input-large"/></td>
						</tr>
						<tr>
						  <td align="right">Email</td>
						  <td><input name="email" type="text" id="email" class="input-large"></td>
					  </tr>
						<tr>
						  <td align="right"><label for="mobile">[[.mobile.]](<span class="require">*</span>)</label></td>
							<td><input name="mobile" type="text" id="mobile" class="input-large"></td>
						</tr>
						<tr>
						  <td align="right"><label for="birth_date">[[.birth_date.]]</label></td>
							<td>
                                <div style="float:left"><input name="birth_date" type="text" id="birth_date" class="input" style="width:100px"></div>
                                <div style="float:left;padding-top:3px;padding-left:2px"><i class="fa fa-lg fa-calendar" style="padding-top:2px;padding-left:2px;cursor:pointer;" onclick="jQuery('#birth_date').focus();"></i></div>
                            </td>
						</tr>
						<tr>
						  <td align="right">[[.gender.]]</td>
						  <td><select name="gender" id="gender" class="input"></select></td>
					  </tr>						
                        <tr>
							<td align="right">[[.yahoo.]]</td>
							<td><input name="yahoo" type="text" id="yahoo" class="input-large"/></td>
						</tr>
                        <tr>
							<td align="right">[[.skype.]]</td>
							<td><input name="skype" type="text" id="skype" class="input-large"/></td>
						</tr>
                          <tr>
							<td align="right">[[.website.]]</td>
							<td><input name="website" type="text" id="website" class="input-large"/></td>
						</tr>
                          <tr>
							<td colspan="2" align="right"><label for="point">[[.point.]]</label></td>
							<td><input name="point" type="text" id="point" class="input-large"/></td>
						</tr>
						<tr>
							<td width="35%" colspan="2" align="right"><label for="zone_id">[[.zone_id.]]</label></td>
							<td width="65%"><select name="zone_id" id="zone_id" class="select-large"></select></td>
						</tr>
                         <tr>
							<td colspan="2" align="right" valign="top"><label for="note">[[.note.]]</label></td>
							<td>
                            	<textarea name="note" id="note" style="width:90%;height:100px"></textarea>
                            </td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
		</table>		
		<input type="hidden" value="1" name="confirm_edit" >
	</form>
    </div>
</fieldset>
<script>
jQuery(document).ready(function(){
	jQuery('#birth_date').datepicker({});
	jQuery('#join_date').datepicker({});
	jQuery("#birth_date").mask("99/99/9999");
	jQuery("#join_date").mask("99/99/9999");
});	
</script>