<div class="member-bound">
	<?php if(Form::$current->is_error()){echo Form::$current->error_messages();}?>	
	<form method="post" name="ChangeAvatar" action="?<?php echo htmlentities($_SERVER['QUERY_STRING']);?>" id="ChangeAvatar" enctype="multipart/form-data" >
		 <table width="100%" cellpadding="5" cellspacing="0">
			 <tr class="member-title">
              <td colspan="2">* [[.field_require.]]</td>
            </tr>
			 <tr>
              <td width="35%"> </td>
              <td width="65%"><img src="<?php if(Url::get('image_url')){echo Url::get('image_url');}?>" onerror="this.src='skins/default/images/no_avatar.jpg'" style="width:180px;border:1px solid #ccc;padding:1px;"/></td>
            </tr>
            <tr>
              <td align="right"><label for="image_url">[[.avatar.]]:</label></td>
              <td align="left"><input name="image_url" type="file" id="image_url" size="42" />
                <br />
                ([[.dung_luong_toi_da.]] 50 Kb)</td>
            </tr>
             <tr>
              <td align="right"><label for="verify_confirm_code">[[.ma_so_an_toan.]] :</label></td>
              <td>
                 <div style="float:left; margin-right:5px;"><img id="imgCaptcha" src="capcha.php" /></div>
                 <div style="float:left;"><input name="verify_confirm_code" type="text" id="verify_confirm_code" class="verify-confirm-code" style="width:103px;height:16px;" maxlength="4"/><span class="require">*</span></div>
               </td>
            </tr>
            <tr>
              <td></td>
              <td>
                <input type="submit" title="[[.update.]]" id="submit" name="submit" value="[[.update.]]">
                <input type="reset" title="[[.reset.]]" id="reset" name="reset" value="[[.reset.]]" /></td>
            </tr>
		</table> 
	</form>	
</div>