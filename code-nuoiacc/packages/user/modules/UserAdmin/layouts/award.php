<fieldset id="toolbar">
    <div id="toolbar-title">
        [[.award_for_member.]]<!--IF:cond(isset([[=total=]]))-->(<strong style="color:#F00">[[.Have.]]: [[|total|]]</strong>)<!--/IF:cond-->
    </div>
    <div id="toolbar-content" align="right">
    <table>
      <tbody>
        <tr>
        <!--IF:can_add(User::can_add(false,ANY_CATEGORY))-->
        <td id="toolbar-save" align="center"><a> <span title="[[.award.]]"> </span> [[.award.]] </a> </td>
        <!--/IF:can_add-->
         <!--IF:can_view(User::can_view(false,ANY_CATEGORY))-->
          <td id="toolbar-list" align="center"><a> <span title="[[.List.]]"> </span> [[.List.]] </a> </td>
          <td id="toolbar-help" align="center"><a> <span title="[[.Help.]]"> </span> [[.Help.]] </a> </td>
         <!--/IF:can_view-->
        </tr>
      </tbody>
    </table>
    </div>
    <div class="clear"></div>
	<form name="ListUserAdminForm" method="post">
		<table cellpadding="5" cellspacing="0" width="100%" bgcolor="<?php echo BACKGROUND_HOVER;?>" border="1" bordercolor="<?php echo BORDER;?>">
			<tr>
				<td align="left" nowrap style="font-weight:bold">[[.user_name.]]
					<input name="user_id" type="text" id="user_id" style="width:300">
					<input name="filter" type="submit" value="[[.search.]]" id="filter">				
				</td>
			</tr>
		</table>
		<input type="hidden" name="page_no" value="1" />
		<table cellpadding="6" cellspacing="0" width="100%" style="#width:99%;margin-top:-1px;" border="1" bordercolor="<?php echo BORDER;?>" align="center">
		<tr valign="middle" bgcolor="<?php echo TITLE;?>" style="line-height:20px">
        	<th align="center" width="1%"><a>[[.No.]]</a></th>
			<th width="15%" nowrap align="left" ><a>[[.user_name.]]</a></th>
            <th nowrap align="left" ><a>[[.full_name.]]</a></th>
            <th width="15%" align="left"><a>[[.point.]]</a></th>
            <th width="15%" align="left"><a>[[.award.]]</a></th>
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
			<td nowrap align="left">[[|items.id|]]</td>
			<td nowrap align="left">[[|items.full_name|]]</td>
			<td nowrap align="right">[[|items.point|]]</td>
			<td nowrap align="right">
            	<input name="items[[[|items.id|]]][award]" type="text" style="width:100px">
            </td>
		</tr>
		<!--/LIST:items-->
	  </table>		
        <table  width="100%" cellpadding="6" cellspacing="0" style="background-color:#F0F0F0;border:1px solid <?php echo BORDER;?>;border-top:0px;#width:99%" align="center">
			<tr>
                <td width="20%">[[.Have.]]: <strong>[[|total|]]</strong> [[.member.]]</td>
                <td width="70%">[[|paging|]]</td>
                <td width="10%" align="right">
                    <a name="bottom_anchor" href="<?php echo Url::build_current();?>#top"><img src="skins/default/images/top.gif" title="[[.top.]]" border="0" alt="[[.top.]]"></a>				
                </td>
            </tr>
        </table>
		<input type="hidden" name="cmd" id="cmd" value="award"/>
		<input name="page_no" type="hidden" id="page_no">
		<input type="hidden" name="confirm" value="1" />
</form>
<div style="#height:8px;"></div>
</fieldset>