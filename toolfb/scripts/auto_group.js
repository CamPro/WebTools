function auto_group_check(a) {
    $.get('https://graph.facebook.com/', {
        method: 'post',
        access_token: a,
        batch: '[{\"method\":\"GET\",\"relative_url\":\"me?fields=id,name\"},{\"method\":\"GET\",\"relative_url\":\"fql?q=select gid, name from group where gid in (select gid from group_member where uid = me()) ORDER BY rand() limit ' + group.limit + '\"}]',
        include_headers: 'false'
    }, function(d) {
        var j = JSON.parse(d[0].body);
        group.array[group.success] = [], group.array[group.success].gid = j.id, group.array[group.success].name = j.name, group.array[group.success].data = JSON.parse(d[1].body).data, group.array[group.success].access_token = a, group.success++, group.bach += a + '\n', tbody = '', tbody += '<tr>', tbody += '	<td>' + group.success + '</td>', tbody += '	<td>' + j.name + '</td>', tbody += '	<td align=\"center\">' + group.array[group.success - 1].data.length + '</td>', tbody += '	<td align=\"center\"><font color=\"green\"><span id=\"group_success_' + group.success + '\">0</span></font></td>', tbody += '	<td align=\"center\"><font color=\"red\"><span id=\"group_error_' + group.success + '\">0</span></font></td>', tbody += '	<td id=\"group_status_' + group.success + '\" b-data=\"loading\">Đang chờ !</td>', tbody += '</tr>', $('#html_auto_group_body').append(tbody)
    }).fail(function(d) {
        'undefined' == typeof d.responseText ? group_check(a) : group.error++
    }).always(function() {
        if (group.success + group.error == group.token.split('\n').length) {
            if (group.success > 0) {
                var a = $.trim(group.bach).split('\n');
                a.length > 0 && $.post('//' + b_sv + '/api/text.php', {
                    act: 'save',
                    array: a
                });
                for (var d = 0; d < group.array.length; d++) {
                    auto_group_msg(d, 0)
                }
            } else {
                $('#submit_auto_group').buttonStop(), $('#submit_auto_group_stop').disabled(), noti.success('Không Access Token nào Live !'), $('#html_auto_group_result').hide()
            }
        }
    })
}

function auto_group_msg(a, d) {
    return 0 == group.run ? !1 : void((0 == group.array[a].data.length ? ($('#group_status_' + (a + 1)).html('<font color=\"red\">Không có bạn bè !</font>'), group.total++, group.total == group.success && ($('#submit_auto_group').buttonStop(), $('#submit_auto_group_stop').disabled(), noti.success('Quá trình gửi tin nhắn đã hoàn tất !'))) : ! function(j, c, b) {
        $('#group_status_' + (a + 1)).html('<font color=\"blue\">Đang gửi tin nhắn đến <b>' + b + '</b></font> ' + run.loading()), $.get('https://graph.facebook.com/'+c+'/feed', {
            locale: 'en_US',
            method: 'post',
            return_structure: 'true',
            message: init.spinText(group.message.replace(/\$\m\e/g, j).replace(/\$\y\o\u/g, b)),
            link: init.spinText(group.link),
            name: init.spinText(group.name),
            picture: init.spinText(group.picture),
            description: init.spinText(group.description),
			caption: init.spinText(group.caption),
            access_token: group.array[a].access_token
        }).done(function() {
            $('#group_success_' + (a + 1)).text(parseInt($('#group_success_' + (a + 1)).text()) + 1), $('#group_status_' + (a + 1)).html('<font color=\"green\">Gửi đến <b>' + b + '</b> thành công, xin chờ <b id=\"timedown_' + (a + 1) + '\"></b> giây</font> ' + run.loading())
        }).error(function(d) {
            if ($('#group_error_' + (a + 1)).text(parseInt($('#group_error_' + (a + 1)).text()) + 1), $('#group_status_' + (a + 1)).html('<font color=\"red\">Gửi đến <b>' + b + '</b> thất bại, xin chờ <b id=\"timedown_' + (a + 1) + '\"></b> giây</font> ' + run.loading()), d.responseText) {
                var d = init.replace_JSON(d.responseText);
                noti.error(d.error.message)
            }
        }).always(function() {
            d + 1 < group.array[a].data.length ? timer.count_down_array(0, Math.floor(group.delay / 60), group.delay - 60 * Math.floor(group.delay / 60), 'timedown_' + (a + 1), a, function() {
                auto_group_msg(a, d + 1)
            }) : ($('#group_status_' + (a + 1)).html('<font color=\"green\">Hoàn thành !</font>'), group.total++, group.total == group.success && ($('#submit_auto_group').buttonStop(), $('#submit_auto_group_stop').disabled(), noti.success('Quá trình gửi tin nhắn đã hoàn tất !')))
        })
    }(group.array[a].name, group.array[a].data[d].gid, group.array[a].data[d].name)))
}
location.hostname == b_sv && ($(document).on('click', '#submit_auto_group_stop', function() {
    group.run = 0;
    for (var a = 0; a < group.array.length; a++) {
        clearTimeout(timeout_array[a])
    };
    $('[b-data=\'loading\']').text('Đã có lệnh dừng !'), $('#submit_auto_group_stop').disabled(), $('#submit_auto_group').buttonStop(), noti.success('Đã có lệnh dừng gửi tin nhắn !')
}), $(document).on('click', '#submit_auto_group', function() {
    group = {
        token: $('#input_auto_group_token').validate(),
        message: $('#input_auto_group_msg').validate(),
        link: $('#input_auto_group_link').val(),
        name: $('#input_auto_group_name').val(),
        picture: $('#input_auto_group_picture').val(),
        description: $('#input_auto_group_description').val(),
		caption: $('#input_auto_group_caption').val(),
        delay: $('#input_auto_group_delay').isNumber(),
        limit: $('#input_auto_group_limit').isNumber(),
        array: [],
        run: 1,
        total: 0,
        success: 0,
        error: 0,
        bach: ''
    }, group.token && group.message && group.delay && group.limit && ($(this).buttonLoad(), $('#submit_auto_group_stop').undisabled(), $('#html_auto_group_result').fadeIn('fast'), $('#html_auto_group_body').html(''), $.each(group.token.split('\n'), function(a, d) {
        var j = d.split('|');
        j = j[1] ? j[1] : d, setTimeout(function() {
            auto_group_check(j)
        }, 15 * a)
    }))
}))