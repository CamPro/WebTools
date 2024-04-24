jQuery(document).ready(function(e) {
	var _url = document.location.origin+document.location.search;
		_hash = document.location.hash;
	if(_hash)
	{
		jQuery('.language-tab-item').css({'display':'none'});
		jQuery(_hash).fadeIn();
		jQuery('.language-nav li a').each(function(index, element) {
			if(jQuery(element).attr('href')==_hash)
			{
				jQuery('.language-nav li a').removeClass('active');
				jQuery(element).addClass('active');
				jQuery('body,html').animate({scrollTop: jQuery(element).offset().top-50}, 1000);
			}
		});
	}
	jQuery('.language-nav li a').bind('click',function(e){
		e.stopPropagation();
		var obj = jQuery(this);
			_ctab = obj.attr('href');
		if(!obj.hasClass('active'))
		{
			jQuery('.language-nav li a').removeClass('active');
			obj.addClass('active');
			jQuery('.language-tabs .language-tab-item').css({'display':'none'});
			jQuery(_ctab).fadeIn();
			if(_ctab!="#language-1")
			{
				history.pushState({}, "", _url+_ctab);
			}
			else
			{
				history.pushState({}, "", _url);
			}
		}
		return false;
	});
	jQuery('.tiny-tabs').each(function(index, element) {
       jQuery(element).find('.tiny-tabs-nav li a:first').addClass('active'); 
    });
	jQuery('.tiny-tabs-nav li a').bind('click',function(e){
		e.stopPropagation();
		var obj = jQuery(this);
			_ctab = obj.attr('to');
			_cparent = obj.parents('.tiny-tabs:first');
		if(!obj.hasClass('active'))
		{
			_cparent.find('.tiny-tabs-nav:first li a').removeClass('active');
			obj.addClass('active');
			_cparent.find('.tiny-tabs-content:first .tiny-panel').css({'display':'none'});
			jQuery(_ctab).fadeIn();
			jQuery(_ctab).find('.tiny-tabs-content:first .tiny-panel:first-child').css({'display':'block'});
		}
		return false;
	});
	jQuery('.cms-col-block .title').click(function(e){
		e.stopPropagation();
		jQuery(this).find('span').toggleClass('active');
		jQuery(this).parents('.cms-col-block').find('.content').slideToggle();
	});
	jQuery('.select-list.multiselect .toggle_check').click(function(e){
		jQuery(this).closest('li').find('input[type="checkbox"]').trigger('click');
	});
	jQuery('.select-list.multiselect li input[type="checkbox"]').click(function(){
		var obj = jQuery(this);
			_parent = obj.attr('parent');
			_oparent = jQuery('#category_id_'+_parent);
			var _parent1 = _oparent.attr('parent');
		if(obj.is(':checked'))
		{
			obj.addClass('clicked').removeClass('auto');
			if(!_oparent.is(':checked'))
			{
				_oparent.trigger('click').addClass('auto');
			}
			if(_parent1)
			{
				var _oparent1 = jQuery('#category_id_'+_parent1);
				if(!_oparent1.is(':checked'))
				{
					_oparent1.trigger('click').addClass('auto');
				}
			}
		}
		else
		{
			if(obj.hasClass('auto'))
			{
				obj.removeClass('auto');
				return false;
			}
			else
			{
				var is_check = 0;
				obj.closest('ul').find('li').each(function(index, element) {
                    if(jQuery(element).find('input[type="checkbox"]').is(':checked'))
					{
						is_check += 1;
					}
                });
				if(is_check>0){
					
				}
				else
				{
					if(_oparent.hasClass('auto'))
					{
						_oparent.removeAttr('checked').removeClass('auto');
					}
					if(_parent1)
					{
						var _oparent1 = jQuery('#category_id_'+_parent1);
						_oparent1.removeAttr('checked').removeClass('auto');
					}
					obj.removeClass('clicked').removeClass('auto');
				}
			}
		}
	});
});