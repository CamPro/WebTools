<fieldset id="toolbar">
  <div id="toolbar-title">
    <h4><i class="fa fa-users"></i><?php echo $_REQUEST['page_name'];?> <em><!--IF:cond(isset([[=total=]]))-->(<strong style="color:#F00">[[.Have.]]: [[|total|]]</strong>)<!--/IF:cond--></em></h4>
    <div id="toolbar-content" align="right">
      <table>
        <tbody>
          <tr> 
            <!--IF:can_add(User::can_add(false,ANY_CATEGORY))-->
            <td id="toolbar-new" class="toolbar-btn" align="center"><a> <i class="fa fa-plus"></i>[[.New.]] </a></td>
            <td id="toolbar-save" class="toolbar-btn" align="center"><a onclick="jQuery('#active').val('1');document.ListUserAdminForm.submit();"> <i class="fa fa-check-square-o"></i>[[.active.]] </a></td>
            <!--/IF:can_add--> 
            <!--IF:can_delete(User::can_delete(false,ANY_CATEGORY))-->
            <td id="toolbar-trash" class="toolbar-btn" align="center"><a><i class="fa fa-trash-o"></i>[[.Trash.]] </a></td>
            <!--/IF:can_delete--> 
            <!--IF:can_view(User::can_view(false,ANY_CATEGORY))-->
            <td id="toolbar-help" class="toolbar-btn" align="center"><a><i class="fa fa-question-circle"></i> [[.Help.]] </a></td>
            <!--/IF:can_view--> 
          </tr>
        </tbody>
      </table>
    </div>
  </div>
  <div class="clear"></div>
  <div id="cms-content">
    <form name="ListUserAdminForm" method="post" id="ListUserAdminForm">
      <table cellpadding="0" cellspacing="0" width="100%" border="0" align="center" class="cms-table-up">
        <tr>
          <td align="left" nowrap style="font-weight:bold"><input name="user_id" type="text" id="user_id" style="width:300px" placeholder="[[.user_name.]]">
            <select name="is_active" id="is_active">
            </select></td>
          <td><a onclick="document.ListUserAdminForm.submit();" class="toolbar-btn gray"><i class="fa fa-filter"></i>[[.Filter.]]</a></td>
        </tr>
      </table>
      <input type="hidden" name="page_no" value="1" />
      <table cellpadding="6" cellspacing="0" width="100%" style="#width:99%;margin-top:-1px;" border="1" bordercolor="<?php echo BORDER;?>" align="center">
        <tr valign="middle" bgcolor="<?php echo BACKGROUND;?>" style="line-height:20px">
          <th width="1%" align="center">#</th>
          <th width="1%" title="[[.check_all.]]"><input type="checkbox" value="1" id="UserAdmin_all_checkbox" onclick="select_all_checkbox(this.form, 'UserAdmin',this.checked,'<?php echo BACKGROUND_HOVER;?>','white');"<?php if(URL::get('cmd')=='delete') echo ' checked';?>></th>
          <th width="15%" nowrap align="left" ><a>[[.user_name.]]</a></th>
          <th width="25%" nowrap align="left" ><a>[[.full_name.]]</a></th>
          <th nowrap align="left" ><a>[[.phone.]]</a></th>
          <th nowrap align="left" ><a>[[.join_date.]]</a></th>
          <th nowrap align="left" ><a>[[.active.]]</a></th>
          <!--IF:cond(User::can_admin(false,ANY_CATEGORY))-->
          <th nowrap align="center" width="1%"><a><i class="fa fa-cog"></i></a></th>
          <!--/IF:cond--> 
        </tr>
        <?php $i=0;
		if(Url::iget('page_no'))
		{
			$i = ([[=item_per_page=]]*(Url::iget('page_no')-1));
		}
		?>
        <!--LIST:items-->
        <tr bgcolor="<?php if((URL::get('just_edited_id',0)==[[=items.id=]]) or (is_numeric(array_search(MAP['items']['current']['id'],MAP['just_edited_ids'])))){ echo 'white';} else {echo 'white';}?>" valign="middle" <?php Draw::hover(BACKGROUND_HOVER);?> style="cursor:hand;<?php if($i%2){echo 'background-color:'.BACKGROUND;}?>" id="UserAdmin_tr_[[|items.id|]]">
          <td align="center"><?php echo ++$i;?></td>
          <td><input name="selected_ids[]" type="checkbox" value="[[|items.id|]]" onclick="select_checkbox(this.form,'UserAdmin',this,'<?php echo BACKGROUND_HOVER;?>','white');" id="UserAdmin_checkbox" <?php if(URL::get('cmd')=='delete') echo 'checked';?>></td>
          <td nowrap align="left">[[|items.id|]]</td>
          <td nowrap align="left">[[|items.full_name|]]</td>
          <td align="left">[[|items.mobile|]]</td>
          <td nowrap align="left"><?php if([[=items.time=]]){echo date('G:i d/m/Y',[[=items.time=]]);}else{echo [[=items.create_date=]];}?></td>
          <td nowrap align="left">
          	[[|items.active|]]
            <!--IF:active([[=items.active=]]=='No')-->
            &nbsp;<span style="color:#090;">[<a style="color:#090;" onclick="if(confirm('Bạn chắc chắn muốn kích hoạt tài khoản này?')){location='?page=user_admin&cmd=active&id=[[|items.id|]]';}">[[.active.]]</a>]</span>&nbsp;
            <!--/IF:active-->
          </td>
          <!--IF:cond(User::can_admin(false,ANY_CATEGORY))-->
          <td nowrap="nowrap" align="center"><a href="<?php echo Url::build('grant_privilege',array('account_id'=>[[=items.id=]],'cmd'=>'edit'));?>"><i class="fa fa-globe"></i></a> <a href="<?php echo Url::build_current(array('id'=>[[=items.id=]],'cmd'=>'edit','page_no'));?>"><i class="fa fa-edit"></i></a> <a title="[[.delete.]]" style="cursor:pointer" onclick="if(confirm('[[.are_you_sure_delete.]]')){location='<?php echo Url::build_current(array('cmd'=>'delete_item','id'=>[[=items.id=]]));?>';}"><i class="fa fa-trash-o"></i></a></td>
          <!--/IF:cond--> 
        </tr>
        <!--/LIST:items-->
      </table>
      <table  width="100%" cellpadding="6" cellspacing="0" style="background-color:#F0F0F0;border:1px solid <?php echo BORDER;?>;border-top:0px;#width:99%" align="center">
        <tr>
          <td width="30%"> [[.select.]]:&nbsp; <a onclick="select_all_checkbox(document.ListUserAdminForm,'ListUserAdminForm',true,'<?php echo BACKGROUND_HOVER;?>','<?php echo Portal::get_setting('crud_item_bgcolor','white');?>');">[[.select_all.]]</a>&nbsp; <a onclick="select_all_checkbox(document.ListUserAdminForm,'ListUserAdminForm',false,'<?php echo BACKGROUND_HOVER;?>','<?php echo Portal::get_setting('crud_item_bgcolor','white');?>');">[[.select_none.]]</a> <a onclick="select_all_checkbox(document.ListUserAdminForm,'ListUserAdminForm',-1,'<?php echo BACKGROUND_HOVER;?>','<?php echo Portal::get_setting('crud_item_bgcolor','white');?>');">[[.select_invert.]]</a></td>
          <td width="60%" nowrap="nowrap"> [[.Have.]] <strong style="color:#F00">[[|total|]]</strong> [[.member.]] [[|paging|]]</td>
          <td width="10%" align="right"><a name="bottom_anchor" href="<?php echo Url::build_current();?>#top"><img src="skins/default/images/top.gif" title="[[.top.]]" border="0" alt="[[.top.]]"></a></td>
        </tr>
      </table>
      <input type="hidden" name="cmd" id="cmd" value=""/>
      <input type="hidden" name="page_no" value="1"/>
      <input type="hidden" name="active" id="active">
      <input type="hidden" name="confirm" value="1" />
    </form>
  </div>
  <div style="#height:8px;"></div>
</fieldset>
<script>
jQuery(document).ready(function(e) {
    jQuery('.reputation').click(function(){
		if(jQuery(this).is(":checked"))
		{
			var active = 1;
		}
		else {var active = 0;}
		if(confirm('[[.are_you_sure_active_reputation.]]')){
			location='?page=user_admin&cmd=active_reputation&id='+jQuery(this).val()+'&active='+active+'';
		}
	});
});
</script>