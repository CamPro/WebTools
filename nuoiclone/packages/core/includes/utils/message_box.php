<?php
class MessageBox
{
	function show_box($message=false,$type='error',$page=false,$param=array(),$second=2000,$title=false)
	{		
		if(!$message)
		{
			$message = Portal::language('da_co_loi_xay_ra');	
		}
		if(!$title)
		{
			$title = Portal::language('thong_bao');	
		}
		if(!$page)
		{
			$page = Url::sget('page');
		}
		echo "
		<div id=\"".$type."_message\">
			<div class=\"".$type."-title\">".$title."</div>
			<div class=\"".$type."-content\">".$message."</div>
		</div>
		<script src='packages/core/includes/js/jquery/jquery.blockUI.js'></script>
		<script>
		jQuery.blockUI({ 
				message: jQuery('#".$type."_message') ,
				css:{
					width:'410px',
					border:'0px solid #4d93c8',
					backgroundColor:'#fff',
					top: '210px',
					'-webkit-border-radius': '10px',
					'-moz-border-radius': '10px'
				},
				overlayCSS:  { 
					backgroundColor: '#ebebeb',
					opacity: 0.5
				},
				fadeIn:  600, 
				fadeOut:  1000					
			});
			setTimeout(jQuery.unblockUI, ".$second.");
			setTimeout('location = \"".Url::build($page,$param,REWRITE)."\"', '".($second+1000)."');
		</script>	
		";
	}	
	function show_star($star)
	{
		$path = 'skins/vnnay/images/shop/';
		$str = '';
		for($i=1;$i<11;$i++)
		{
			if($i<=$star)
			{
				$src = 'star_1.gif';
			}
			else
			{
				$src = 'star_0.gif';				
			}
			$str.= '<img src="'.$path.$src.'">';
		}
		return $str;
	}
}
?>