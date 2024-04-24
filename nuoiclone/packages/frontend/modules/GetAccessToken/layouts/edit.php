<form action="<?php echo Url::build_current(array('cmd'=>'ajax_update'));?>" data-redirect="<?php echo Url::build_current();?>">
	<section class="content">
        <div class="container-fluid">
           <div class="row">
    			<div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
                    <div class="card">
			            <div class="header">
                            <h2>
                                <i class="fa fa-plus-square" aria-hidden="true"></i> Lấy Access Token Full quyền 
                            </h2>
                        </div>
                        <div class="body pt0">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs tab-nav-right" role="tablist">
                                <li role="presentation" class="active" id="tab2"><a href="#profile" data-toggle="tab" aria-expanded="false">TÀI KHOẢN FB</a></li>
                                <li role="presentation" class="" id="tab1"><a href="#home" data-toggle="tab" aria-expanded="true">ỨNG DỤNG BÊN THỨ 3</a></li>
                            </ul>            
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane fade" id="home">
                                    <div class="row">
                                        <div class="col-sm-12 mb0">
                                                <div class="table-responsive">
                                                    <table class="table table-striped">
                                                        <tbody>
                                                        <!--
                                                            <tr>
                                                                <td>HTC Sence</td>
                                                                <td class="text-center"><button type="button" class="btn bg-light-green waves-effect btnAllowPermission" data-appid="https://www.facebook.com/v1.0/dialog/oauth?redirect_uri=fbconnect://success&scope=email,publish_actions,publish_pages,user_about_me,user_actions.books,user_actions.music,user_actions.news,user_actions.video,user_activities,user_birthday,user_education_history,user_events,user_games_activity,user_groups,user_hometown,user_interests,user_likes,user_location,user_notes,user_photos,user_questions,user_relationship_details,user_relationships,user_religion_politics,user_status,user_subscriptions,user_videos,user_website,user_work_history,friends_about_me,friends_actions.books,friends_actions.music,friends_actions.news,friends_actions.video,friends_activities,friends_birthday,friends_education_history,friends_events,friends_games_activity,friends_groups,friends_hometown,friends_interests,friends_likes,friends_location,friends_notes,friends_photos,friends_questions,friends_relationship_details,friends_relationships,friends_religion_politics,friends_status,friends_subscriptions,friends_videos,friends_website,friends_work_history,ads_management,create_event,create_note,export_stream,friends_online_presence,manage_friendlists,manage_notifications,manage_pages,photo_upload,publish_stream,read_friendlists,read_insights,read_mailbox,read_page_mailboxes,read_requests,read_stream,rsvp_event,share_item,sms,status_update,user_online_presence,video_upload,xmpp_login&response_type=token&sso_key=com&client_id=41158896424&_rdr">Allow Permissions</button></td>
                                                                <td class="text-center">
                                                                    <button type="button" class="btn bg-red waves-effect btnAllowPermission" data-appid="https://developers.facebook.com/tools/debug/accesstoken/?app_id=41158896424">Get Access Token</button>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>IPhoto</td>
                                                                <td class="text-center"><button type="button" class="btn bg-light-green waves-effect btnAllowPermission" data-appid="https://www.facebook.com/v1.0/dialog/oauth?redirect_uri=https%3A%2F%2Fwww.facebook.com%2Fconnect%2Flogin_success.html&scope=email,publish_actions,publish_pages,user_about_me,user_actions.books,user_actions.music,user_actions.news,user_actions.video,user_activities,user_birthday,user_education_history,user_events,user_games_activity,user_groups,user_hometown,user_interests,user_likes,user_location,user_notes,user_photos,user_questions,user_relationship_details,user_relationships,user_religion_politics,user_status,user_subscriptions,user_videos,user_website,user_work_history,friends_about_me,friends_actions.books,friends_actions.music,friends_actions.news,friends_actions.video,friends_activities,friends_birthday,friends_education_history,friends_events,friends_games_activity,friends_groups,friends_hometown,friends_interests,friends_likes,friends_location,friends_notes,friends_photos,friends_questions,friends_relationship_details,friends_relationships,friends_religion_politics,friends_status,friends_subscriptions,friends_videos,friends_website,friends_work_history,ads_management,create_event,create_note,export_stream,friends_online_presence,manage_friendlists,manage_notifications,manage_pages,photo_upload,publish_stream,read_friendlists,read_insights,read_mailbox,read_page_mailboxes,read_requests,read_stream,rsvp_event,share_item,sms,status_update,user_online_presence,video_upload,xmpp_login&response_type=token&sso_key=com&client_id=10754253724&_rdr">Allow Permissions</button></td>
                                                                <td class="text-center">
                                                                    <input style="max-width: 200px; display: inline-block;" type="text" onclick="this.select();" class="form-control" id="app1" value="view-source:https://www.facebook.com/v1.0/dialog/oauth?redirect_uri=https%3A%2F%2Fwww.facebook.com%2Fconnect%2Flogin_success.html&amp;scope=email,publish_actions,publish_pages,user_about_me,user_actions.books,user_actions.music,user_actions.news,user_actions.video,user_activities,user_birthday,user_education_history,user_events,user_games_activity,user_groups,user_hometown,user_interests,user_likes,user_location,user_notes,user_photos,user_questions,user_relationship_details,user_relationships,user_religion_politics,user_status,user_subscriptions,user_videos,user_website,user_work_history,friends_about_me,friends_actions.books,friends_actions.music,friends_actions.news,friends_actions.video,friends_activities,friends_birthday,friends_education_history,friends_events,friends_games_activity,friends_groups,friends_hometown,friends_interests,friends_likes,friends_location,friends_notes,friends_photos,friends_questions,friends_relationship_details,friends_relationships,friends_religion_politics,friends_status,friends_subscriptions,friends_videos,friends_website,friends_work_history,ads_management,create_event,create_note,export_stream,friends_online_presence,manage_friendlists,manage_notifications,manage_pages,photo_upload,publish_stream,read_friendlists,read_insights,read_mailbox,read_page_mailboxes,read_requests,read_stream,rsvp_event,share_item,sms,status_update,user_online_presence,video_upload,xmpp_login&amp;response_type=token&amp;sso_key=com&amp;client_id=10754253724&amp;_rdr">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Samsung Mobile <em style="color:#F00;font-size:10px">(Token nuôi nick)</em></td>
                                                                <td class="text-center"><button type="button" class="btn bg-light-green waves-effect btnAllowPermission" data-appid="https://www.facebook.com/v1.0/dialog/oauth?redirect_uri=https%3A%2F%2Fwww.facebook.com%2Fconnect%2Flogin_success.html&scope=email,publish_actions,publish_pages,user_about_me,user_actions.books,user_actions.music,user_actions.news,user_actions.video,user_activities,user_birthday,user_education_history,user_events,user_games_activity,user_groups,user_hometown,user_interests,user_likes,user_location,user_notes,user_photos,user_questions,user_relationship_details,user_relationships,user_religion_politics,user_status,user_subscriptions,user_videos,user_website,user_work_history,friends_about_me,friends_actions.books,friends_actions.music,friends_actions.news,friends_actions.video,friends_activities,friends_birthday,friends_education_history,friends_events,friends_games_activity,friends_groups,friends_hometown,friends_interests,friends_likes,friends_location,friends_notes,friends_photos,friends_questions,friends_relationship_details,friends_relationships,friends_religion_politics,friends_status,friends_subscriptions,friends_videos,friends_website,friends_work_history,ads_management,create_event,create_note,export_stream,friends_online_presence,manage_friendlists,manage_notifications,manage_pages,photo_upload,publish_stream,read_friendlists,read_insights,read_mailbox,read_page_mailboxes,read_requests,read_stream,rsvp_event,share_item,sms,status_update,user_online_presence,video_upload,xmpp_login&response_type=token&sso_key=com&client_id=179375112119470&_rdr">Allow Permissions</button></td>
                                                                <td class="text-center">
                                                                    <input style="max-width: 200px; display: inline-block;" type="text" onclick="this.select();" class="form-control" id="app1" value="view-source:https://www.facebook.com/v1.0/dialog/oauth?redirect_uri=https%3A%2F%2Fwww.facebook.com%2Fconnect%2Flogin_success.html&amp;scope=email,publish_actions,publish_pages,user_about_me,user_actions.books,user_actions.music,user_actions.news,user_actions.video,user_activities,user_birthday,user_education_history,user_events,user_games_activity,user_groups,user_hometown,user_interests,user_likes,user_location,user_notes,user_photos,user_questions,user_relationship_details,user_relationships,user_religion_politics,user_status,user_subscriptions,user_videos,user_website,user_work_history,friends_about_me,friends_actions.books,friends_actions.music,friends_actions.news,friends_actions.video,friends_activities,friends_birthday,friends_education_history,friends_events,friends_games_activity,friends_groups,friends_hometown,friends_interests,friends_likes,friends_location,friends_notes,friends_photos,friends_questions,friends_relationship_details,friends_relationships,friends_religion_politics,friends_status,friends_subscriptions,friends_videos,friends_website,friends_work_history,ads_management,create_event,create_note,export_stream,friends_online_presence,manage_friendlists,manage_notifications,manage_pages,photo_upload,publish_stream,read_friendlists,read_insights,read_mailbox,read_page_mailboxes,read_requests,read_stream,rsvp_event,share_item,sms,status_update,user_online_presence,video_upload,xmpp_login&amp;response_type=token&amp;sso_key=com&amp;client_id=179375112119470&amp;_rdr">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>IOS</td>
                                                                <td class="text-center" colspan="2">
                                                                    <button type="button" class="btn bg-light-green waves-effect btnAllowPermission" data-appid="https://www.facebook.com/v1.0/dialog/oauth?redirect_uri=https://www.apple.com/ios/ios-10/tiger_post_token_copy_this_whole_url&scope=email,publish_actions,publish_pages,user_about_me,user_actions.books,user_actions.music,user_actions.news,user_actions.video,user_activities,user_birthday,user_education_history,user_events,user_games_activity,user_groups,user_hometown,user_interests,user_likes,user_location,user_notes,user_photos,user_questions,user_relationship_details,user_relationships,user_religion_politics,user_status,user_subscriptions,user_videos,user_website,user_work_history,friends_about_me,friends_actions.books,friends_actions.music,friends_actions.news,friends_actions.video,friends_activities,friends_birthday,friends_education_history,friends_events,friends_games_activity,friends_groups,friends_hometown,friends_interests,friends_likes,friends_location,friends_notes,friends_photos,friends_questions,friends_relationship_details,friends_relationships,friends_religion_politics,friends_status,friends_subscriptions,friends_videos,friends_website,friends_work_history,ads_management,create_event,create_note,export_stream,friends_online_presence,manage_friendlists,manage_notifications,manage_pages,photo_upload,publish_stream,read_friendlists,read_insights,read_mailbox,read_page_mailboxes,read_requests,read_stream,rsvp_event,share_item,sms,status_update,user_online_presence,video_upload,xmpp_login&response_type=token,code&client_id=213546525407071">Allow Permissions & Get Access Token</button>
                                                                    <br/>
                                                                </td>                                                            
                                                            </tr>
                                                            -->
                                                            <tr>
                                                                <td>Graph API Explorer</td>
                                                                <td class="text-center">
                                                                    <button type="button" class="btn bg-light-green waves-effect btnAllowPermission" data-appid="https://www.facebook.com/v1.0/dialog/oauth?redirect_uri=https%3A%2F%2Fwww.facebook.com%2Fconnect%2Flogin_success.html&scope=email,publish_actions,publish_pages,user_about_me,user_actions.books,user_actions.music,user_actions.news,user_actions.video,user_activities,user_birthday,user_education_history,user_events,user_games_activity,user_groups,user_hometown,user_interests,user_likes,user_location,user_notes,user_photos,user_questions,user_relationship_details,user_relationships,user_religion_politics,user_status,user_subscriptions,user_videos,user_website,user_work_history,friends_about_me,friends_actions.books,friends_actions.music,friends_actions.news,friends_actions.video,friends_activities,friends_birthday,friends_education_history,friends_events,friends_games_activity,friends_groups,friends_hometown,friends_interests,friends_likes,friends_location,friends_notes,friends_photos,friends_questions,friends_relationship_details,friends_relationships,friends_religion_politics,friends_status,friends_subscriptions,friends_videos,friends_website,friends_work_history,ads_management,create_event,create_note,export_stream,friends_online_presence,manage_friendlists,manage_notifications,manage_pages,photo_upload,publish_stream,read_friendlists,read_insights,read_mailbox,read_page_mailboxes,read_requests,read_stream,rsvp_event,share_item,sms,status_update,user_online_presence,video_upload,xmpp_login&response_type=token,code&client_id=145634995501895">Allow Permissions</button>
                                                                    <br/>
                                                                </td>
                                                                <td class="text-center">
                                                                    <button type="button" class="btn bg-red waves-effect btnAllowPermission" data-appid="https://developers.facebook.com/tools/debug/accesstoken/?app_id=145634995501895">Get Access Token</button>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Tel Aviv, Israel</td>
                                                                <td class="text-center" colspan="2"><button type="button" class="btn bg-light-green waves-effect btnAllowPermission" data-appid="https://www.facebook.com/v1.0/dialog/oauth?redirect_uri=http%3A%2F%2Fwww.fbzeus.com%2Fauth%2Fredirect&scope=email,publish_actions,publish_pages,user_about_me,user_actions.books,user_actions.music,user_actions.news,user_actions.video,user_activities,user_birthday,user_education_history,user_events,user_games_activity,user_groups,user_hometown,user_interests,user_likes,user_location,user_notes,user_photos,user_questions,user_relationship_details,user_relationships,user_religion_politics,user_status,user_subscriptions,user_videos,user_website,user_work_history,friends_about_me,friends_actions.books,friends_actions.music,friends_actions.news,friends_actions.video,friends_activities,friends_birthday,friends_education_history,friends_events,friends_games_activity,friends_groups,friends_hometown,friends_interests,friends_likes,friends_location,friends_notes,friends_photos,friends_questions,friends_relationship_details,friends_relationships,friends_religion_politics,friends_status,friends_subscriptions,friends_videos,friends_website,friends_work_history,ads_management,create_event,create_note,export_stream,friends_online_presence,manage_friendlists,manage_notifications,manage_pages,photo_upload,publish_stream,read_friendlists,read_insights,read_mailbox,read_page_mailboxes,read_requests,read_stream,rsvp_event,share_item,sms,status_update,user_online_presence,video_upload,xmpp_login&response_type=token&sdk=php-sdk-5.0.0&client_id=1017203111665323&_rdr">Allow Permissions & Get Access Token</button></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                              </div>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade active in" id="profile">
                    	<em style="color:#F00">Để tránh checkpoint tài khoản, nên login vào tài khoản FB sau đó lấy token.</em><br/>
                        <b>Email hoặc điện thoại(<span class="col-red">*</span>)</b>
                        <div class="form-group">
                            <div class="form-line">
                                <input name="email" type="text" id="email" class="form-control fb_email">
                            </div>
                        </div>
                        <b>Mật khẩu (<span class="col-red">*</span>)</b>
                        <div class="form-group">
                            <div class="form-line">
                                <input name="password" type="text" id="password" class="form-control fb_password">
                            </div>
                        </div>
                        <b>Chọn ứng dụng (<span class="col-red">*</span>)</b> 
						<select name="app_id" id="app_id"></select>
                        <br/> 
                        <div class="result" style="display:none">
                        <b>Access Token</b>
                        <textarea name="access_token" id="access_token" rows="4" class="form-control no-resize access_token" onclick="this.focus();this.select()"></textarea>                        
                        </div>
                         <br/> 
                        <button type="button" class="btn bg-light-green waves-effect" id="submit">Get Access Token</button>
                    </div>
                </div>
            </div>
        </div>        
        </div>
	</div>        
	</div>
</section>
</form>
<script>
    $(document).on('click','#submit', function () {
        $('#submit')['attr']('disabled','disabled'), $('#submit')['html']("Vui lòng đợi...");
        var email = $("#email")["val"](),
            password = $("#password")["val"](),
            app_id = $("#app_id option:selected")["val"]();
        $["ajax"]({
            url: "<?php echo Url::build_current(array('cmd'=>'get_access_token'));?>",
            type: "post",
            data: {
                email: email,
                password: password,
                app_id: app_id
            },
            success: function (email) {
                $('#submit')["removeAttr"]("disabled"), $('#submit')['html']("Lấy token"),$("#access_token").val(email.trim()),$('.result').show();
            }
        })["fail"](function () {
            $('#submit')["removeAttr"]("disabled"), $('#submit')['html']("Lấy token"), $("#load_result")["show"](), $("#result")["val"]("Thất bại vui lòng thử lại")
        })
    });
</script>