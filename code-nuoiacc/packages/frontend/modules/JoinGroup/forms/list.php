<?php
class JoinGroupForm extends Form
{
	function JoinGroupForm()
	{
		Form::Form('JoinGroupForm');
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
		$this->link_css('skins/news/css/waitMe.css');
	}	
	function on_submit()
	{
		if(isset($_REQUEST['groups']) and isset($_REQUEST['facebook_id']) and Url::get('groups') and Url::get('distance') and ($account = DB::fetch('select * from facebook_accounts where id='.Url::iget('facebook_id'))))
		{
			$data = $_REQUEST['groups'];
			$deplay = Url::get('distance');
			$list_deplay = array();
			$time = time();
			if(isset($_REQUEST['time_continue']) and $_REQUEST['time_continue'] and ($schedule = DB::fetch('select id,time_post_show from facebook_schedules_group where account_id='.Url::get('facebook_id').' and status=1 order by time_post_show desc')))
			{
				$time = strtotime($schedule['time_post_show']);
			}
			for ($i=0; $i < count($data); $i++) 
			{ 
				$list_deplay[] = $deplay*$i;
			}
			foreach($data as $key=>$value)
			{
				$values = explode('|',$value);
				if(!DB::fetch('select * from facebook_schedules_group where uid='.$account['fid'].' and groupid='.$values[0]))
				{
					DB::insert('facebook_schedules_group',array(
						'account_id'=>Url::get('facebook_id'),
						'user_id'=>User::id(),
						'account_name'=>$account['fullname'],
						'type'=>'Join Group',
						'created'=>date("Y-m-d H:i:s"),
						'uid'=>$account['fid'],
						'uid_name'=>$account['fullname'],
						'groupid'=>$values[0],
						'group_name'=>$values[1],
						'status'=>1,
						'time_post_show'=>date("Y-m-d H:i:s",$time + $list_deplay[$key])
					));
				}
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
		$this->map['facebook_id_list'] = array('0'=>'-- Ấn vào đây để chọn tài khoản --')+String::get_list(JoinGroupDB::get_items($cond));
		$this->parse_layout('list',$this->map);
	}
}
?>