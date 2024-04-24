<script>
var data = <?php echo String::array2autosuggest([[=users=]]);?>;	
jQuery(document).ready(function(){
	jQuery("#account_id").autocomplete(data,{
		minChars: 0,
		width: 305,
		matchContains: true,
		autoFill: false,
		formatItem: function(row, i, max) {
			return '<span style="color:#993300"> ' + row.name + '</span>';
		},
		formatMatch: function(row, i, max) {
			return row.id + ' ' + row.name;
		},
		formatResult: function(row) {			
			return row.id;
		}
	});
	jQuery('.extra-privilege').click(function(){
		jQuery(this).colorbox({
			href:"form.php?block_id=<?php echo Module::block_id()?>&cmd=extra&portal_id=<?php echo substr(Portal::$portal_id,1);?>&account_id="+jQuery('#account_id').val(),
			iframe:true, 
			width:"600px", 
			height:"500px"
		});	
	});
});
function select_all_module(name)
{
	jQuery('form input:checkbox').each(function(e){
		if(jQuery(this).attr('name').match(name))
		{
			jQuery(this).attr('checked',!jQuery(this).attr('checked'));
		}	
	});	
}
function select_all_column(name)
{
	var checked = jQuery('#admin_'+name).attr('checked');
	jQuery('form input:checkbox').each(function(e){
		if(jQuery(this).attr('name')!= '#admin_'+name && jQuery(this).attr('name').match(name))
		{
			jQuery(this).attr('checked',checked);
		}	
	});	
}
</script>
  <fieldset id="toolbar">
	<div id="toolbar-title">
        <h4><i class="fa fa-qrcode"></i><?php echo $_REQUEST['page_name'];?> <em>(<?php echo Portal::language(Url::sget('cmd'));?>)</em></h4>
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
<?php if(Form::$current->is_error()){echo Form::$current->error_messages();}?>	
<form name="GrantPrivilege" method="post">
<table cellpadding="4" cellspacing="0" width="100%" style="#width:99%;margin-top:2px;" border="1" bordercolor="#E7E7E7" align="center">
	<tr bgcolor="#EFEFEF" valign="top">		
    <th colspan="2" align="left"><a>[[.account_id.]]</a></th>
    </tr>
  <tr>
    <td colspan="2" valign="top"><input name="account_id" type="text" id="account_id" size="40"><!--IF:cond(Url::get('cmd')=='edit' && Url::get('account_id'))--><script>jQuery('#account_id').attr('readonly',true);</script><!--/IF:cond--></td>    
    </tr>
	 <tr style="padding:10px">
    <td width="70%" valign="top">
		<table cellpadding="3" cellspacing="2" width="100%" style="#width:99%;margin-top:2px;" border="1" bordercolor="#C7C7C7" align="center">
		<tr bgcolor="<?php echo BACKGROUND;?>">
		  <th width="1%" rowspan="2"><a>[[.No.]]</a></th>
		  <th width="51" rowspan="2" align="left"><a>[[.category_name.]]</a></th>
		  <th colspan="6"><a style="text-transform:uppercase">[[.grant_privilege.]]</a>
		   <!--IF:cond(User::can_admin())--><img class="extra-privilege" src="skins/default/images/buttons/check_out.png" style="cursor:pointer"><!--/IF:cond-->
		  </th>
		  </tr>
		<tr bgcolor="<?php echo BACKGROUND;?>">
			<th width="6%" nowrap="nowrap"><a href="javascript:void(0)" onclick="select_all_module('show');">[[.run.]]</a></th>
			<th width="6%" nowrap="nowrap"><a href="javascript:void(0)" onclick="select_all_module('view');">[[.view.]]</a></th>
			<th width="6%" nowrap="nowrap"><a href="javascript:void(0)" onclick="select_all_module('add');">[[.add.]]</a></th>
			<th width="6%" nowrap="nowrap"><a href="javascript:void(0)" onclick="select_all_module('edit');">[[.edit.]]</a></th>
			<th width="6%" nowrap="nowrap"><a href="javascript:void(0)" onclick="select_all_module('delete');">[[.delete.]]</a></th>
			<th width="3%" nowrap="nowrap"><a href="javascript:void(0)" onclick="select_all_module('admin');">[[.admin.]]</a></th>
		</tr>
		  <?php $i=1;?>
		  <!--LIST:items-->
		  <tr  style="cursor:hand;<?php if(!($i%2)){echo 'background-color:'.BACKGROUND;}?>"  <?php Draw::hover(BACKGROUND_HOVER);?>>	
		  	<td align="center"><?php echo $i++;?><input name="module_[[|items.id|]]" type="hidden" value="[[|items.module_id|]]"></td>
			<td align="left">[[|items.indent|]][[|items.indent_image|]] [[|items.name|]]
			<?php if(isset($_REQUEST['privilege_id_'.[[=items.id=]]])){?>
			<input name="privilege_id_[[|items.id|]]"  value="<?php echo Url::get('privilege_id_'.[[=items.id=]]);?>" type="hidden">
			<?php }?>			</td>
			<td align="center"><input name="show_[[|items.id|]]" <?php if(Url::get('show_'.[[=items.id=]])){echo 'checked="checked"';}?> type="checkbox" id="show_[[|items.id|]]"></td>
			<td align="center"><input name="view_[[|items.id|]]" <?php if(Url::get('view_'.[[=items.id=]])){echo 'checked="checked"';}?> type="checkbox" id="view_[[|items.id|]]"></td>
			<td align="center"><input name="add_[[|items.id|]]" <?php if(Url::get('add_'.[[=items.id=]])){echo 'checked="checked"';}?> type="checkbox" id="add_[[|items.id|]]"></td>
			<td align="center"><input name="edit_[[|items.id|]]" <?php if(Url::get('edit_'.[[=items.id=]])){echo 'checked="checked"';}?> type="checkbox" id="edit_[[|items.id|]]"></td>
			<td align="center"><input name="delete_[[|items.id|]]" <?php if(Url::get('delete_'.[[=items.id=]])){echo 'checked="checked"';}?> type="checkbox" id="delete_[[|items.id|]]"></td>
			<td align="center"><input name="admin_[[|items.id|]]" <?php if(Url::get('admin_'.[[=items.id=]])){echo 'checked="checked"';}?> type="checkbox" id="admin_[[|items.id|]]" onclick="select_all_column('[[|items.id|]]')"></td>
		  </tr>
  		  <!--/LIST:items-->
		</table>
	</td>
    <!--
    <td valign="top">
		<table cellpadding="3" cellspacing="2" width="100%" style="#width:99%;margin-top:2px;" border="1" bordercolor="#C7C7C7" align="center">
          <tr bgcolor="<?php echo BACKGROUND;?>">	
            <td><b>[[.zone.]]</b></td>
          </tr>
           <?php $i=1;?>
        	<!--LIST:zone-->
           <tr style="cursor:hand;<?php if(!($i%2)){echo 'background-color:'.BACKGROUND;}?>"  <?php Draw::hover(BACKGROUND_HOVER);$i++;?>>	
            <td>
            	<input name="zone[[[|zone.id|]]]" type="checkbox" value="[[|zone.id|]]" id="zone_[[|zone.id|]]"><label for="zone_[[|zone.id|]]">[[|zone.name|]]</label>
				<?php if(isset($_REQUEST['zone_'.[[=zone.id=]]])){echo '<script>jQuery("#zone_'.[[=zone.id=]].'").attr("checked",true);</script>';}?>                
            </td>
          </tr>
         	<!--/LIST:zone-->          
        </table>
    </td>
    -->
    </tr>
</table>
</form>
</div>
</fieldset>
