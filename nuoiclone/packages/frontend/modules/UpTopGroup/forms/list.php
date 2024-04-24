<?php
class UpTopGroupForm extends Form
{
	function UpTopGroupForm()
	{
		Form::Form('UpTopGroupForm');
		$this->link_css('skins/news/css/bootstrap-select.css');
		$this->link_js("skins/news/js/jquery.dataTables.js");
        $this->link_js("skins/news/js/dataTables.responsive.min.js");
        $this->link_js("skins/news/js/dataTables.bootstrap.js");
        $this->link_js("skins/news/js/dataTables.buttons.min.js");
        $this->link_js("skins/news/js/buttons.flash.min.js");
        $this->link_js("skins/news/js/jszip.min.js");
        $this->link_js("skins/news/js/pdfmake.min.js");
        $this->link_js("skins/news/js/vfs_fonts.js");
        $this->link_js("skins/news/js/buttons.html5.min.js");
        $this->link_js("skins/news/js/buttons.print.min.js");
		$this->link_css('skins/news/css/dataTables.bootstrap.css');
		$this->link_css('skins/news/css/dataTables.responsive.css');
		$this->link_js('skins/news/js/script.js');
		$this->link_js('skins/news/js/nouislider.js');
		$this->link_js('skins/news/js/waitMe.js');	
		$this->link_js('skins/news/js/autosize.js');				
		$this->link_css('skins/news/css/waitMe.css');
	}	
	function on_submit()
	{
		if(isset($_REQUEST['facebook_id']) and isset($_REQUEST['list']) and isset($_REQUEST['content']) and ($account = DB::fetch('select * from facebook_accounts where id='.Url::iget('facebook_id'))))
		{
			$deplay = Url::get('distance');
			$list_deplay = array();
			$list = explode(PHP_EOL,$_REQUEST['list']);
			$content = $_REQUEST['content'];
			$time = time();
			for ($i=0; $i < count($list); $i++) 
			{ 
				$list_deplay[] = $deplay*$i;
			}
			foreach($list as $key=>$value)
			{
				DB::insert('facebook_schedules_group',array(
					'account_id'=>Url::get('facebook_id'),
					'user_id'=>User::id(),
					'account_name'=>$account['fullname'],
					'type'=>'Up Top Group',
					'created'=>date("Y-m-d H:i:s"),
					'uid'=>$account['fid'],
					'uid_name'=>$account['fullname'],
					'groupid'=>$value,
					'status'=>1,
					'message'=>$content,
					'time_post_show'=>date("Y-m-d H:i:s",$time + $list_deplay[$key])
				));
			}
			Url::redirect_current();
		}
	}
	function draw()
	{
		$this->map = array();
		$cond = '1';
		if(!User::is_admin())
		{
			$cond.=' and user_id="'.User::id().'"';
		}
		$this->map['facebook_id_list'] = array('0'=>'-- Ấn vào đây để chọn tài khoản --')+String::get_list(UpTopGroupDB::get_items($cond));
		$this->parse_layout('list',$this->map);
	}
}
?>