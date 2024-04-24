<?php
include'config.php';
$tong = mysql_result(mysql_query("SELECT COUNT(*) FROM `autolike`"), 0);
$layid = mysql_query("SELECT * FROM `autolike` LIMIT $tong");
	while ($getpu = mysql_fetch_array($layid)){
		$id= $getpu['id'];
		$timecu= $getpu['time'] + 60 * 5;
		if($timecu < time()){
			mysql_query("
            DELETE FROM
               autolike
            WHERE
               id='" . mysql_real_escape_string($id) . "' 
         ");
		}
	}
?>
<?php
include'config.php';
$tong = mysql_result(mysql_query("SELECT COUNT(*) FROM `timecmt`"), 0);
$layid = mysql_query("SELECT * FROM `timecmt` LIMIT $tong");
	while ($getpu = mysql_fetch_array($layid)){
		$id= $getpu['id'];
		$timecu= $getpu['time'] + 60 * 15;
		if($timecu < time()){
			mysql_query("
            DELETE FROM
               timecmt
            WHERE
               id='" . mysql_real_escape_string($id) . "' 
         ");
		}
	}
?>
<?php
include'config.php';
$tong = mysql_result(mysql_query("SELECT COUNT(*) FROM `timefriend`"), 0);
$layid = mysql_query("SELECT * FROM `timefriend` LIMIT $tong");
	while ($getpu = mysql_fetch_array($layid)){
		$id= $getpu['id'];
		$timecu= $getpu['time'] + 60 * 15;
		if($timecu < time()){
			mysql_query("
            DELETE FROM
               timefriend
            WHERE
               id='" . mysql_real_escape_string($id) . "' 
         ");
		}
	}
?>
<?php
include'config.php';
$tong = mysql_result(mysql_query("SELECT COUNT(*) FROM `timesub1`"), 0);
$layid = mysql_query("SELECT * FROM `timesub1` LIMIT $tong");
	while ($getpu = mysql_fetch_array($layid)){
		$id= $getpu['id'];
		$timecu= $getpu['time'] + 60 * 15;
		if($timecu < time()){
			mysql_query("
            DELETE FROM
               timesub1
            WHERE
               id='" . mysql_real_escape_string($id) . "' 
         ");
		}
	}
?>
<?php
include'config.php';
$tong = mysql_result(mysql_query("SELECT COUNT(*) FROM `timeshare`"), 0);
$layid = mysql_query("SELECT * FROM `timeshare` LIMIT $tong");
	while ($getpu = mysql_fetch_array($layid)){
		$id= $getpu['id'];
		$timecu= $getpu['time'] + 60 * 15;
		if($timecu < time()){
			mysql_query("
            DELETE FROM
               timeshare
            WHERE
               id='" . mysql_real_escape_string($id) . "' 
         ");
		}
	}
?>
<?php
include'config.php';
$tong = mysql_result(mysql_query("SELECT COUNT(*) FROM `timelikevip`"), 0);
$layid = mysql_query("SELECT * FROM `timelikevip` LIMIT $tong");
	while ($getpu = mysql_fetch_array($layid)){
		$id= $getpu['id'];
		$timecu= $getpu['time'] + 60 * 5;
		if($timecu < time()){
			mysql_query("
            DELETE FROM
               timelikevip
            WHERE
               id='" . mysql_real_escape_string($id) . "' 
         ");
		}
	}
?>
<?php
include'config.php';
$tong = mysql_result(mysql_query("SELECT COUNT(*) FROM `autocmt`"), 0);
$layid = mysql_query("SELECT * FROM `autocmt` LIMIT $tong");
	while ($getpu = mysql_fetch_array($layid)){
		$id= $getpu['id'];
		$timecu= $getpu['time'] + 60 * 5;
		if($timecu < time()){
			mysql_query("
            DELETE FROM
               autocmt
            WHERE
               id='" . mysql_real_escape_string($id) . "' 
         ");
		}
	}
?>
<?php
include'config.php';
$tong = mysql_result(mysql_query("SELECT COUNT(*) FROM `timefriendvip`"), 0);
$layid = mysql_query("SELECT * FROM `timefriendvip` LIMIT $tong");
	while ($getpu = mysql_fetch_array($layid)){
		$id= $getpu['id'];
		$timecu= $getpu['time'] + 60 * 0;
		if($timecu < time()){
			mysql_query("
            DELETE FROM
               timefriendvip
            WHERE
               id='" . mysql_real_escape_string($id) . "' 
         ");
		}
	}
?>
<?php
include'config.php';
$tong = mysql_result(mysql_query("SELECT COUNT(*) FROM `skytamm`"), 0);
$layid = mysql_query("SELECT * FROM `skytamm` LIMIT $tong");
	while ($getpu = mysql_fetch_array($layid)){
		$id= $getpu['id'];
		$timecu= $getpu['time'] + 0 * 0;
		if($timecu < time()){
			mysql_query("
            DELETE FROM
               skytamm
            WHERE
               id='" . mysql_real_escape_string($id) . "' 
         ");
		}
	}
?>
