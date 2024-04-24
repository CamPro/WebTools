<fieldset id="toolbar">
    <div id="toolbar-title">
        <h4><i class="fa fa-user"></i><?php echo $_REQUEST['page_name'];?></h4>
        <div id="toolbar-content" align="right">
            <table style="float:right">
                <tbody>
                    <tr>
                        <!--IF:can_add(User::can_add(false,ANY_CATEGORY))-->
                        <td id="toolbar-save" class="toolbar-btn" align="center"><a><i class="fa fa-save"></i>[[.save.]] </a> </td>
                        <!--/IF:can_add-->
                        <td id="toolbar-help" class="toolbar-btn" align="center"><a><i class="fa fa-question-circle"></i> [[.Help.]] </a> </td>
                    </tr>
            	</tbody>
            </table>
        </div>
    </div>
    <div class="clear"></div>
    <div id="cms-content">
     <fieldset id="toolbar-gray">
	    <legend>[[.edit_information.]]</legend>
		<?php if(Form::$current->is_error()){echo Form::$current->error_messages();}?>	
        <form method="post" enctype="multipart/form-data" name="EditPersonalAdminForm" id="EditPersonalAdminForm">
            <table width="100%" cellpadding="6" cellspacing="0">
              <tbody>
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
                  <td align="right"><label for="full_name">[[.full_name.]] :</label></td>
                  <td><input name="full_name" type="text" id="full_name" maxlength="255" class="input-large"><span class="require">*</span></td>
                </tr>
                <tr>
                  <td align="right"><label for="gender">[[.gender.]] :</label></td>
                  <td><select name="gender" id="gender" size="1"></select></td>
                </tr>
                <tr>
                  <td align="right"><label for="birth_day">[[.birth_date.]] :</label></td>
                  <td><input name="birth_date" type="text" id="birth_date" class="sign-up-input-text" style="width:98px"/>
                    <em>([[.day.]] / [[.month.]] / [[.year.]])</em></td>
                </tr>
                <tr>
                  <td align="right"><label for="point">[[.point.]] :</label></td>
                  <td><input name="point" type="text" id="point" maxlength="255" value="<?php echo isset($_REQUEST['point'])?$_REQUEST['point']:0;?>" readonly="readonly" class="input-large" style="width:100px;"></td>
                </tr>
                <tr>
                  <td align="right"><label for="email">[[.Email.]] :</label></td>
                  <td><input name="email" type="text" id="email" maxlength="255" class="input-large"><span class="require">*</span></td>
                </tr>
                <tr>
                  <td align="right"><label for="website">[[.website.]] :</label></td>
                  <td><input name="website" type="text" id="website" maxlength="255"  class="input-large"></td>
                </tr>
                <tr>
                  <td align="right"><label for="address">[[.address.]]:</label></td>
                  <td><input name="address" type="text" id="address" maxlength="255"  class="input-large"><span class="require">*</span></td>
                </tr>
                <tr>
                  <td align="right"><label for="zone_id">[[.zone_id.]] :</label></td>
                  <td><select name="zone_id" id="zone_id" size="1"></select><span class="require">*</span></td>
                </tr>               
                <tr>
                  <td align="right"><label for="phone">[[.phone.]] :</label></td>
                  <td><input name="phone" type="text" id="phone" maxlength="255"  class="input-large"></td>
                </tr>
                <tr>
                  <td align="right"><label for="mobile">[[.mobile.]] :</label></td>
                  <td><input name="mobile" type="text" id="mobile" maxlength="255"  class="input-large"></td>
                </tr>
                <tr>
                  <td align="right"><label for="fax">[[.fax.]] :</label></td>
                  <td><input name="fax" type="text" id="fax" maxlength="255"  class="input-large"></td>
                </tr>
                <tr>
                  <td align="right"><label for="yahoo">[[.nick_yahoo.]] :</label></td>
                  <td><input name="yahoo" type="text" id="yahoo" maxlength="255"  class="input-large"></td>
                </tr>
                <tr>
                  <td align="right"><label for="skype">[[.nick_skype.]] :</label></td>
                  <td><input name="skype" type="text" id="skype" maxlength="255"  class="input-large"></td>
                </tr>
                <tr>
                  <td align="right"><label for="blast">[[.blast.]] :</label></td>
                  <td><input name="blast" type="text" id="blast" maxlength="255"  class="input-large"></td>
                </tr>
                 <tr>
                  <td align="right" valign="top"><label for="note">[[.note.]] :</label></td>
                  <td><textarea name="note" id="note" class="input-large" style="width:400px;height:100px"></textarea></td>
                </tr>
              </tbody>
            </table>
        </form>	
        </fieldset>
        </div>
</fieldset>
<script>
jQuery(function(){
	jQuery('#birth_date').datepicker({ yearRange: '1970:2050' });
	jQuery('#birth_date').mask("99/99/9999");
});

</script>