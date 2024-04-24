<?php
class ListModeratorForm extends Form
{
	function ListModeratorForm()
	{
		Form::Form('ListModeratorForm');
		$this->link_css('skins/default/css/cms.css');
	}
	function draw()
	{		
		$this->get_just_edited_id();
		$this->get_select_condition();
		$this->get_paging();
		$items = ModeratorDB::get_items($this->cond, $this->item_per_page);
		$staff = '';
		$staff['admin'] = 'admin';
		$staff['manhtien'] = 'manhtien';
		foreach($items as $key=>$value)
		{
			$staff[$value['account_id']] = $value['account_id'];
		}
		file_put_contents('cache/staff.php','<?php $staff = '.var_export($staff,true).'?>');
		$this->paging;
		$this->parse_layout('list',$this->just_edited_id+
			array(
				'items'=>$items,
				'paging'=>$this->paging,
				'total_page'=>$this->total_item,
			)
		);
	}
	function get_just_edited_id()
	{
		$this->just_edited_id['just_edited_ids'] = array();
		if (UrL::get('selected_ids'))
		{

			if(is_string(UrL::get('selected_ids')))

			{

				if (strstr(UrL::get('selected_ids'),','))

				{

					$this->just_edited_id['just_edited_ids']=explode(',',UrL::get('selected_ids'));

				}

				else

				{

					$this->just_edited_id['just_edited_ids']=array('0'=>UrL::get('selected_ids'));

				}

			}

		}

	}

	function get_paging()

	{

		if (Url::get('item_per_page'))

		{

			$this->item_per_page = Url::get('item_per_page');

		}else

		{

			$this->item_per_page = 100;

		}

		$this->total_item = ModeratorDB::get_item_count($this->cond);

		require_once 'packages/core/includes/utils/paging.php';

		$this->paging = paging($this->total_item,$this->item_per_page,4);

	}

	function get_select_condition()

	{

		$this->cond = ' 1 '.((URL::get('cmd')=='delete' and is_array(URL::get('selected_ids')))?' and `privilege`.id in ("'.join(URL::get('selected_ids'),'","').'")':'');

		if(isset($_REQUEST['user_id']))

		{

			$this->cond .= ' and account.id like "%'.Url::sget('user_id').'%"';

		}

	}

	

}

?>