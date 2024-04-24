<script>
var data = <?php echo String::array2autosuggest([[=users=]]);?>;	
jQuery(document).ready(function(){
	jQuery("#account_id").autocomplete(data,{
		minChars: 0,
		width: 305,
		matchContains: true,
		autoFill: false,
		formatItem: function(row, i, max) {
			return '<span style="color:#993300"> ' + row.id + '</span>';
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
        <td valign="top"><p><strong>[[.account_id.]]</strong></p></td> 
        <td valign="top"><p><strong>[[.department_name.]]</strong></p></td>    
    </tr>
    <tr>
    	<td valign="top" width="30%"><input name="account_id" type="text" id="account_id" size="40"><!--IF:cond(Url::get('cmd')=='edit' && Url::get('account_id'))--><script>jQuery('#account_id').attr('readonly',true);</script><!--/IF:cond--></td>
        <td valign="top">
        	<!--LIST:department-->
            <div style="margin-bottom:10px;"><label for="department_[[|department.id|]]"><input name="department_id[[[|department.id|]]]" type="checkbox" value="[[|department.id|]]" id="department_[[|department.id|]]" <?php if($_REQUEST['department_'.[[=department.id=]]]){echo 'checked';}?>>[[|department.name|]]</label></div>
            <!--/LIST:department-->
        </td>
    </tr>
</table>
</form>
</div>
</fieldset>
