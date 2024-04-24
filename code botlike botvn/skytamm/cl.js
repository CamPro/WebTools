function loading()
{
   $('#view').html('<center><h1>LOADING...</h1><br><i class="fa fa-spinner fa-pulse fa-5x fa-fw"></i></center>');
}
function copystt()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'view/auto/copystt.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}
function delstt()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'view/auto/delstt.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}

function autolike()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'auto/like.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}
function postfriend()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'view/auto/postfriend.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}
function autosub()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'auto/sub.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}

function autoshare()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'view/auto/share.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}
function autopost()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'view/auto/post.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}


function autoaddfriend()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'view/auto/friend.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}

function autoxacnhan()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'view/auto/xacnhanfriend.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}
function autoxoafrien()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'view/auto/xoafriend.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}
function autopage()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'view/auto/page.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}

function autounlike()
{
 loading()
 try{
   $.ajax({
     type: "GET",
     url:'view/auto/unlikepage.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}
function autocmt()
{
 loading()
 try{
   $.ajax({
     type: "GET",
     url:'view/auto/cmt.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}





// KHU VUC BOOM LIKE


function boomlike()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'view/boom/like.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}
function boomwall()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'view/boom/wall.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}
function boomcmt()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'view/boom/cmt.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}


// KHU VUC BOT LIKE

function botlike()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'view/bot/like.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}
function botex()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'view/bot/ex.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}
function botcmt()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'view/bot/cmt.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}

function botsv()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'view/bot/sv.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}

// KHU VUC TOOL

function getlink()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'view/tool/getlink.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}
