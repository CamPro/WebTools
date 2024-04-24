<?php
session_start();
include 'config.php';
$tongtoken = mysql_query ("SELECT  COUNT(name) FROM token");
$tongtoken2 = mysql_fetch_array($tongtoken);
$skytamm=$tongtoken2['COUNT(name)'] +5000;
$botex = mysql_query ("SELECT  COUNT(name) FROM botexlike");
$botex1 = mysql_fetch_array($botex);
$tongex=$botex1['COUNT(name)'] +500;
$autosub = mysql_query ("SELECT  COUNT(name) FROM tokensub1");
$autosub1 = mysql_fetch_array($autosub);
$tongsub=$autosub1['COUNT(name)'] +500;
$botlike = mysql_query ("SELECT  COUNT(name) FROM botlikenf");
$botlike1 = mysql_fetch_array($botlike);
$tongbot=$botlike1['COUNT(name)'] +500;
include'time.php';
?>

<!DOCTYPE html>
<!-- Sky Tâmm's -->
<html lang="vi">
<head>
<title>Bot Ex Like - Auto Like Facebook - Bot Like Facebook 2016 - BotVn.Me</title>
	<meta charset="UTF-8">
	<meta name="description" content="Bot Ex Like - Bot Like Facebook 2016 - Bot Tương Tác Sao Vàng - Bot Comments Status 2016 - Auto Like Facebook - Hack Like Facebook - Auto Sub - Hack Theo Dõi Facebook 2016" />
                  <link rel="shortcut icon" href="https://www.facebook.com/rsrc.php/yl/r/H3nktOa7ZMg.ico" />
	<meta name="author" content="Sky Tâmm's" />
	<meta name="generator" content="BOTVNME" />
	<meta name="copyright" content="BotVnMe Corporation" />
	<meta name="rating" content="general" />
	<meta name="geo.region" content="VN-SG" />
	<meta name="geo.placename" content="Ho Chi Minh, Viet Nam" />
	<meta name="geo.position" content="10.80185;106.664286" />
	<meta name="ICBM" content="10.80185, 106.664286" />
	<link rel="schema.DC" href="http://purl.org/dc/elements/1.1/" />
	<meta name="DC.title" content="Auto Like Facebook, Hack Like Facebook" />
	<meta name="DC.description" content="Hack like facebook, auto like facebook, trang web tang like facebook  nhanh " />
	<meta name="DC.subject" content="Hack Like, Auto Like, Hack Sub, Auto Theo Do~i" />
	<meta name="DC.language" scheme="UTF-8" content="vi" />
	<meta name="robots" content="index, all, follow" />
	<meta name="googlebot" content="all, index, follow" />
	<meta name="revisit-After" content="1 days" />
	<meta name="rating" content="general" />
	<link rel="author" href="https://plus.google.com/100219686960382983487" />
	<link rel="publisher" href="https://plus.google.com/100219686960382983487"/>
	<link rel="canonical" href="http://botvn.me" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="https://www.facebook.com/favicon.ico"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">  
    <link href="https://<?php echo $_SERVER['HTTP_HOST']; ?>/skytamm/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="https://<?php echo $_SERVER['HTTP_HOST']; ?>/skytamm/css/plugins/toastr/toastr.min.css" rel="stylesheet" type="text/css">
    <link href="https://<?php echo $_SERVER['HTTP_HOST']; ?>/skytamm/css/animate.css" rel="stylesheet" type="text/css">
    <link href="https://<?php echo $_SERVER['HTTP_HOST']; ?>/skytamm/css/style3.css " rel="stylesheet" type="text/css">

<link rel="stylesheet" type="text/css" href="http://github.danielcardoso.net/load-awesome/assets/loaders.css" />
</head>
    <!--
						 /$$$$$$$                                                 /$$$$$$/$$$$  
						| $$__  $$                                               | $$_  $$_  $$
						| $$  \ $$  /$$$$$$  /$$$$$$$$ /$$    / $$ /$$$$$$$      | $$ \ $$ \ $$ /$$$$$$$$
						| $$$$$$$  /$$__  $$|___ $$    \ $$  / $$ | $$__  $$     | $$ | $$ | $$| $$____/
						| $$__  $$| $$  | $$   | $$     \ $$  $$  | $$  \ $$     | $$ | $$ | $$| $$$$$$$$
						| $$  \ $$| $$  | $$   | $$      \ $$$$   | $$  | $$     | $$ | $$ | $$| $$____/
						| $$$$$$$/|  $$$$$$/   | $$	  \ $$    | $$  | $$ /$$ | $$ | $$ | $$| $$$$$$$$
						|_______/  \______/    |__/        \__/   |__/  |__/|__/ |__/ |__/ |__/\_______/
    -->
<body>

    <div id="wrapper">
<?php
	if($_SESSION['id'])
	{ ?>
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                            <img class="img-circle" width="50" height="50" src="https://graph.facebook.com/<?php echo $_SESSION['id']; ?>/picture" alt="Coday">
                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold"><?php echo $_SESSION['name']; ?> <b class="caret"></b></strong>
                             </span> <span class="text-muted text-xs block">0 VNĐ <i class="fa fa-credit-card"></i> </span> </span> </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li><a href="https://fb.com/<?php echo $_SESSION['id']; ?>">Profile</a></li>
                            <li><a href="https://fb.com/BotVn.Me.Project">Contacts</a></li>
                            <li><a>Nạp Tiền</a></li>
                            <li class="divider"></li>
                            <li><a href="logout.php">Logout</a></li>
                        </ul>
                    </div>
<?php }else{ ?>
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                            <img class="img-circle" width="50" height="50" src="https://upload.wikimedia.org/wikipedia/commons/c/cd/Facebook_logo_(square).png" alt="Coday">
                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">Adminstrator</strong>
                             </span> <span class="text-muted text-xs block">Art Director <b class="caret"></b></span> </span> </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li><a href="https://fb.com/BotVn.Me.Project">Profile</a></li>
                            <li><a href="https://fb.com/BotVn.Me.Project">Contacts</a></li>
                        </ul>
                    </div>
<?php } ?>
                    <div class="logo-element">
                       BOT
                    </div>
                </li>
                <li class="active">
                    <a href="index.php"><i class="fa fa-home"></i> <span class="nav-label" data-i18n="nav.dashboard">Trang Chủ</span></a>
                </li>
                <li>
                    <a href="about.php"><i class="fa fa-heart"></i> <span class="nav-label">Giới Thiệu</span></a>
                </li>                
	<li>
                    <a href="terms.php"><i class="fa fa-user"></i> <span class="nav-label">Điều Khoản Sử Dụng</span></a>
                </li>
                <li>
                    <a href="privacy.php"><i class="fa fa-diamond"></i> <span class="nav-label">Chính Sách Riêng Tư</span></a>
                </li>
                <li>
                    <a href="https://www.youtube.com/watch?v=Xg3hDP7kLO8" target="_blank"><i class="fa fa-youtube-play"></i> <span class="nav-label">Video Hướng Dẫn</span></a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-rocket"></i> <span class="nav-label">Khu Vực Auto</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a id="autolike"><i class="fa fa-thumbs-up"></i> Auto Like</a></li>
                        <li><a id="autocmt"><i class="fa fa-comments-o"></i> Auto Comments</a></li>
                        <li><a id="autosub"><i class="fa fa-rss"></i> Auto Sub</a></li>
                        <li><a id="autofr"><i class="fa fa-user-plus"></i> Auto Add Friends</a></li>
                        <li><a id="delstt"><i class="fa fa-calendar-times-o"></i> Auto Xóa Stt</a></li>
                        <li><a id="delfr"><i class="fa fa-user-times"></i> Auto Xóa Friends</a></li>
                        <li><a id="xacnhanfr"><i class="fa fa-user-plus"></i> Auto Confirm Fr</a></li>
                        <li><a id="autopost"><i class="fa fa-cogs"></i> Auto Post...</a></li>
                    </ul>
                </li>
                                <li>
                    <a href="#"><i class="fa fa-cogs"></i> <span class="nav-label">Khu Vực Bot</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a id="botex"><i class="fa fa-star-half-o"></i> Bot Ex Like</a></li>
                        <li><a id="botexreac"><i class="fa fa-comments"></i> Bot Ex Reactions</a></li>
                        <li><a id="botlike"><i class="fa fa-thumbs-up"></i> Bot Like New Feed</a></li>
                        <li><a id="botreac"><i class="fa fa-comments"></i> Bot Reactions</a></li>
                        <li><a id="botcmt"><i class="fa fa-comments-o"></i> Bot Comment</a></li>
                        <li><a id="botcmt_random"><i class="fa fa-comments"></i> Bot Cmt Random</a></li>
                    </ul>
                </li>
                                <li>
                    <a href="#"><i class="fa fa-bomb"></i> <span class="nav-label">Khu Vực Boom</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a id="boomlike"><i class="fa fa-bomb"></i> Boom Like</a></li>
                        <li><a id="boomcmt"><i class="fa fa-bomb"></i> Boom Comments</a></li>
                        <li><a id="boomwall"><i class="fa fa-bomb"></i> Boom Wall</a></li>
                    </ul>
                </li>
                <li>
                    <a href="vip.php"><i class="fa fa-diamond"></i> <span class="nav-label">Vip Member</span></a>
                </li>

                <li>
                    <a href="https://www.facebook.com/BotVnMe-446300185570655/?fref=ts"><i class="fa fa-facebook-square"></i> <span class="nav-label">Fanpages</span></a>
                </li>

                 <!--<li>
                    <a href="#skytamm" data-target="#myModal" data-toggle="modal" title="Select Language"><i class="fa fa-cogs"></i> <span class="nav-label">Select Language</span></a>
                </li>-->                
                <li>
                    <a href="#skytamm" data-target="#popup_id" data-toggle="modal" title="Get ID"><i class="fa fa-edit"></i> <span class="nav-label">Lấy ID Status / Ảnh...</span></a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-chain-broken"></i> <span class="nav-label">Sever Đối Tác</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="http://taifly.net/tools" target="_blank"><i class="fa fa-angle-right" aria-hidden="true"></i> TaiFly.Net</a></li>
                        <li><a href="https://www.facebook.com/BotVn.Me.Project" target="_blank"><i class="fa fa-angle-right" aria-hidden="true"></i> Liên Hệ Back Link</a></li>
                    </ul>
                </li>
            </ul>

        </div>
    </nav>

        <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
        <nav class="navbar navbar-static-top white-bg" role="navigation" style="margin-bottom: 0">
						<div class="navbar-header">
							<a class="navbar-minimalize minimalize-styl-2 btn btn-primary binded"><i class="fa fa-bars"></i></a>
						</div>
	
        </nav>



        </div>
           