function Page(){
    var self= this;
    var timeout = 0;
    var status = 0;
    var running = 0;
    var el;
    var w = $(window);
    var clock = $('.countDown span');
    var SPINTAX_PATTERN = /\{[^"\r\n\}]*\}/;
    var ItemPost = [];
    this.init= function(){
        self.FacebookAccount();
        self.FaceboookPost(); 
        self.FacebookSearch();
        self.FacebookJoinGroup();
        self.Editor();
        self.Category();

        //Tooltip
        $('[data-toggle="tooltip"]').tooltip({
            container: 'body'
        });

        //Popover
        $('[data-toggle="popover"]').popover();

        $('.form-datetime').bootstrapMaterialDatePicker({
            format: 'YYYY-MM-DD HH:mm',
            minDate: moment().format('YYYY-MM-DD 00:00'),
            currentDate: moment().format('YYYY-MM-DD HH:mm'),
        });

        $('.form-date').bootstrapMaterialDatePicker({
            time: false,
            currentDate: moment().format('YYYY-MM-DD'),
        });

        if($('.js-dataTable').length > 0 || $('.js-dataTableSchedule').length > 0 || $('.js-dataTableScheduleAjax').length > 0){
            _dataTable = $('.js-dataTable').DataTable({
                paging: false,
                columnDefs: [ {
                    targets: 0,
                    orderable: false
                }],
                aaSorting: [],
                language: {
                    search: 'Search ',
                },
                bPaginate: false,
                bLengthChange: false,
                bFilter: true,
                bInfo: false,
                bAutoWidth: false,
                responsive: true,
                emptyTable: Lang['emptyTable']
            });

            $('.filter_account,.filter_profile,.filter_group,.filter_page,.filter_friend,.filter_likedpage').change( function() {
                _dataTable.draw();
            });

            _dataTableSchedule = $('.js-dataTableSchedule').DataTable({
                paging: true,
                pageLength: 50,
                lengthMenu: [[10, 25, 50, 100, 200, 500, 1000, -1], [10, 25, 50, 100, 200, 500, 1000, "All"]],
                columnDefs: [ {
                    targets: 0,
                    orderable: false
                }],
                aaSorting: [],
                language: {
                    search: 'Search ',
                },
                bFilter: true,
                bInfo: true,
                bAutoWidth: false,
                responsive: true,
                pagingType: "full_numbers",
                emptyTable: Lang['emptyTable']
            });

            $('.filter_account').change( function() {
                _dataTableSchedule.draw();
            });

            _dataTableScheduleAjax = $('.js-dataTableScheduleAjax').DataTable({
                processing: true,
                serverSide: true,
                columnDefs: [ {
                    targets: 0,
                    orderable: false
                }],
                /*ajax: $.fn.dataTable.pipeline( {
                    url: CURRENT_URL+'&ajax_page',
                    pages: 1 // number of pages to cache
                }),*/
                paging: true,
                pageLength: 50,
                lengthMenu: [[10, 25, 50, 100, 200, 500], [10, 25, 50, 100, 200, 500]],
                
                aaSorting: [],
                language: {
                    search: 'Search ',
                },
                bFilter: true,
                bInfo: true,
                bAutoWidth: false,
                responsive: true,
                pagingType: "full_numbers",
                emptyTable: Lang['emptyTable']
            });

            $('.filter_account').change( function() {
                _dataTableScheduleAjax.draw();
            });

            //CUSTOM FILTER
            $.fn.dataTable.ext.search.push(
                function( settings, data, dataIndex ) {
                    var el_profile = $('.filter_profile');
                    var el_group   = $('.filter_group');
                    var el_page    = $('.filter_page');
                    var el_friend  = $('.filter_friend');
                    var el_liked   = $('.filter_likedpage');
                    var fbuser     = $('.filter_account').val();
                    var profile    = el_profile.is(':checked')?"profile":"";
                    var group      = el_group.is(':checked')?"group":"";
                    var page       = el_page.is(':checked')?"page":"";
                    var liked      = el_liked.is(':checked')?"liked":"";
                    var friend     = el_friend.is(':checked')?"friend":"";
                    var _account   = data[1];
                    var _type      = data[3];
                    if(fbuser != "" && fbuser != undefined){
                        if(el_profile.length > 0 || el_friend.length > 0){
                            if ((fbuser == _account) && (profile == _type || group == _type || page == _type || friend == _type || liked == _type)){
                                return true;
                            }
                        }else{
                            if (fbuser == _account){
                                return true;
                            }
                        }
                        return false; 
                    }else{
                        if(el_profile.length > 0 || el_friend.length > 0){
                            if (profile == _type || group == _type || page == _type || friend == _type || liked == _type){
                                return true;
                            }
                            return false; 
                        }
                        return true;
                    }
                    
                }
            );
        }

        $(document).on('click', '.checkAll', function(){
            _that = $(this);
            if(_that.is(":checked")){
                $('.checkItem').prop('checked', true);
            }else{
                $('.checkItem').prop('checked', false);
            }
        });
		$(document).on('click','.checkItem',function(){
			var that = $(this);
			$('#input-users input').each(function(index){
				if($(this).data('id')==that.val()){
					$(this).removeAttr('checked');
				}
			});
		});
        $(document).on('click', '.open-schedule', function(){
            _that = $(this);
            _box_schedule = $('.box-post-schedule');
            if(_that.hasClass('active')){
                _box_schedule.hide();
                _that.removeClass('active');
            }else{
                _box_schedule.show();
                _that.addClass('active');
            }
        });

        $(document).on('click', '.btnActionModule', function(){
            _that     = $(this);
            _type     = _that.data("action");
            _category = _that.data("categoty");
            _form     = _that.closest("form");
            _action   = _form.attr("action");				
			if(typeof(_action)=='undefined')
			{
	            _action   = _form.data('action');				
			}
            _redirect = _form.data("redirect");
            _data     = _form.serialize();
            _data     = _data + '&' + $.param({token:token, action: _type, category: _category});
            _confirm = _that.data("confirm");
            _valid   = $('.checkItem:checkbox:checked').length;
            if(_valid > 0){
                if(_type == "delete" || _type == "delete_all"){
                    self.showConfirmMessage(_confirm, function(){
                        $.post(_action, _data, function(result){
                            setTimeout(function(){
                                window.location.reload();
                            },2000);
                            self.showSuccessAutoClose(result['txt'], "success", 2000);
                        },'json');
                    });
                }else{
                    $.post(_action, _data, function(result){
                        self.showSuccessAutoClose(result['txt'], "success", 2000);
                        setTimeout(function(){
                                window.location.reload();
                            },2000);
                    },'json');
                }
            }else{
                self.showSuccessAutoClose('Vui lòng chọn ít nhất 1 mục', "info", 2000);
            }
            
            return false;
        });

        $(document).on('click', '.btnActionModuleItem', function(){
            _that    = $(this);
            _tr  = _that.parents("tr");
            if(_tr.hasClass("child")){
                _tr = _tr.prev();
            }
            _action  = _tr.data("action");
            _type    = _that.data("action");
            _confirm = _that.data("confirm");
            _id      = _tr.data("id");
            if(_type == "delete"){
                _data    = $.param({token:token, action: _type, id: _id});
                self.showConfirmMessage(_confirm, function(){
                    $.post(_action, _data, function(result){
                        setTimeout(function(){
                            window.location.reload();
                        },2000);
                        self.showSuccessAutoClose('Xóa thành công !', "success", 2000);
                    },'json');
                });
            }else{
                _type  = (_that.is(":checked"))?"active":"disable";
                _data    = $.param({token:token, action: _type, id: _id});
                $.post(_action, _data, function(result){
                    //window.location.reload();
                },'json');
            }
        });

        $(document).on('click', '.btnFBGetToken', function(){
            _that          = $(this);          
            _action        = _that.data("action");
            fb_app_id      = $(".fb_app_id").val();
            fb_app_secret  = $(".fb_app_secret").val();
            fb_app_version = ($(".fb_app_version:checkbox:checked").length > 0)?1:0;
            _data    = $.param({token:token, fb_app_id: fb_app_id, fb_app_secret: fb_app_secret, fb_app_version: fb_app_version});
            $(".page-loader-action").fadeIn();
            $.post(_action, _data, function(result){
                if(result['st'] == "success"){
                    window.location.assign(result['url']);
                }else{
                    self.showNotification(result['label'], result['txt'], 'bottom', 'center', 'animated bounceIn', 'animated bounceOut');
                }
                $(".page-loader-action").fadeOut();
            },'json');
        });

        $(document).on('click', '.btnUpdateGroups', function(){
            _that    = $(this);
            _tr      = _that.parents("tr");
            if(_tr.hasClass("child")){
                _tr = _tr.prev();
            }
            _action  = _tr.data("action-groups");
            _type    = _that.data("type");
            _id      = _tr.data("id");
            _data    = $.param({token:token, type: _type, id: _id});
            $(".page-loader-action").fadeIn();
            $.post(_action, _data, function(result){
                self.showNotification(result['label'], result['txt'], 'bottom', 'center', 'animated bounceIn', 'animated bounceOut');
                $(".page-loader-action").fadeOut();
            },'json');
        });
		$(document).on('change',"input[name='type']",function(){
			if($('.select-facebook-account').val()==0)
			{
	             self.showNotification('bg-red', 'Bạn chưa chọn tài khoản', 'bottom', 'center', 'animated bounceIn', 'animated bounceOut');
				 return false;
			}
			$('.select-facebook-account').change();
		});
		$(document).on('change','.select-facebook-account',function(){
			 _that    = $(this);
            _form     = _that.closest("form");
            _action   = _that.data("action");
            _data     = _form.serialize();
			$("#show-users").html('');
			$("#input-users").html('');
			$("#my-friends").html('');
			// GET INFO
			$type = $("input[name='type']:checked").val();
			// CREATE TABLE
			$html = '<div class="table-responsive" style="overflow:hidden">';
			$html += '<table class="table table-bordered table-striped table-hover js-basic-example my-friends">';
			if($type == 'group')
			{
				$html += '<thead><tr><th>STT</th><th>ID Nhóm</th><th>Tên</th><th>Hành động</th></tr></thead>';
			}
			else
			{
				$html += '<thead><tr><th>STT</th><th>Facebook ID</th><th>Tên</th><th>Hành động</th></tr></thead>';	
			}
			$html += '<tbody id="my-friends-show"></tbody>';
			$html += '</table>';
			$html += '</div>';
            $(".page-loader-action").fadeIn();			
			$("#my-friends").append($html);	
			 $.post(_action, _data, function(result){
				 if(result.data)
				 {
					if($type=='user')
					{
						$.each(result.data, function(key,val){
							$html = '';
							$html += '<tr>';
							$html += '<td>'+(key+1)+'</td>';
							$html += '<td>'+val.id+'</td>';
							$html += '<td><a href="https://facebook.com/'+val.id+'" target="_blank">'+val.name+'</a></td>';
							$html += '<td><button type="button" class="btn bg-teal btn-block btn-xs waves-effect get-friends" id="'+val.id+'">LẤY DANH SÁCH</button></td>';
							$html += '</tr>';
							$("body").find("#my-friends-show").append($html);
						});
					}
					else
					{
						$.each(result.data, function(key,val){
							$html = '';
							$html += '<tr>';
							$html += '<td>'+(key+1)+'</td>';
							$html += '<td>'+val.id+'</td>';
							$html += '<td><a href="https://facebook.com/'+val.id+'" target="_blank">'+val.name+'</a></td>';
							if($type=='post')
							{
								$html += '<td><button onclick="$(\'#user\').click();" type="button" class="btn bg-teal btn-block btn-xs waves-effect get-friends" id="'+val.id+'">LẤY DANH SÁCH</button></td>';
							}
							else
							{
								$html += '<td><button type="button" class="btn bg-teal btn-block btn-xs waves-effect get-friends" id="'+val.id+'">LẤY DANH SÁCH</button></td>';								
							}
							$html += '</tr>';
							$("body").find("#my-friends-show").append($html);
						});
					}
				 }
				// show table
				self.showTable('my-friends');	
                 $(".page-loader-action").fadeOut();
                },'json');
		});
		$(document).on('change','.get-all-friend',function(){
			 _that    = $(this);
            _form     = _that.closest("form");
            _action   = _that.data("action");
            _data     = _form.serialize();
			$("#show-users").html('');
			$("#input-users").html('');
			$html = '<div class="table-responsive" style="overflow:hidden">';
			$html += '<table class="table table-bordered table-striped table-hover js-basic-example show-users">';
			$html += '<thead><tr><th>';
  		    $html += '<input type="checkbox" id="md_checkbox_all" class="filled-in chk-col-red checkAll" checked>';
            $html += '<label class="p0 m0" for="md_checkbox_all">&nbsp;</label>';
			$html += '</th><th>STT</th><th>Facebook ID</th><th>Tên</th></tr></thead>';
			$html += '<tbody id="all-users"></tbody>';
			$html += '</table>';
			$html += '</div>';
            $(".page-loader-action").fadeIn();			
			$("#show-users").append($html);			
			 $.post(_action, _data, function(result){
				 if(result.data)
				 {
					$.each(result.data, function(key,val){
						$html = '';
						$html += '<tr>';
						$html += '<td><input type="checkbox" name="select-group" id="'+val.id+'" class="filled-in chk-col-red checkItem" value="'+val.id+'" checked=""><label for="'+val.id+'" style="height:9px;"></label></td>';						
						$html += '<td>'+(key+1)+'</td>';
						$html += '<td>'+val.id+'</td>';
						$html += '<td><a href="https://facebook.com/'+val.id+'" target="_blank">'+val.name+'</a></td>';
						$html += '</tr>';
						$("#all-users").append($html);
						$("#input-users").append('<input type="checkbox" name="users[]" data-id="'+val.id+'" class="filled-in chk-col-red" value="'+val.id+'|'+val.name+'" style="display:none" checked="checked">');
					});
				 }
				self.showTable('show-users');					
				$(".page-loader-action").fadeOut();
                },'json');
		});
		$(document).on('change','.get-all-group',function(){
			 _that    = $(this);
            _form     = _that.closest("form");
            _action   = _that.data("action");
            _data     = _form.serialize();
			$("#show-groups").html('');
			$("#show-users").html('');
			$html = '</br><div style="font-weight:bold;">DANH SÁCH NHÓM</div><div class="table-responsive" style="overflow:hidden">';
			$html += '<table class="table table-bordered table-striped table-hover js-basic-example show-groups">';
			$html += '<thead><tr><th>';
  		    $html += '<input type="checkbox" id="md_checkbox_all" class="filled-in chk-col-red checkAll" checked>';
            $html += '<label class="p0 m0" for="md_checkbox_all">&nbsp;</label>';
			$html += '</th><th>STT</th><th>Group ID</th><th>Tên</th><th>Privacy</th></tr></thead>';
			$html += '<tbody id="all-groups"></tbody>';
			$html += '</table>';
			$html += '</div>';
			$html_user  = '<div style="font-weight:bold;color:#ff0000">Mời theo UID: <input name="friend_id" type="text"></div></br></br>';
			$html_user += '<div style="font-weight:bold;margin-top:-20px;">MỜI TỪ DANH SÁCH BẠN BÈ</div><div class="table-responsive" style="overflow:hidden">';
			$html_user += '<table class="table table-bordered table-striped table-hover js-basic-example show-users">';
			$html_user += '<thead><tr><th>';
			$html_user += '</th><th>STT</th><th>User ID</th><th>Tên</th><th>Số bạn chung</th><th>Giới tính</th></tr></thead>';
			$html_user += '<tbody id="all-users"></tbody>';
			$html_user += '</table>';
			$html_user += '</div>';
            $(".page-loader-action").fadeIn();			
			$("#show-groups").append($html);
			$("#show-users").append($html_user);						
			 $.post(_action, _data, function(result){
				 if(result.data)
				 {
					$.each(result.data, function(key,val){
						$html = '';
						$html += '<tr>';
						$html += '<td><input type="checkbox" name="groups[]" id="'+val.id+'" class="filled-in chk-col-red checkItem" value="'+val.id+'|'+val.name+'" checked=""><label for="'+val.id+'" style="height:9px;"></label></td>';						
						$html += '<td>'+(key+1)+'</td>';
						$html += '<td>'+val.id+'</td>';
						$html += '<td><a href="https://facebook.com/'+val.id+'" target="_blank">'+val.name+'</a></td>';
						$html += '<td>'+val.privacy+'</td>';						
						$html += '</tr>';
						$("#all-groups").append($html);
					});
				 }
				 if(result.data1)
				 {
					$.each(result.data1, function(key,val){
						$html_user = '';
						$html_user += '<tr>';
						$html_user += '<td><input type="checkbox" name="users[]" id="'+val.uid+'" class="filled-in chk-col-red" value="'+val.uid+'|'+val.name+'"><label for="'+val.uid+'" style="height:9px;"></label></td>';						
						$html_user += '<td>'+(key+1)+'</td>';
						$html_user += '<td>'+val.uid+'</td>';
						$html_user += '<td><a href="https://facebook.com/'+val.uid+'" target="_blank">'+val.name+'</a></td>';
						$html_user += '<td>'+val.mutual_friend_count+'</td>';
						$html_user += '<td>'+(val.sex=='male'?'Nam':(val.sex=='female'?'Nữ':'Không rõ'))+'</td>';												
						$html_user += '</tr>';
						$("#all-users").append($html_user);
					});
				 }
				//self.showTable('show-users');					
				$(".page-loader-action").fadeOut();
                },'json');
		});
		$(document).on('click','.request-friend',function(){
			$accountID = $(".select-facebook-account").val();
			$numberGroup = $("#input-users").find("input[checked='checked']").length;
			$link = $('input[name="link"]').val();	
			 _that    = $(this);
            _form     = _that.closest("form");
            _action   = _form.data("action");
            _data     = _form.serialize();
			if($accountID !== 0 && $numberGroup > 0 && $link !== '') {
	            $(".page-loader-action").fadeIn();				
				$.post(_action, _data, function(result){
                    self.showNotification(result['label'], result['txt'], 'bottom', 'center', 'animated bounceIn', 'animated bounceOut');
					$(".page-loader-action").fadeOut();		
				},'json');
			}	
			else
			{
	             self.showNotification('bg-red', 'Bạn chưa chọn User để kết bạn.', 'bottom', 'center', 'animated bounceIn', 'animated bounceOut');
			}
		});
		$(document).on('click','.request-friend-by-uid',function(){
			 _that    = $(this);
			 _form     = _that.closest("form");
            _action   = _form.data("action");
            _data     = _form.serialize();
			$uid = $('#list_uid').val()
			$facebook_id = $('#facebook_id').val()
			if($facebook_id == '0')
			{
				  self.showNotification('bg-red', 'Bạn chưa chọn tài khoản Facebook.', 'bottom', 'center', 'animated bounceIn', 'animated bounceOut');
			}	
			else if($uid == '')
			{
				  self.showNotification('bg-red', 'Bạn chưa chọn danh sách UID để kết bạn.', 'bottom', 'center', 'animated bounceIn', 'animated bounceOut');
			}	
			else
			{
			 $(".page-loader-action").fadeIn();				
				$.post(_action, _data, function(result){
                    self.showNotification(result['label'], result['txt'], 'bottom', 'center', 'animated bounceIn', 'animated bounceOut');
					$(".page-loader-action").fadeOut();		
				},'json');
			}
		});
		$(document).on('click','.auto-lech-post',function(){
			 _that    = $(this);
			 _form     = _that.closest("form");
            _action   = _form.data("action");
			_redirect = _form.data("redirect");
            _data     = _form.serialize();
			$uid = $('#uid').val()
			$facebook_id = $('#facebook_id').val()
			if($facebook_id == '0')
			{
				  self.showNotification('bg-red', 'Bạn chưa chọn tài khoản Facebook.', 'bottom', 'center', 'animated bounceIn', 'animated bounceOut');
			}	
			else if($uid == '')
			{
				  self.showNotification('bg-red', 'Bạn chưa nhập ID cần lấy.', 'bottom', 'center', 'animated bounceIn', 'animated bounceOut');
			}	
			else
			{
			 $(".page-loader-action").fadeIn();				
				$.post(_action, _data, function(result){
                    self.showNotification(result['label'], result['txt'], 'bottom', 'center', 'animated bounceIn', 'animated bounceOut');
						setTimeout(function(){
	                        window.location.assign(_redirect);
                        },2000);
					$(".page-loader-action").fadeOut();		
				},'json');
			}
		});
		$(document).on('click','.accept-request-friend',function(){
			 _that    = $(this);
            _form     = _that.closest("form");
            _action   = _form.data("action");
            _data     = _form.serialize();
			$(".page-loader-action").fadeIn();				
			$.post(_action, _data, function(result){
				self.showNotification(result['label'], result['txt'], 'bottom', 'center', 'animated bounceIn', 'animated bounceOut');
				$(".page-loader-action").fadeOut();		
			},'json');
		});
		$(document).on('click','.get-friends', function () {
			$id = $(this).attr('id');
			$('input[name="link"]').val($id);
			$("#search").click();
		});
		$(document).on('click',"#search",function () {
			 _that    = $(this);
            _form     = _that.closest("form");
            _action   = _that.data("action");
            _data     = _form.serialize();
			
			$type = $("input[name='type']:checked").val();
			$link = $('input[name="link"]').val();	
			if($link === ''){
	             self.showNotification('bg-red', 'Bạn chưa nhập Facebook ID', 'bottom', 'center', 'animated bounceIn', 'animated bounceOut');
				return false;
			}	
			$accountID = $("#select-facebook-account").val();
			if($accountID === '0')
			{
	            self.showNotification('bg-red', 'Bạn chưa chọn tài khoản', 'bottom', 'center', 'animated bounceIn', 'animated bounceOut');
				return false;
			}
			// RESET
			$("#show-users").html('');
			$("#input-users").html('');
			$("#my-friends").html('');
			// CREATE TABLE
			$html = '<div class="table-responsive" style="overflow:hidden">';
			$html += '<table class="table table-bordered table-striped table-hover js-basic-example show-users">';
			$html += '<thead><tr><th></th><th>STT</th><th>Facebook ID</th><th>Tên</th></tr></thead>';
			$html += '<tbody id="all-users"></tbody>';
			$html += '</table>';
			$html += '</div>';
			$("#show-users").append($html);
            $(".page-loader-action").fadeIn();
			$.post(_action, _data, function(result){
				if(result.data){
					if($type=='user')
					{
						$.each(result.data, function (key,val) {
							$html = '<tr>';
							$html += '<td><input type="checkbox" name="select-group" id="'+val.id+'" class="filled-in chk-col-red" value="'+val.id+'" checked=""><label for="'+val.id+'" style="height:9px;"></label></td>';
							$html += '<td>'+(key+1)+'</td>';
							$html += '<td>'+val.id+'</td>';
							$html += '<td><a href="https://facebook.com/'+val.id+'" target="_blank">'+val.name+'</a></td>';
							$html += '</tr>';
							$("#all-users").append($html);
							$("#input-users").append('<input type="checkbox" name="users[]" data-id="'+val.id+'" class="filled-in chk-col-red" value="'+val.id+'|'+val.name+'" style="display:none" checked="checked">');
						});
					}
					else
					{
						$.each(result.data, function (key,val) {
							$html = '<tr>';
							$html += '<td><input type="checkbox" name="select-group" id="'+val.id+'" class="filled-in chk-col-red" value="'+val.id+'" checked=""><label for="'+val.id+'" style="height:9px;"></label></td>';
							$html += '<td>'+(key+1)+'</td>';
							$html += '<td>'+val.id+'</td>';
							$html += '<td><a href="https://facebook.com/'+val.id+'" target="_blank">'+val.name+'</a></td>';
							$html += '</tr>';
							$("#all-users").append($html);
							$("#input-users").append('<input type="checkbox" name="users[]" data-id="'+val.id+'" class="filled-in chk-col-red" value="'+val.id+'|'+val.name+'" style="display:none" checked="checked">');
						});
					}		
				}
				self.showTable('show-users');					
				$(".page-loader-action").fadeOut();
				calcTimeDone();				
			},'json');
			return false;
		});
		$(document).on('change','.choose-facebook-account',function(){
			 _that    = $(this);
            _form     = _that.closest("form");
            _action   = _that.data("action");
            _data     = _form.serialize();
			// RESET
			$("#show-users").html('');
			$("#input-users").html('');
			// GET INFO
			$accountID = $("#facebook_id").val();
			if($accountID === '0') return;
			// CREATE TABLE
			$html = '<div class="table-responsive" style="overflow:hidden">';
			$html += '<table class="table table-bordered table-striped table-hover js-basic-example friend-request">';
			$html += '<thead><tr><th></th><th>Facebook ID</th><th>Tên</th><th>Bạn chung</th><th>Giới tính</th></tr></thead>';
			$html += '<tbody id="friend-request-show"></tbody>';
			$html += '</table>';
			$html += '</div>';
			$("#show-users").append($html);
  		    $(".page-loader-action").fadeIn();
			$.post(_action, _data, function(result){
				if(result.data)
				{
					$.each(result.data, function(key,val){
						$html = '';
						$html += '<tr>';
						$html += '<td><input type="checkbox" id="'+val.uid+'" class="filled-in chk-col-red select-user" name="select-user" value="'+val.uid+'" checked="checked"><label for="'+val.uid+'" style="height:9px;"></label></td>';
						$html += '<td>'+val.uid+'</td>';
						$html += '<td><a href="https://facebook.com/'+val.uid+'" target="_blank">'+val.name+'</a></td>';
						$html += '<td class="number-mutual" user-id="'+val.uid+'">'+val.mutual_friend_count+'</td>';
						if(val.sex === 'male') $html += '<td>Nam</td>';
						else if(val.sex === 'female') $html += '<td>Nữ</td>';
						else $html += '<td>Không rõ</td>';
						$html += '</tr>';
						$("body").find("#friend-request-show").append($html);
						$("#input-users").append('<input type="checkbox" name="users[]" value="'+val.uid+'|'+val.name+'|'+val.mutual_friend_count+'|'+val.sex+'" class="filled-in" style="display:none" checked="checked">');
					});
				}
				self.showTable('friend-request');
				$(".page-loader-action").fadeOut();
			},'json');
			
		});
        $(document).on('click', '.btnActionUpdate', function(){
            _that    = $(this);
            _form     = _that.closest("form");
            _action   = _form.attr("action");
            _redirect = _form.data("redirect");
            _data     = _form.serialize();
            _data     = _data + '&' + $.param({token:token});
            $(".page-loader-action").fadeIn();
            if(!_form.hasClass('disable')){
                _form.addClass('disable');
                $.post(_action, _data, function(result){
                    self.showNotification(result['label'], result['txt'], 'bottom', 'center', 'animated bounceIn', 'animated bounceOut');
                    _form.removeClass('disable');
                    $(".page-loader-action").fadeOut();
                    if(result['st'] == "success")
						setTimeout(function(){
							if(result['redirect'])
							{
								window.location.assign(result['redirect']);
							}
							else
							{
								window.location.assign(_redirect);
							}
						},3000);
                },'json');
            }
            return false;
        });
    };
	this.showTable = function($className){
	 $("body").find('.' + $className).DataTable({
		"language": {
		  "search" : "Tìm kiếm",
		  "lengthMenu": "Hiển thị _MENU_ dòng trên một trang",
		  "zeroRecords": "Không có dữ liệu nào",
		  "info": "Trang _PAGE_ (Có tổng _PAGES_ trang)",
		  "infoEmpty": "Không có trang nào",
		  "paginate" : {
			"frist": "Đầu",
			"last" : "Cuối",
			"previous" : "Lùi",
			"next": "Tiếp",
		  },
		}
	  });
	};
    this.Editor = function(){
        $('.dialog-upload').click(function() {
            var _that = $(this);
            var fm = $('<div/>').dialogelfinder({
                url : 'skins/news/libraries/elFinder/php/connector.minimal.php',
                lang : 'en',
                width : ($(window).width() > 840)?840:$(window).width() - 30,
                resizable: false,
                destroyOnClose : true,
                getFileCallback : function(files, fm) {
                    _that.parents(".input-group").find("input").val(PATH+files.url);
                    switch(_type){
                        case "link":
                            $(".preview-box-2 .preview-box-image").css('background-image', 'url(' + self.spintax(PATH+files.url) + ')')
                            break;

                        case "image":
                            $(".preview-box-3 .preview-box-image").css('background-image', 'url(' + self.spintax(PATH+files.url) + ')')
                            break;
						case "extra":
						    $(".preview-box-3 .preview-box-image").attr('src',self.spintax(PATH+files.url));
							break;
                    }
                },
                commandsOptions : {
                    getfile : {
                        oncomplete : 'close',
                        folders : true
                    }
                }
            }).dialogelfinder('instance');
        });

        $('.dialog-uploads').click(function() {
            var _that = $(this);
            var fm = $('<div/>').dialogelfinder({
                url : 'skins/news/libraries/elFinder/php/connector.minimal.php',				
                lang : 'en',
                width : ($(window).width() > 840)?840:$(window).width() - 30,
                resizable: false,
                destroyOnClose : true,
                getFileCallback : function(files, fm) {
                    $.each(files, function(index,value){
                        html  = '<li style="background-image: url('+PATH+value.url+')">';
                        html += '<div class="icon-remove remove-files fa fa-times"></div>';
                        html += '<input type="hidden" class="form-control" name="images_url[]" value="'+PATH+value.url+'">';
                        html += '</li>';
                        _that.parents(".tab-pane").find(".list-images").append(html);
                        history.pushState("", document.title, window.location.pathname);
                    });
                },
                commandsOptions : {
                    getfile : {
                        oncomplete : 'close',
                        folders : false,
                        multiple: true
                    }
                }
            }).dialogelfinder('instance');
        });

        $(".btn-add-image").click(function(){
            if($(".remote-image").val() != ""){
                _that = $(".remote-image");
                url   = _that.val();
                _that.val("");
                html  = '<li style="background-image: url('+url+')">';
                html += '<div class="icon-remove remove-files fa fa-times"></div>';
                html += '<input type="hidden" class="form-control" name="images_url[]" value="'+url+'">';
                html += '</li>';
                _that.parents(".tab-pane").find(".list-images").append(html);
            }
        });

        $(document).on("click", ".list-images .remove-files", function(){
            $(this).parents("li").remove();
        });

        $("[name='link_title']").keyup(function(){
            _that = $(this);
            $title = _that.val();
            if($title != ""){
                $(".preview-box-2 .preview-box-title").html(self.spintax($title));
            }else{
                $(".preview-box-2 .preview-box-title").html('<div class="line-no-text"></div>');
            }
        });

        $(".link_message").keyup(function(){
            _that = $(this);
            $link = _that.val();
            console.log($link);
            if($link != ""){
                $(".message-preview .preview-link").show();
                $(".message-preview .preview-link").html('<a href="javscript:void(0);">'+self.spintax($link)+'</a>');
            }else{
                $(".message-preview .preview-link").hide();
                $(".message-preview .preview-link").html('');
            }
        });
        

        $("[name='link_description']").keyup(function(){
            _that = $(this);
            $desc = _that.val();
            console.log($desc);
            if($desc != ""){
                $(".preview-box-2 .preview-box-desc").html(self.cutText(self.spintax($desc),250));
            }else{
                $(".preview-box-2 .preview-box-desc").html('<div class="line-no-text"></div><div class="line-no-text w50"></div>');
            }
        });

        $("[name='link_caption']").keyup(function(){
            _that = $(this);
            $caption = _that.val();
            if($caption != ""){
                $(".preview-box-2 .preview-box-caption").html(self.spintax($caption));
            }else{
                $(".preview-box-2 .preview-box-caption").html('<div class="line-no-text w25"></div>');
            }
        });

        $("[name='link_picture']").keyup(function(){
            _that = $(this);
            $image = _that.val();
            if($image != ""){
                $(".preview-box-2 .preview-box-image").css('background-image', 'url(' + self.spintax($image) + ')')
            }else{
                $(".preview-box-2 .preview-box-image").removeAttr("style");
            }
        });

        $("[name='image_url']").keyup(function(){
            _that = $(this);
            $image = _that.val();
            if($image != ""){
                $(".preview-box-3 .preview-box-image").css('background-image', 'url(' + self.spintax($image) + ')')
            }else{
                $(".preview-box-3 .preview-box-image").removeAttr("style");
            }
        });

        $(document).on("click", ".post_type li", function(){
            $(".preview-box").hide();
            _type = $('.post_type .active').data("type");
            switch(_type){
                case "text":
                    $(".preview-box-1").show();
                    break;

                case "link":
                    $(".preview-box-2").show();
                    break;

                case "image":
                    $(".preview-box-3").show();
                    break;

                case "video":
                    $(".preview-box-4").show();
                    break;
                case "images":
                    $(".preview-box-5").show();
                    break;
            }
        });

        $(document).on("click", ".btn-modal-save", function(){
            $('.btnSavePost').trigger("click");
        });

        $('.btnSavePost').click(function(){
            _that     = $(this);
            _form     = _that.closest(".formSchedule");
            _data     = _form.serialize();
            _type     = $('.post_type .active').data('type');
            _title    = $(".save_title").val();
            _category = _that.data("type");
			_action = _that.data('action');
            _data     = _data + '&' + $.param({token:token, title: _title, type: _type, category: _category});
            $(".page-loader-action").fadeIn();
            if(!_form.hasClass('disable')){
                _form.addClass('disable');

                $.post(_action, _data, function(result){
                    if(result.st == "error"){
                        self.showNotification(result['label'], result['txt'], 'bottom', 'center', 'animated bounceIn', 'animated bounceOut');
                        _form.removeClass('disable');
                    }else if(result.st == "title"){
                        $('#modal-save').modal('toggle');
                    }else{
                        $(".save_title").val("");
                        $('#modal-save').modal('hide');
                        self.showNotification(result['label'], result['txt'], 'bottom', 'center', 'animated bounceIn', 'animated bounceOut');
                    }
                    _form.removeClass('disable');
                    $(".page-loader-action").fadeOut();
                },'json');
            }

            return false;
        });

        $(document).on("change", ".getSavePost", function(){
            _that = $(this);
			_action = _that.data('action');
            _value = _that.val();
            if(!_that.hasClass('disable')){
                _that.addClass('disable');
                $.post(_action, {token: token, value: _value}, function(data){
                    _that.removeClass('disable');
                    if(data != "" && data != null){
                        switch(data.category){
                            case "post":
                                $("li[data-type='"+data.type+"'] a").trigger("click");
                                el[0].emojioneArea.setText(data.message);
                                $("[name="+data.type+"_title]").val(data.title).trigger("keyup");
                                $("[name="+data.type+"_description]").val(data.description).trigger("keyup");
                                if(data.type == "image" || data.type == "video"){
                                    $("[name="+data.type+"_url]").val(data.image).trigger("keyup");
                                }else{
                                    $("[name="+data.type+"_url]").val(data.url).trigger("keyup");
                                }
                                if(_type == "images"){
                                    files = jQuery.parseJSON(data.image);
                                    $.each(files, function(index,value){
                                        html  = '<li style="background-image: url('+value+')">';
                                        html += '<div class="icon-remove remove-files fa fa-times"></div>';
                                        html += '<input type="hidden" class="form-control" name="images_url[]" value="'+value+'">';
                                        html += '</li>';
                                        $(".list-images").append(html);
                                    });
                                }else{
                                    $("[name="+data.type+"_image]").val(data.image).trigger("keyup");
                                }
                                $("[name="+data.type+"_picture]").val(data.image).trigger("keyup");
                                $("[name="+data.type+"_caption]").val(data.caption).trigger("keyup");
                                break;

                            default:
                                el[0].emojioneArea.setText(data.message);
                                $("[name=link]").val(data.url).trigger("keyup");
                                break;
                        }
                    }
                },'json');
            }
        });

        if($('.post-message').length > 0){
            el = $(".post-message").emojioneArea({
                hideSource: true,
                useSprite: false,
                pickerPosition    : "bottom",
                filtersPosition   : "bottom",
            });

            el[0].emojioneArea.on("keyup", function(editor) {
                _data = editor.html();
                _type = $('.post_type .active').data("type");
                if($(".data-message").length > 0){
                    if(_data != ""){
                        $(".data-message").html(_data);
                    }else{
                        $(".data-message").html('<div class="line-no-text"></div><div class="line-no-text"></div><div class="line-no-text w50"></div>');
                    }
                }else{
                    _el = $(".data-message-content");
                    if(_data != ""){
                        _el.show()
                    }else{
                        _el.hide();
                    }
                    _el.html(_data);
                }
            });

            el[0].emojioneArea.on("change", function(editor) {
                _data = editor.html();
                _type = $('.post_type .active').data("type");
                if($(".data-message").length > 0){
                    if(_data != ""){
                        $(".data-message").html(_data);
                    }else{
                        $(".data-message").html('<div class="line-no-text"></div><div class="line-no-text"></div><div class="line-no-text w50"></div>');
                    }
                }else{
                    _el = $(".data-message-content");
                    if(_data != ""){
                        _el.show()
                    }else{
                        _el.hide();
                    }
                    _el.html(_data);
                }
            });

            el[0].emojioneArea.on("emojibtn.click", function(editor) {
                _data = $(".emojionearea-editor").html();
                _type = $('.post_type .active').data("type");
                if($(".data-message").length > 0){
                    if(_data != ""){
                        $(".data-message").html(_data);
                    }else{
                        $(".data-message").html('<div class="line-no-text"></div><div class="line-no-text"></div><div class="line-no-text w50"></div>');
                    }
                }else{
                    _el = $(".data-message-content");
                    if(_data != ""){
                        _el.show()
                    }else{
                        _el.hide();
                    }
                    _el.html(_data);
                }
            });
        }
    }

    this.FacebookAccount = function(){
        $(".btnAllowPermission").click(function(){
            _that = $(this);
            _api  = _that.data("appid");
            _redirect = _that.parents(".item").data("redirect");
            _url  = _api;
            if(_redirect != undefined){
                _url = _redirect;
            }
            popwin = window.open(_url, "main_browser", "height=700,width=800");
        });

        $(document).on("click", ".btnFBAccountUpdate", function(){
            _that     = $(this);
            _form     = _that.closest("form");
            _action   = _form.attr("action");
            _redirect = _form.data("redirect");
            _data     = _form.serialize();
            _access_token = $("textarea.access_token").val();
            _hash     = _access_token.replace(/^.*?#/, '');
            if(_hash != "" && _hash.indexOf("&") != -1){ 
                _pairs  = _hash.split('&');
                _values = _pairs[0].split('=');
                _access_token = _values[1];
            }
            _data     = _data + '&' + $.param({token:token, access_token: _access_token});
            $(".page-loader-action").fadeIn();
            if(!_form.hasClass('disable')){
                _form.addClass('disable');
                $.post(_action, _data, function(result){
                    self.showNotification(result['label'], result['txt'], 'bottom', 'center', 'animated bounceIn', 'animated bounceOut');
                    _form.removeClass('disable');
                    $(".page-loader-action").fadeOut();
                    if(result['st'] == "success")
                        window.location.assign(_redirect);
                },'json');
            }

            return false;
        });
    }

    this.FaceboookPost = function(){
        $(document).on("click", ".btnPostnow", function(){
            self.Postnow($(this));
        });

        $(document).on("click", ".btnResumePost", function(){
            clock.countdown('resume');
            self.Postnow($(this));
        });

        $(document).on("click", ".btnPausePost", function(){
            clock.countdown('pause');
            clearTimeout(timeout);
        });

        $(document).on("click", ".btnSaveSchedules", function(){
            _that     = $(this);
            _form     = _that.closest("form");
            _action   = _form.data("action");
            _type     = $('.post_type .active').data('type');
            _data     = _form.serialize();
            _data     = _data + '&' + $.param({token:token, type: _type});
            $(".page-loader-action").fadeIn();
            if(!_form.hasClass('disable')){
                _form.addClass('disable');
                $.post(_action, _data, function(result){
                    if(result.st == 'valid'){
                        self.showNotification(result.label, result.txt, 'bottom', 'center', 'animated bounceIn', 'animated bounceOut');
                    }else{
                        setTimeout(function(){
                            window.location.reload();
                        },2000);
                        self.showSuccessAutoClose(result.txt, "success", 2000);
                        $(".page-loader-action").fadeOut();
                    }
                    $(".page-loader-action").fadeOut();
                    _form.removeClass('disable');
                },'json');
            }
        });
        
    }

    this.Postnow = function(_that){
        _form     = _that.closest("form");
        _action   = _form.attr("action");
        _redirect = _form.data("redirect");
        _type     = $('.post_type .active').data('type');
        _deplay   = $('.deplay_post_now').val();
        _group    = "";
        _item     = "";
        _stop     = false;

        $(".js-dataTable tbody tr").each(function(index,value){
            _tr   = $(this);
            if(_tr.hasClass('post-pending') && _tr.find(".checkItem").is(":checked")){
                running = 1;
                if(!_stop){
                    ItemPost.push(_tr);
                    _item  = _tr;
                    _group = _tr.find(".checkItem").val();
                    _stop  = true;
                }
            }
        });
        _data     = $("form.formSchedule :input[name!='id[]']").serialize();
        _data     = _data + '&' + $.param({token:token, type: _type, group: _group});
        if(_group != ""){
            ItemPost[ItemPost.length-1].removeClass("post-pending").addClass("post-processing");
            _item.find(".status-post").html('Đang xử lý');
            $.post(_action, _data, function(result){
                if(result.st == 'valid'){
                    self.showNotification(result.label, result.txt, 'bottom', 'center', 'animated bounceIn', 'animated bounceOut');
                    ItemPost[0].removeClass("post-processing").addClass("post-pending");
                    ItemPost[0].find(".status-post").html('');
                    clearTimeout(timeout);
                }else{
                    count_process = $(".post-pending input:checkbox:checked").length;
                    $('.countDown span').countdown(self.getMinutes(count_process*_deplay), function(event) {
                        $(this).html(event.strftime('%H:%M:%S'));
                    });
                    ItemPost[0].removeClass("post-processing").addClass("post-"+result.st);
                    ItemPost[0].find(".status-post").html(result.txt);
                }
                ItemPost.shift();
            },'json');

            timeout = setTimeout(function(){
                self.Postnow(_that);
            },_deplay*1000);
        }
    }

    this.Category = function(){
        $(document).on("click", ".btn-modal-add-category", function(){
            $('.btnAddCategory').trigger("click");
        });

        $(document).on("click", ".btnAddCategory", function(){
            _that     = $(this);
            _form     = _that.closest("form");
            _data     = _form.serialize();
            _title    = $(".category_title").val();
            _category = _that.data("type");
			_action = _that.data('action');
            _data     = _data + '&' + $.param({token:token, title: _title, category: _category});
            $(".page-loader-action").fadeIn();
            if(!_form.hasClass('disable')){
                _form.addClass('disable');
                $.post(_action, _data, function(result){
                    if(result.st == "error"){
                        self.showNotification(result['label'], result['txt'], 'bottom', 'center', 'animated bounceIn', 'animated bounceOut');
                    }else if(result.st == "title"){
                        $('#modal-category').modal('toggle');
                    }else{
                        setTimeout(function(){
                            window.location.reload();
                        },2000);
                        $(".category_title").val("");
                        $('#modal-category').modal('hide');
                        self.showNotification(result['label'], result['txt'], 'bottom', 'center', 'animated bounceIn', 'animated bounceOut');
                    }
                    _form.removeClass('disable');
                    $(".page-loader-action").fadeOut();
                },'json');
            }
        });

        $(document).on("click", ".btn-modal-update-category", function(){
            $('.btnUpdateCategory').trigger("click");
        });

        $(document).on("click", ".btnUpdateCategory", function(){
            _that     = $(this);
            _form     = _that.closest("form");
            _data     = _form.serialize();
            _cid      = $(".category_id").val();
            _data     = _data + '&' + $.param({token:token, cid: _cid});
			_action = _that.data('action');
            $(".page-loader-action").fadeIn();
            if(!_form.hasClass('disable')){
                _form.addClass('disable');
                $.post(_action, _data, function(result){
                    if(result.st == "error"){
                        self.showNotification(result['label'], result['txt'], 'bottom', 'center', 'animated bounceIn', 'animated bounceOut');
                    }else if(result.st == "id"){
                        $('#modal-update-category').modal('toggle');
                    }else{
						//alert(result)
                        setTimeout(function(){
                            window.location.reload();
                        },2000);
                        $('#modal-update-category').modal('hide');
                        self.showNotification(result['label'], result['txt'], 'bottom', 'center', 'animated bounceIn', 'animated bounceOut');
                    }
                    _form.removeClass('disable');
                    $(".page-loader-action").fadeOut();
                },'json');
            }
        });

        $(document).on("change", ".categories", function(){
            _that  = $(this);
			_action = _that.data('action');
            _id    = _that.val();
            _data  = $.param({token:token, id: _id});
            $.post(_action, _data, function(result){
                window.location.reload();
            });
        });

        $(document).on("click", ".btnDeleteCategory", function(){
             _that     = $(this);
            _form     = _that.closest("form");
            _id    = $(".categories").val();
            _data  = $.param({token:token, id: _id});
			_action = $(this).data('action');
            $(".page-loader-action").fadeIn();
            if(!_that.hasClass('disable')){
                _that.addClass('disable');
                $.post(_action, _data, function(result){
					if(result.st == "error")
					{
                        self.showNotification(result['label'], result['txt'], 'bottom', 'center', 'animated bounceIn', 'animated bounceOut');
                    }
					else
					{
						setTimeout(function(){
							window.location.reload();
						},2000);
                        self.showNotification(result['label'], result['txt'], 'bottom', 'center', 'animated bounceIn', 'animated bounceOut');						
					}
					_form.removeClass('disable');
					$(".page-loader-action").fadeOut();
                },'json');
            }
        });
    }

    this.FacebookJoinGroup = function(){
        $(".formFacebookSearch .enter-keyword").keypress(function(e){
            if(e.keyCode == 13){
                $(".btnSearchGroups").trigger("click");      
            }
        });

        $(document).on("click", ".tab_add_friend a", function(){
            _that = $(this);
            _id   = _that.attr("href");
            $(".list_account").attr("name", "account_temp");
            $(_id + " .list_account").attr("name", "account");
        });

        $(document).on("click", ".btnSearchGroups",  function(){
            _that    = $(this);
            _form    = _that.parents(".list-filter-search");
            _action  = _form.data("action");
            _limit   = _form.find("select[name=limit]").val();
            _account = _form.find("select[name=account]").val();
            _keyword = _form.find("input[name=keyword]").val();
            _type    = _form.find("select[name=type]").val();
            if(_type == "" || _type == undefined){
                _type    = $(".tab_add_friend .active").data("type");
            }

            if(!_that.hasClass('disable')){
                _that.addClass('disable');
                $(".page-loader-action").fadeIn();
                $.post(_action, {token: token, limit: _limit, account: _account, keyword: _keyword, type: _type}, function(result){
                    if(result.length <= 200){
                        result = jQuery.parseJSON(result);
                        self.showNotification(result.label, result.txt, 'bottom', 'center', 'animated bounceIn', 'animated bounceOut');
                    }else{
                        $(".result_search").html(result);
                    }

                    $(".page-loader-action").fadeOut();
                    _that.removeClass('disable');
                });
            }
        });
    }

    this.FacebookSearch = function(){
        $(".geocomplete").geocomplete();

        $(document).on('click', '.list-type-search .item', function(){
            $('.list-type-search .item').removeClass('active');
            $(this).addClass('active');
        });

        $(document).on('click', '.map-event', function (){
            _title = $(this).data('title');
            _lat = $(this).data('lat');
            _lng = $(this).data('lng');
            $('#mdModal .modal-content').removeAttr('class').addClass('modal-content');
            $('#mdModal .modal-title').html(_title);
            $('#mdModal .modal-body').html('<div id="gmap_markers" class="gmap"></div>');
            $('#mdModal').modal('show');
            setTimeout(function(){
                var markers = new GMaps({
                    div: '#gmap_markers',
                    lat: _lat,
                    lng: _lng
                });
                markers.addMarker({
                    lat: _lat,
                    lng: _lng,
                    infoWindow: {
                        content: '<p>'+_title+'</p>'
                    }
                });
            },1000);
        });

        $('.formFacebookSearch').submit(function(){
            _that     = $(this);
            _action   = _that.attr("action");
            _type     = $(".list-type-search .active").data("type");
            _data     = _that.serialize();
            _data     = _data + '&' + $.param({token:token, type: _type});

            if(!_that.hasClass('disable')){
                _that.addClass('disable');
                $(".page-loader-action").fadeIn();
                $.post(_action, _data, function(result){
                    if(result.length <= 200){
                        result = jQuery.parseJSON(result);
                        self.showNotification(result.label, result.txt, 'bottom', 'center', 'animated bounceIn', 'animated bounceOut');
                    }else{
                        $(".result_search").html(result);
                    }

                    $(".page-loader-action").fadeOut();
                    _that.removeClass('disable');
                });
            }
            return false;
        });

        $(document).on("click", ".getMembersOnGroup", function(){
            _that    = $(this);
            _id      = _that.data("id");
            _action  = _that.data("action");
            _limit   = _form.find("select[name=limit]").val();
            _account = _form.find("select[name=account]").val(); 
            _data    = $.param({token:token, limit: _limit, account: _account, id: _id});
            if(!_that.hasClass('disable')){
                _that.addClass('disable');
                $(".page-loader-action").fadeIn();
                $.post(_action, _data, function(result){
                    if(result.length <= 200){
                        result = jQuery.parseJSON(result);
                        self.showNotification(result.label, result.txt, 'bottom', 'center', 'animated bounceIn', 'animated bounceOut');
                    }else{
                        $(".result_search").html(result);
                    }

                    $(".page-loader-action").fadeOut();
                    _that.removeClass('disable');
                });
            }
        });
    }

    this.showNotification = function(colorName, text, placementFrom, placementAlign, animateEnter, animateExit) {
        if (colorName === null || colorName === '') { colorName = 'bg-black'; }
        if (text === null || text === '') { text = 'Turning standard Bootstrap alerts'; }
        if (animateEnter === null || animateEnter === '') { animateEnter = 'animated fadeInDown'; }
        if (animateExit === null || animateExit === '') { animateExit = 'animated fadeOutUp'; }
        var allowDismiss = true;

        $.notify({
            message: text
        },
            {
                type: colorName,
                allow_dismiss: allowDismiss,
                newest_on_top: true,
                timer: 1000,
                placement: {
                    from: placementFrom,
                    align: placementAlign
                },
                animate: {
                    enter: animateEnter,
                    exit: animateExit
                },
                template: '<div data-notify="container" class="bootstrap-notify-container alert alert-dismissible {0} ' + (allowDismiss ? "p-r-35" : "") + '" role="alert">' +
                '<button type="button" aria-hidden="true" class="close" data-notify="dismiss">x</button>' +
                '<span data-notify="icon"></span> ' +
                '<span data-notify="title">{1}</span> ' +
                '<span data-notify="message">{2}</span>' +
                '<div class="progress" data-notify="progressbar">' +
                '<div class="progress-bar progress-bar-{0}" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;"></div>' +
                '</div>' +
                '<a href="{3}" target="{4}" data-notify="url"></a>' +
                '</div>'
            });
    };

    this.ExportTable = function(element) {
        $(element).DataTable({
            paging: false,
            columnDefs: [ {
                targets: 0,
                orderable: false
            }],
            aaSorting: [],
            language: {
                search: 'Search ',
            },
            bPaginate: false,
            bLengthChange: false,
            bFilter: true,
            bInfo: false,
            bAutoWidth: false,
            responsive: true,
            emptyTable: Lang['emptyTable'],
            dom: 'Bfrtip',
            buttons: [
                'copy', 'csv', 'excel', 'print'
            ]
        });
    }

    this.getMinutes = function(seconds){
        return new Date(new Date().valueOf() + seconds * 1000);
    }

    this.cutText = function(text, number){
        if(text.length > number){
            return text.substring(0, number)+"...";
        }else{
            return text;
        }
    } 

    this.spintax = function (spun) {
        var match;
        while (match = spun.match(SPINTAX_PATTERN)) {
            match = match[0];
            var candidates = match.substring(1, match.length - 1).split("|");
            spun = spun.replace(match, candidates[Math.floor(Math.random() * candidates.length)])
        }
        return spun;
    }

    this.showConfirmMessage = function($message, $function) {
        swal({
            title: $message,
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: 'Yes',
            closeOnConfirm: false
        }, $function);
    }

    this.showSuccessAutoClose = function($message, $label, $timeout) {
        swal({
            title: $message,
            type: $label,
            timer: $timeout,
            closeOnConfirm: false,
            showConfirmButton: false
        });
    }
}
Page= new Page();
$(function(){
    Page.init();
});

$.fn.dataTable.pipeline = function ( opts ) {
    // Configuration options
    var conf = $.extend( {
        pages: 5,     // number of pages to cache
        url: '',      // script url
        data: null,   // function or object with parameters to send to the server
                      // matching how `ajax.data` works in DataTables
        method: 'GET' // Ajax HTTP method
    }, opts );
 
    // Private variables for storing the cache
    var cacheLower = -1;
    var cacheUpper = null;
    var cacheLastRequest = null;
    var cacheLastJson = null;
 
    return function ( request, drawCallback, settings ) {
        var ajax          = false;
        var requestStart  = request.start;
        var drawStart     = request.start;
        var requestLength = request.length;
        var requestEnd    = requestStart + requestLength;
         
        if ( settings.clearCache ) {
            // API requested that the cache be cleared
            ajax = true;
            settings.clearCache = false;
        }
        else if ( cacheLower < 0 || requestStart < cacheLower || requestEnd > cacheUpper ) {
            // outside cached data - need to make a request
            ajax = true;
        }
        else if ( JSON.stringify( request.order )   !== JSON.stringify( cacheLastRequest.order ) ||
                  JSON.stringify( request.columns ) !== JSON.stringify( cacheLastRequest.columns ) ||
                  JSON.stringify( request.search )  !== JSON.stringify( cacheLastRequest.search )
        ) {
            // properties changed (ordering, columns, searching)
            ajax = true;
        }
         
        // Store the request for checking next time around
        cacheLastRequest = $.extend( true, {}, request );
 
        if ( ajax ) {
            // Need data from the server
            if ( requestStart < cacheLower ) {
                requestStart = requestStart - (requestLength*(conf.pages-1));
 
                if ( requestStart < 0 ) {
                    requestStart = 0;
                }
            }
             
            cacheLower = requestStart;
            cacheUpper = requestStart + (requestLength * conf.pages);
 
            request.start = requestStart;
            request.length = requestLength*conf.pages;
 
            // Provide the same `data` options as DataTables.
            if ( $.isFunction ( conf.data ) ) {
                // As a function it is executed with the data object as an arg
                // for manipulation. If an object is returned, it is used as the
                // data object to submit
                var d = conf.data( request );
                if ( d ) {
                    $.extend( request, d );
                }
            }
            else if ( $.isPlainObject( conf.data ) ) {
                // As an object, the data given extends the default
                $.extend( request, conf.data );
            }
 
            settings.jqXHR = $.ajax( {
                "type":     conf.method,
                "url":      conf.url,
                "data":     request,
                "dataType": "json",
                "cache":    false,
                "success":  function ( json ) {
                    cacheLastJson = $.extend(true, {}, json);
 
                    if ( cacheLower != drawStart ) {
                        json.data.splice( 0, drawStart-cacheLower );
                    }
                    if ( requestLength >= -1 ) {
                        json.data.splice( requestLength, json.data.length );
                    }
                     
                    drawCallback( json );

                    //Tooltip
                    $('[data-toggle="tooltip"]').tooltip({
                        container: 'body'
                    });

                    //Popover
                    $('[data-toggle="popover"]').popover({
                        html : true,
                    });

                    $('.btnAnalyticsPost').click(function(){
                        _that    = $(this);
                        _action  = _that.data("action");
                        _id      = _that.data("id");
                        _data    = $.param({token:token, id: _id});
                        if(!_that.hasClass('disable')){
                            _that.addClass('disable');
                            $.post(_action, _data, function(data){
                                _that.attr("data-content", data.txt);
                                _that.popover('show');
                            },'json');
                        }
                        return false;
                    });
                }
            } );
        }
        else {
            json = $.extend( true, {}, cacheLastJson );
            json.draw = request.draw; // Update the echo for each response
            json.data.splice( 0, requestStart-cacheLower );
            json.data.splice( requestLength, json.data.length );
 
            drawCallback(json);
        }
    }
};

// Register an API method that will empty the pipelined data, forcing an Ajax
// fetch on the next draw (i.e. `table.clearPipeline().draw()`)
$.fn.dataTable.Api.register( 'clearPipeline()', function () {
    return this.iterator( 'table', function ( settings ) {
        settings.clearCache = true;
    } );
} );