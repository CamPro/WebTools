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
    <legend>[[.edit_password.]]</legend>
	<?php if(Form::$current->is_error()){echo Form::$current->error_messages();}?>	
	<form method="post" name="ChangePassword" action="?<?php echo htmlentities($_SERVER['QUERY_STRING']);?>" id="ChangePassword">
		 <table width="100%" cellpadding="5" cellspacing="0">
			 <tr class="member-title">
              <td colspan="2">* [[.field_require.]]</td>
            </tr>
			<tr class="change_pass_text">
				<td align="right" class="change_pass_text"><label for="old_password">[[.old_password.]]</label></td>
				<td align=left><input name="old_password" type="password" id="old_password" class="select-large"><span class="require">*</span></td>
			</tr>
			<tr class="change_pass_text">
				<td width=37% align="right" class="change_pass_text"><label for="new_password">[[.new_password.]]</label></td>
				<td width=63% align=left><input name="new_password" type="password" id="new_password" class="select-large"><span class="require">*</span></td>
			</tr>
			<tr class="change_pass_text">
				<td width=37% align="right"><label for="retype_new_password">[[.retype_new_password.]]</label></td>
				<td width=63% align=left><input name="retype_new_password" type="password" id="retype_new_password" class="select-large"><span class="require">*</span></td>
			</tr>            
		</table> 
	</form>	
    </fieldset>
</div>
</fieldset>