function loading()
{
   $('#view').html('<center><h1>LOADING...</h1><br><i class="fa fa-spinner fa-pulse fa-5x fa-fw"></i></center>');
}
$('#autolike').click(function()
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
);
$('#autocmt').click(function()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'auto/cmt.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}
);
$('#autosub').click(function()
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
);
$('#autofr').click(function()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'auto/friend.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}
);
$('#delstt').click(function()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'auto/delstt.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}
);
$('#delfr').click(function()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'auto/delfr.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}
);
$('#xacnhanfr').click(function()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'auto/xacnhanfr.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}
);
$('#autopost').click(function()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'auto/post.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}
);
//ENDAUTO
$('#botex').click(function()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'auto/post.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}
);
$('#botexreac').click(function()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'auto/post.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}
);
$('#botlike').click(function()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'auto/post.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}
);
$('#botreac').click(function()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'auto/post.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}
);
$('#botcmt').click(function()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'auto/post.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}
);
$('#botcmt_random').click(function()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'auto/post.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}
);
//ENDBOT
$('#boomlike').click(function()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'auto/post.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}
);$('#boomwall').click(function()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'auto/post.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}
);
$('#boomcmt').click(function()
{
 loading()
	try{
   $.ajax({
     type: "GET",
     url:'auto/post.php',
     data: {},
     success: function(data) {
          $('#view').html(data);
     }
   });} catch (e) {$('#view').html('Failure');}
}
);

