<?php
class MakeMoneyForm extends Form
{
	function MakeMoneyForm()
	{
		Form::Form('MakeMoneyForm');
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
		$this->link_js('https://clipboardjs.com/dist/clipboard.min.js');
	}	
	function on_submit()
	{
		if(isset($_REQUEST['total']) and $_REQUEST['total'] and isset($_REQUEST['bank']) and ($_REQUEST['total']>100000))
		{
			DB::insert('facebook_payment',array(
				'user_id'=>User::id(),
				'time'=>time(),
				'bank',
				'total',
				'status'=>0
			));
			echo '<script>alert("Yêu cầu rút tiền của bạn đã gửi thành công, chúng tôi sẽ xem xét và xử lý trong 7 ngày tới.");location="'.Url::build_current().'";</script>';
		}	
	}
	function draw()
	{
		$this->map['ref_code'] = 'http://'.$_SERVER['SERVER_NAME'].'/?page=home&act=register&ref='.base64_encode(User::id());
		$cond = 'ref="'.User::id().'"';
		$pay_cond = 'user_id="'.User::id().'"';
		if(User::is_admin())
		{
			$cond = 'ref!=""';
			$pay_cond = '1';			
		}
		$items = MakeMoneyDB::get_items($cond);
		$users = '';
		foreach($items as $key=>$value)
		{
			$users.=',"'.$value['id'].'"';
		}
		$users = substr($users,1); 
		$total = 0;
		if($users and ($upgrade = DB::fetch_all('select user_id as id,sum(total_price) as total from facebook_upgrade_account where user_id in ('.$users.') group by user_id')))
		{
			foreach($items as $k=>$v)
			{
				if(isset($upgrade[$k]))
				{
					$items[$k]['total'] = $upgrade[$k]['total'];
					$total+= $upgrade[$k]['total'];
				}
			}
		}
		$total = ceil(Portal::get_setting('percen_profit')*$total/100);
		$this->map['total'] = $total;
		$this->map['items'] = $items;
		$pay = MakeMoneyDB::get_pay($pay_cond);
		$total_pay = 0;
		foreach($pay as $key_=>$value_)
		{
			$total_pay+=$value_['total'];
		}
		$this->map['remain'] = ceil($total-$total_pay);	
		$this->map['pay'] = $pay;		
		$this->parse_layout('list',$this->map);
	}
}
?>