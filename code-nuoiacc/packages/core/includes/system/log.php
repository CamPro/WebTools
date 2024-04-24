<?php
function save_log($id,$name=false,$page=false,$cmd=false)
{
	if(!$cmd)
	{
		$cmd = Url::get('cmd');
	}
	if(!$page)
	{
		$page = Url::get('page');
	}
	if(Portal::get_setting('use_log'))
	{
		System::log(
			$cmd
			,$cmd.' '.Module::$current->data['module']['name']
			,User::id().' have '.$cmd.' : <a target="_blank" href="'.Url::build($page,array('cmd'=>($cmd=='add'?'edit':$cmd),'id'=>$id)).'" style="font-weight:bold;color:#ff0000;">'.($name?$name:$id).'</a> at time '.date('h\h:i:s d/m/Y',time())
			,''
			,''
			,User::id()
		);
	}
}
function save_recycle_bin($table,$row)
{
	if(Portal::get_setting('use_recycle_bin'))
	{
		$sql = insert($table,$row);
		$path = 'backup/recycle bin/';
		$file = $table.'.'.$row['id'];
		require_once 'packages/core/includes/utils/upload_file.php';
		write_file($path.$file.'.sql',$sql);
		if(isset($row['image_url']) and file_exists($row['image_url']))
		{
			$name = substr($row['image_url'],strrpos($row['image_url'],'/')+1);
			@copy($row['image_url'],$path.$name);
		}
		if(isset($row['small_thumb_url']) and file_exists($row['small_thumb_url']))
		{
			$name = substr($row['small_thumb_url'],strrpos($row['small_thumb_url'],'/')+1);
			@copy($row['small_thumb_url'],$path.$name);
		}
		if(isset($row['icon_url']) and file_exists($row['icon_url']))
		{
			$name = substr($row['icon_url'],strrpos($row['icon_url'],'/')+1);
			@copy($row['icon_url'],$path.$name);
		}
	}
}
function insert($table, $values, $replace=false)
{
	if($replace)
	{
		$query='replace';
	}
	else
	{
		$query='insert into';
	}
	$query.=' `'.$table.'`(';
	$i=0;
	if(is_array($values))
	{
		foreach($values as $key=>$value)
		{
			if(($key===0) or is_numeric($key))
			{
				$key=$value;
			}
			if($key)
			{
				if($i<>0)
				{
					$query.=',';
				}
				$query.='`'.$key.'`';
				$i++;
			}
		}
		$query.=') values(';
		$i=0;
		foreach($values as $key=>$value)
		{
			if(is_numeric($key) or $key===0)
			{
				$value=Url::get($value);
			}
			if($i<>0)
			{
				$query.=',';
			}

			if($value==='NULL')
			{
				$query.='NULL';
			}
			else
			{
				$query.='\''.DB::escape($value).'\'';
			}
			$i++;
		}
		$query.=')';			
	}
	return $query;
}
?>