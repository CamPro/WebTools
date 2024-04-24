<fieldset id="toolbar">
	<legend>[[.System_manage.]]</legend>
	<div id="toolbar-info">
		[[.privilege.]] <span style="font-size:16px;color:#0B55C4;">[ <?php echo Portal::language(Url::get('cmd','list'));?> ]</span>
	</div>
	<div id="toolbar-content" align="right">
	<table>
	  <tbody>
		<tr>
		 <?php if(User::can_edit()){?> <td id="toolbar-save"  align="center"><a onclick="EditPrivilegeForm.submit();"> <span title="Save"> </span> [[.Save.]] </a> </td><?php }?>
		  <?php if(User::can_view()){?><td id="toolbar-cancel"  align="center"><a href="<?php echo Url::build_current(array('cmd'=>'list'));?>#"> <span title="[[.Cancel.]]"> </span> [[.Cancel.]] </a> </td><?php }?>
		 <?php if(User::can_view()){?> <td id="toolbar-help" align="center"><a href="<?php echo Url::build_current();?>#"> <span title="Help"> </span> [[.Help.]] </a> </td><?php }?>
		</tr>
	  </tbody>
	</table>
	</div>
</fieldset>
<div style="height:8px;"></div>
<fieldset id="toolbar">
<a name="top_anchor"></a>
<?php if(Form::$current->is_error()){echo Form::$current->error_messages();}?>	
		<form name="EditPrivilegeForm" method="post"  action="?<?php echo htmlentities($_SERVER['QUERY_STRING']);?>">
		<div class="tab-pane-1" id="tab-pane-ecommerce_product">
		<!--LIST:languages-->
		<div class="tab-page" id="tab-page-ecommerce_product-[[|languages.id|]]">
			<h2 class="tab">[[|languages.name|]]</h2>
			<div class="form_input_label">[[.title.]]:</div>
			<div class="form_input">
					<input name="title_[[|languages.id|]]" type="text" id="title_[[|languages.id|]]" class="input"  style="width:300px;" >
			</div><div class="form_input_label">[[.description.]]:</div>
			<div class="form_input">
				<textarea id="description_[[|languages.id|]]" name="description_[[|languages.id|]]" cols="75" rows="20" style="width:99%; height:295px;overflow:hidden"><?php echo Url::get('description_'.[[=languages.id=]],'');?></textarea><br />
			</div>
		</div>
		<!--/LIST:languages-->
		</div>
	    <div class="form_input_label" style="clear:both">[[.package_id.]]:</div>
		<div class="form_input">
				<select name="package_id" id="package_id"></select>
		</div>
		<div class="form_input_label">[[.status.]]:</div>
		<div class="form_input">
				<select name="status" id="status"></select>
		</div>
		<div class="form_input_label">[[.function.]]:</div>
		<div class="form_input">
				<select name="category_id" id="category_id"></select>
		</div>
	<input type="hidden" value="1" name="confirm_edit"/>
	</form>
</fieldset>