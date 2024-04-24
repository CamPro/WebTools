<span style="display:none">
	<span id="mi_privilege_module_sample">
		<span id="input_group_#xxxx#">
        <input  name="mi_privilege_module[#xxxx#][id]" type="hidden" id="id_#xxxx#">
			<span class="multi_input">
				<select type="text" name="mi_privilege_module[#xxxx#][module_id]"  class="input-large"  id="module_id_#xxxx#" >[[|module_id_options|]]</select>
			</span><span class="multi_input" style="width:56px;padding-left:5px;padding-right:5px;text-align:center">
					<input  type="checkbox" value="1" name="mi_privilege_module[#xxxx#][view]" id="view_#xxxx#">
			</span><span class="multi_input" style="width:56px;padding-left:5px;padding-right:5px;text-align:center">
					<input  type="checkbox" value="1" name="mi_privilege_module[#xxxx#][view_detail]" id="view_detail_#xxxx#">
			</span><span class="multi_input" style="width:56px;padding-left:5px;padding-right:5px;text-align:center">
					<input  type="checkbox" value="1" name="mi_privilege_module[#xxxx#][add]" id="add_#xxxx#">
			</span><span class="multi_input" style="width:56px;padding-left:5px;padding-right:5px;text-align:center">
					<input  type="checkbox" value="1" name="mi_privilege_module[#xxxx#][edit]" id="edit_#xxxx#">
			</span><span class="multi_input" style="width:56px;padding-left:5px;padding-right:5px;text-align:center">
					<input  type="checkbox" value="1" name="mi_privilege_module[#xxxx#][delete]" id="delete_#xxxx#">
			</span>
            <span class="multi_input" style="width:56px;padding-left:20px;padding-right:5px;text-align:center">
					<input  type="checkbox" value="1" name="mi_privilege_module[#xxxx#][admin]" id="admin_#xxxx#"  onclick="select_all_column('#xxxx#');">
			</span>
			<span class="multi_input"><span style="width:20px;padding-left:5px;">
				<img src="skins/default/images/buttons/uncheck.gif" onClick="mi_delete_row($('input_group_#xxxx#'),'mi_privilege_module','#xxxx#');if(document.all)event.returnValue=false; else return false;" style="cursor:pointer;"/>
			</span></span><br>
		</span>
	</span>
</span>
 <fieldset id="toolbar" style="width:96%">
	<div id="toolbar-title">
		[[.extra_privilege.]]
	</div>
	<div id="toolbar-content" align="right">
	<table style="float:right">
	  <tbody>
		<tr>
   		  <!--IF:can_add(User::can_add(false,ANY_CATEGORY))-->
		  <td id="toolbar-save" align="center"><a onclick="document.GrantPrivilegeForm.submit();"><span title="[[.save.]]"> </span> [[.save.]] </a> </td>
		  <!--/IF:can_add-->          
		</tr>
	  </tbody>
	</table>
	</div>
    <div class="clear"></div>
	<?php if(Form::$current->is_error()){echo Form::$current->error_messages();}?>	
	<form name="GrantPrivilegeForm" method="post">
	<input name="deleted_ids" type="hidden" id="deleted_ids"/>
    <input name="selected_ids" type="hidden" id="selected_ids"/>
		<table width="100%">
	<?php if(Form::$current->is_error())
		{
		?>
		<tr bgcolor="#EFEFEF" valign="top">
		<td bgcolor="#C8E1C3"><?php echo Form::$current->error_messages();?></td>
		</tr>
		<?php
		}
		?>
		<tr valign="top">
			<td>
			 <fieldset id="toolbar" style="width:96%">
				<legend>[[.multiple_item.]]</legend>
						<span id="mi_privilege_module_all_elems">
						<span>
							<span class="multi_input_header"><span style="width:210px;float:left">[[.module_id.]]</span></span>
							<span class="multi_input_header"><span style="width:50px;text-align:center"><a href="javascript:void(0)" onclick="select_all_module('view');">[[.view.]]</a></span></span>
							<span class="multi_input_header"><span style="width:50px;text-align:center"><a href="javascript:void(0)" onclick="select_all_module('view_detail');">[[.detail.]]</a></span></span>
							<span class="multi_input_header"><span style="width:50px;text-align:center"><a href="javascript:void(0)" onclick="select_all_module('add');">[[.Add.]]</a></span></span>
							<span class="multi_input_header"><span style="width:50px;text-align:center"><a href="javascript:void(0)" onclick="select_all_module('edit');">[[.Edit.]]</a></span></span>
							<span class="multi_input_header"><span style="width:50px;text-align:center"><a href="javascript:void(0)" onclick="select_all_module('delete');">[[.Delete.]]</a></span></span>
							<span class="multi_input_header"><span style="width:50;text-align:center"><a href="javascript:void(0)" onclick="select_all_module('admin');">[[.admin.]]</a></span></span>
							<span class="multi_input_header"><span style="width:20;text-align:center"><img src="<?php echo Portal::template('core');?>/images/spacer.gif"/></span></span>
							<br>
						</span>
					</span>
				<input type="button" value="  [[.Add.]]  " onclick="mi_add_new_row('mi_privilege_module');">
			</fieldset>
			</td>
		</tr>
		</table>
			<input name="confirm_edit" type="hidden" value="1" id="confirm_edit"/>
	</form>
<script type="text/javascript">
mi_init_rows('mi_privilege_module',
	<?php if(isset($_REQUEST['mi_privilege_module']))
	{
		echo String::array2js($_REQUEST['mi_privilege_module']);
	}
	else
	{
		echo '{}';
	}
	?>
);
function select_all_module(action)
{
	if(typeof(all_forms['mi_privilege_module'])!='undefined')
	{
		var checked = -1;
		for(var i=0;i<all_forms['mi_privilege_module'].length;i++)
		{
			if(checked==-1)
			{
				checked = !$(action+'_'+all_forms['mi_privilege_module'][i]).checked;
			}
			$(action+'_'+all_forms['mi_privilege_module'][i]).checked=checked;
		}
	}
}
function select_all_column(index)
{
	$('add_'+index).checked=$('admin_'+index).checked;
	$('edit_'+index).checked=$('admin_'+index).checked;
	$('delete_'+index).checked=$('admin_'+index).checked;
	$('view_'+index).checked=$('admin_'+index).checked;
	$('view_detail_'+index).checked=$('admin_'+index).checked;
}
</script>
