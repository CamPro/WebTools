<?php
class PeriodTime
{
	function period_time($time)
	{
		$period_time='';
		$day=intval((time()-$time)/24/60/60);
		$hour=intval((time()-$time)/60/60);
		$minute=intval((time()-$time)/60);
		$second=intval((time()-$time)%60);
		if($day>0)
		{
			$period_time=$day.' ngày trước';
		}
		else
		{
			if($hour>0)
			{ 
				$period_time=$hour.' giờ trước';
			}
			else
			{
				if($minute>0)
				{
					$period_time=$minute.' phút trước';
				}
				else
				{
					if($second>10)
					{
						$period_time=$second.' giây trước';
					}
					else
					{
						$period_time='Vài giây trước';
					}
				}
			}
		}
		return $period_time;
	}
}
?>