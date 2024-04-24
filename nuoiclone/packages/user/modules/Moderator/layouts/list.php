<fieldset id="toolbar">
    <div id="toolbar-title">
        <h4><i class="fa fa-users"></i><?php echo $_REQUEST['page_name'];?></h4>
        <div id="toolbar-content" align="right">
            <table>
                <tbody>
                    <tr>
                        <!--IF:can_add(User::can_add(false,ANY_CATEGORY))-->
                        <td id="toolbar-new" class="toolbar-btn" align="center"><a> <i class="fa fa-plus"></i>[[.New.]] </a> </td>
                        <!--/IF:can_add-->
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
	<form name="ListModeratorForm" method="post" id="ListModeratorForm" action="?<?php echo htmlentities($_SERVER['QUERY_STRING']);?>">
    <?php if(User::can_view(false,ANY_CATEGORY)){?>
    <table cellpadding="0" cellspacing="0" width="100%" border="0" align="center" class="cms-table-up">
                <tr>
                    <td align="right">
					<input name="user_id" type="text" id="user_id" size="30" placeholder="[[.user_name.]]"/>
					</td>
                    <td align="right" width="8%"><a name="filter" onclick="document.ListModeratorForm.submit();" class="toolbar-btn gray"><i class="fa fa-filter"></i>[[.Filter.]]</a></td>
                </tr>
        </table>
        <?php }?>
	<table cellpadding="6" cellspacing="0" width="100%" style="#width:99%;margin-top:4px;" border="1" bordercolor="<?php echo BORDER;?>" align="center">
		<tr bgcolor="<?php echo BACKGROUND;?>" valign="middle">		
			<th width="3%" title="[[.check_all.]]">#</th>				
				<th width="20%" title="[[.check_all.]]" align="left"><a>[[.account_id.]]</a></th>
				<th width="28%" align="left" nowrap><a>[[.full_name.]]</a></th>
		        <th width="23%" align="left" nowrap><a>[[.email.]]</a></th>
		        <th width="16%" align="left" nowrap><a>[[.phone.]]</a></th>
			    <!--IF:cond1(User::can_admin(false,ANY_CATEGORY))--><th width="2%" title="[[.check_all.]]"><a><i class="fa fa-cog"></i></a></th><!--/IF:cond1-->
			</tr>
			<?php $i = 0;?>
			<!--LIST:items-->
				<tr bgcolor="<?php if((URL::get('just_edited_id',0)==[[=items.id=]]) or (is_numeric(array_search(MAP['items']['current']['id'],[[=just_edited_ids=]])))){ echo BACKGROUND_HOVER;} else {echo 'white';}?>" valign="middle" <?php Draw::hover(BACKGROUND_HOVER);?> style="cursor:hand;<?php if($i++%2){echo 'background-color:'.BACKGROUND;}?>" id="Moderator_tr_[[|items.id|]]">
					<td align="center"><?php echo $i;?></td />
				   <td width="14%">[[|items.account_id|]]</td />
					<td width="28%" align="left"  nowrap>[[|items.full_name|]]</td>
		            <td width="23%" align="left"  nowrap>[[|items.email|]]</td>
	                <td width="16%" align="left"  nowrap>[[|items.mobile|]]</td>
				    <!--IF:cond1(User::can_admin(false,ANY_CATEGORY))-->
                    	<td width="2%" nowrap="nowrap">
                        	<a href="<?php echo Url::build_current(array('cmd'=>'edit','account_id'=>[[=items.account_id=]],'portal_id'=>[[=items.portal_id=]]));?>"><i class="fa fa-edit"></i></a>
		                    <a onclick="if(confirm('[[.are_you_sure_delete.]]')){location='<?php echo Url::build_current(array('account_id'=>[[=items.account_id=]],'portal_id'=>[[=items.portal_id=]],'cmd'=>'delete_item'));?>';}"><i class="fa fa-trash-o"></i></a>
                        </td>
                    <!--/IF:cond1-->
				</tr>
			<!--/LIST:items-->
		</table>		
	 <table width="100%" cellpadding="6" cellspacing="0" style="background-color:#F0F0F0;border:1px solid <?php echo BORDER?>;border-top:0px;height:8px;#width:99%" align="center">
  <tr>
			<td>
				[[.select.]]:&nbsp;
				<a onclick="select_all_checkbox(document.ListModeratorForm,'ListModeratorForm',true,'<?php echo BACKGROUND_HOVER;?>','<?php echo Portal::get_setting('crud_item_bgcolor','white');?>');">[[.select_all.]]</a>&nbsp;
				<a onclick="select_all_checkbox(document.ListModeratorForm,'ListModeratorForm',false,'<?php echo BACKGROUND_HOVER;?>','<?php echo Portal::get_setting('crud_item_bgcolor','white');?>');">[[.select_none.]]</a>
				<a onclick="select_all_checkbox(document.ListModeratorForm,'ListModeratorForm',-1,'<?php echo BACKGROUND_HOVER;?>','<?php echo Portal::get_setting('crud_item_bgcolor','white');?>');">[[.select_invert.]]</a>
			</td>
			<td>[[|paging|]]</td>
			<td align="right">
				<a name="bottom_anchor" href="#top_anchor"><img alt="" src="skins/default/images/top.gif" title="[[.top.]]" border="0" alt="[[.top.]]"></a>
			</td>			
		</tr>
		</table>
		<input type="hidden" name="cmd" id="cmd"/>
	</form>
    </div>
</fieldset>
