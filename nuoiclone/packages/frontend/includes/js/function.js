function add_shopcart(id,portal_id)
{
	if(!jQuery('#insert_shopcart').hasClass('isset-shopcart')){
		add_shopcart_ajax('id='+id+'&portal_id='+portal_id+'&cmd=add_shopcart');
	}
}
function add_shopcart_ajax(pram)
{
	var i = 0;
	jQuery.ajax({
		method: "POST",
		url: 'add_shopcart.php?',
		data : pram,
		success: function(content){
			jQuery('#loading_add_shopcart').fadeIn(100).fadeOut(2000);
			jQuery('#insert_shopcart').addClass('isset-shopcart').val(all_words['[[.have_in_shopcart.]]']);
			jQuery('#product_number_in_shopcart').html(content);
			//jQuery('#add_to_shopcart div div').html('Đã có trong giở hàng');
			//document.getElementById('module_'+block).innerHTML=content;
		}
	});
}
function update_shopcart(id,quantity,shop_id){
	jQuery.ajax({
		method: "POST",
		url: 'add_shopcart.php?',
		data : '&id='+id+'&quantity='+quantity+'&shop_id='+shop_id+'&cmd=update_shop_cart',
		success: function(content){
			//alert(content);
			if(content=='error'){
				alert(all_words['[[.update_quantity_is_invalid.]]']); return false;
			}else{
				eval(content);
				jQuery('#total_'+id).html(product_price);
				jQuery('#total_amount_'+shop_id).html(shop_price);
			}
			//document.getElementById('module_'+block).innerHTML=content;
		}
	});
}
function delete_shopcart(id,shop_id){
	if(confirm(all_words['[[.are_you_sure_delete.]]'])){
		jQuery.ajax({
			method: "POST",
			url: 'add_shopcart.php?',
			data : '&id='+id+'&shop_id='+shop_id+'&cmd=delete_shop_cart',
			success: function(content){
				if(content=='error'){
					alert(all_words['[[.delete_is_invalid.]]']); return false;
				}else{
					eval(content);
					if(check_shop){
						jQuery('#'+id).parent().parent().parent().parent().remove();
					}else{
						jQuery('#'+id).parent().remove();
						jQuery('#total_amount_'+shop_id).html(shop_price);
						//var total = '0';
						//if(parseInt(jQuery('.product-in-shopcart').html()-1) > 0) total = parseInt(jQuery('.product-in-shopcart').html()-1);
						//jQuery('.product-in-shopcart').html(total);
						//document.getElementById('module_'+block).innerHTML=content;
					}
					if(check_shopcart){
						jQuery('#shopCartForm').append('<h3 align="center" class="pad-10">'+all_words["[[.have_not_product_in_shopcart.]]"]+'</h3>');
					}
				}
			}
		});
	}
}
function add_favorite(ids,type,user_id,show_box){
	if(!jQuery('.add-favorite').hasClass('isset-favorite')){
		jQuery.ajax({
			method: "POST",
			url: 'add_favorite.php?',
			data : '&ids='+ids+'&type='+type+'&user_id='+user_id+'&cmd=add_favorite',
			success: function(content){
				if(content=='error'){
					alert(all_words['[[.add_favorite_is_invalid.]]']); return false;
				}else{
					if(show_box)
					{
						alert(all_words['[[.this_product_saved.]]'])
					}
					else
					{
						jQuery('.add-favorite').addClass('isset-favorite').html(all_words['[[.saved.]]']);
					}
				}
			}
		});
	}else{
		alert(all_words['[[.da_co_trong_muc_yeu_thich_cua_ban.]]']);
	}
}
function up_time(id,user_id,up_time_point,item_per_page_history){
	if(confirm(all_words['[[.ban_muon_lam_moi_tin_nay.]]']+"\n\n"+all_words['[[.ban_se_bi_tru.]]']+" "+up_time_point+" "+all_words['[[.point.]]'])){
		jQuery.ajax({
			method: "POST",
			url: 'sms.php',
			data : {
				'cmd':'up_time'
				,'user_id':user_id
				,'up_time_point':up_time_point
				,'item_per_page_history':item_per_page_history
				,'id':id
			},
			beforeSend: function(){
				//jQuery('#load').fadeIn(10).animate({opacity: 1.0}, 10);
			},
			success: function(content){
				if(content==1){
					alert(all_words['[[.you_are_not_enough_point_up_time.]]']);
				}else if(content==3){
					alert(all_words['[[.you_are_up_time_false.]]']);
				}else if(content==4){
					alert(all_words['[[.this_classified_is_not_exists.]]']);
				}else{
					eval(content);
					if(jQuery('.up-time-'+id).length){
						jQuery('.up-time-'+id).html(date);
					}
					//alert(all_words['[[.you_are_up_time_success.]]']);
				}
			}
		});
	}
}
function up_classified_vip(id,user_id,up_status_point){
	if(confirm(all_words['[[.are_you_sure.]]']+"\n\n"+all_words['[[.ban_se_bi_tru.]]']+" "+up_status_point+" "+all_words['[[.point.]]'])){
		jQuery.ajax({
			method: "POST",
			url: 'sms.php',
			data : {
				'cmd':'up_status'
				,'user_id':user_id
				,'up_status_point':up_status_point
				,'id':id
			},
			beforeSend: function(){
				//jQuery('#load').fadeIn(10).animate({opacity: 1.0}, 10);
			},
			success: function(content){
				if(content==1){
					alert(all_words['[[.you_are_not_enough_point_up_vip.]]']);
				}else if(content==3){
					alert(all_words['[[.you_are_up_vip_false.]]']);
				}else if(content==4){
					alert(all_words['[[.this_classified_is_not_exists.]]']);
				}else{
					window.location.reload();
				}
			}
		});
	}
}
