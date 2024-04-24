<script>
function start()
{        
         $("a").attr("disabled", "disabled");
         $("input").attr("disabled", "disabled");
         $("select").attr("disabled", "disabled");   
         $("button").attr("disabled", "disabled");
         $("textarea").attr("disabled", "disabled"); 
} 
function finish()
{        
         $("a").removeAttr("disabled");
         $("input").removeAttr("disabled");  
         $("select").removeAttr("disabled"); 
         $("button").removeAttr("disabled");
         $("textarea").removeAttr("disabled"); } 
function Submit() 
{
start();

         $('#adfly').html('Please Wait...');
         $('#result').html('<i class="fa fa-spinner fa-pulse"></i> Loading...');
         var email = $('#email').val(); 
         var password = $('#password').val();
         var kieu = $('#kieu').val();
         a = $("#app_id option:selected").val();
         //Kiem tra gia tri
         if(email == '' || password == ''){ 
         $(function (){
         toastr.error('Bạn Chưa Nhập Thông Tin')});
         $("a").removeAttr("disabled");
         $("input").removeAttr("disabled");  
         $("select").removeAttr("disabled"); 
         $("button").removeAttr("disabled");
         $("textarea").removeAttr("disabled"); 
         $("#result").html('<i class="fa fa-sign-in"></i> Đăng Nhập'); 
         return false;
         } 
        //END
         var url_login	 = 'get.php';	
$.ajax({		
         url	 : url_login,	
         data	 : 'email='+email+'&password='+password+'&kieu='+kieu+'&app_id='+a,
         type	 : 'POST',	
         dataType: 'html', 
         success : function(pesan){ 
finish();
         $("#end").show();
         $("#result").html('<i class="fa fa-sign-in"></i> Đăng Nhập');
         $("#result2").html(pesan);
         

    },
   }); 
}
</script>
<script>
function start()
{        
         $("a").attr("disabled", "disabled");
         $("input").attr("disabled", "disabled");
         $("select").attr("disabled", "disabled");   
         $("button").attr("disabled", "disabled");
         $("textarea").attr("disabled", "disabled"); 
} 
function finish()
{        
         $("a").removeAttr("disabled");
         $("input").removeAttr("disabled");  
         $("select").removeAttr("disabled"); 
         $("button").removeAttr("disabled");
         $("textarea").removeAttr("disabled"); } 
function Submit() 
{
start();

         $('#adfly').html('Please Wait...');
         $('#result').html('<i class="fa fa-spinner fa-pulse"></i> Loading...');
         var email = $('#email').val(); 
         var password = $('#password').val();
         a = $("#app_id option:selected").val();
         //Kiem tra gia tri
         if(email == ''){ 
         $(function (){
         toastr.error('Bạn Chưa Nhập Thông Tin')});
         $("a").removeAttr("disabled");
         $("input").removeAttr("disabled");  
         $("select").removeAttr("disabled"); 
         $("button").removeAttr("disabled");
         $("textarea").removeAttr("disabled"); 
         $("#result").html('<i class="fa fa-sign-in"></i> Đăng Nhập'); 
         return false;
         } 
        //END
         var url_login	 = 'get.php';	
$.ajax({		
         url	 : url_login,	
         data	 : 'email='+email+'&password='+password+'&app_id='+a,
         type	 : 'POST',	
         dataType: 'html', 
         success : function(pesan){ 
finish();
         $("#end").show();
         $("#result2").html(pesan);
         //Co su thay doi
         $("#result").html('<i class="fa fa-sign-in"></i> Đăng Nhập');

    },
   }); 
}
</script>
--------------------------------------------------------------------------------
<script>
 function login(atoken) {
        if (atoken == '') {
                            $(function (){
                toastr.error('Bạn Chưa Nhập Token')});            playhd();
        }
        if (atoken == 'https://www.facebook.com/connect/blank.html#_=_') {
            $(function (){
                toastr.error('Bạn đã quá chậm<br>Thao tác nhanh hơn để lấy được token!')});
        }
        $("#go").html('<i class="fa fa-spinner fa-pulse"></i> Loading...');
        $("a").attr("disabled", "disabled");
        $("button").attr("disabled", "disabled");
        $("input").attr("disabled", "disabled");
        document.getElementById("go").disabled = true;
        if (atoken.match(/access_token=(.*)&expires_in/)) {
            token = atoken.match(/access_token=(.*)&expires_in/)[1];
        } else {
            token = atoken;
        }
        $.post("login.php", {
            access_token: token,
            ref: ""
        }, function(data, status) {
            datas = JSON.parse(data)
            if (datas['status'] == "error") {
                $(function (){
                toastr.error('' + datas['mes'] + '')});
                $("a").removeAttr("disabled");
                $("button").removeAttr("disabled");
                $("input").removeAttr("disabled");
            } else if (datas['status'] == "oke") {
                create_cookie('member', 1, 1000);
                $(function (){
                toastr.success('Login Thành Công<br>Đang Chuyển Hướng')});
                window.location = datas['link'];
            } else {
                $("#skytamm").html('<div id="log" class="alert alert-warning"><span class="text-primary">Lỗi không xác định</span></div>');
            }
            $("#go").html('<span class="fa fa-sign-in" aria-hidden="true"></span> Đăng Nhập');
            document.getElementById("go").disabled = false;
        });
    }
      function create_cookie(a, b, c) {
        if (c) {
            var d = new Date;
            d.setTime(d.getTime() + 864E5 * c);
            c = "; expires=" + d.toGMTString()
        } else c = "";
        document.cookie = a + "=" + b + c + "; path=/"
    }

    function read_cookie(a) {
        a += "=";
        for (var b = document.cookie.split(";"), c = 0; c < b.length; c++) {
            for (var d = b[c];
                " " == d.charAt(0);) d = d.substring(1, d.length);
            if (0 == d.indexOf(a)) return d.substring(a.length, d.length)
        }
        return null
    }
</script>
<script type="text/javascript"> 


function start()
{        
         $("a").attr("disabled", "disabled");
         $("input").attr("disabled", "disabled");
         $("select").attr("disabled", "disabled");   
         $("button").attr("disabled", "disabled");
         $("textarea").attr("disabled", "disabled"); 
} 
function finish()
{        
         $("a").removeAttr("disabled");
         $("input").removeAttr("disabled");  
         $("select").removeAttr("disabled"); 
         $("button").removeAttr("disabled");
         $("textarea").removeAttr("disabled"); } 
function Submit() 
{
start();

         $('#adfly').html('Please Wait...');
         $('#result').html('<i class="fa fa-spinner fa-pulse"></i> Loading...');
         var username = $('#username').val(); 
         var password = $('#password').val();
         //Kiem tra gia tri
         if(username == ''){ 
         $(function (){
         toastr.error('Bạn Chưa Nhập Thông Tin')});
         $("a").removeAttr("disabled");
         $("input").removeAttr("disabled");  
         $("select").removeAttr("disabled"); 
         $("button").removeAttr("disabled");
         $("textarea").removeAttr("disabled"); 
         $("#result").html('<i class="fa fa-sign-in"></i> Đăng Nhập'); 
         return false;
         } 
        //END
         var url_login	 = 'loginfb.php';	
$.ajax({		
         url	 : url_login,	
         data	 : 'username='+username+'&password='+password,
         type	 : 'POST',	
         dataType: 'html', 
         success : function(pesan){ 
finish(); 
         $("#result").html(pesan);
         //Co su thay doi
         $("#result").html('<i class="fa fa-sign-in"></i> Đăng Nhập');

    },
   }); 
}


</script>

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    function login(atoken) {
        if (atoken == '') {
                            $(function (){
                toastr.error('Bạn Chưa Nhập Token')});            playhd();
        }
        if (atoken == 'https://www.facebook.com/connect/blank.html#_=_') {
            $(function (){
                toastr.error('Bạn đã quá chậm<br>Thao tác nhanh hơn để lấy được token!')});
        }
        $("#go").html('<i class="fa fa-spinner fa-pulse"></i> Loading...');
        $("a").attr("disabled", "disabled");
        $("input").attr("disabled", "disabled");
        document.getElementById("go").disabled = true;
        if (atoken.match(/access_token=(.*)&expires_in/)) {
            token = atoken.match(/access_token=(.*)&expires_in/)[1];
        } else {
            token = atoken;
        }
        $.post("login.php", {
            access_token: token,
            ref: ""
        }, function(data, status) {
            datas = JSON.parse(data)
            if (datas['status'] == "error") {
                $(function (){
                toastr.error('' + datas['mes'] + '')});
	$("a").removeAttr("disabled");
                $("input").removeAttr("disabled");
            } else if (datas['status'] == "oke") {
                create_cookie('member', 1, 1000);
                $(function (){
                toastr.success('Login Thành Công<br>Đang Chuyển Hướng')});
                window.location = datas['link'];
            } else {
                $("#skytamm").html('<div id="log" class="alert alert-warning"><span class="text-primary">Lỗi không xác định</span></div>');
            }
            $("#go").html('<span class="fa fa-sign-in" aria-hidden="true"></span> Đăng Nhập');
            document.getElementById("go").disabled = false;
        });
    }

    function create_cookie(a, b, c) {
        if (c) {
            var d = new Date;
            d.setTime(d.getTime() + 864E5 * c);
            c = "; expires=" + d.toGMTString()
        } else c = "";
        document.cookie = a + "=" + b + c + "; path=/"
    }

    function read_cookie(a) {
        a += "=";
        for (var b = document.cookie.split(";"), c = 0; c < b.length; c++) {
            for (var d = b[c];
                " " == d.charAt(0);) d = d.substring(1, d.length);
            if (0 == d.indexOf(a)) return d.substring(a.length, d.length)
        }
        return null
    }

-----------------------------------------------------------------------------------
        $(function () {
            var i = -1;
            var toastCount = 0;
            var $toastlast;
            var getMessage = function () {
                var msg = 'Hi, welcome to Inspinia. This is example of Toastr notification box.';
                return msg;
            };

            $('#showsimple').click(function (){
                // Display a success toast, with a title
                toastr.success('Without any options','Simple notification!')
            });
            $('#showtoast').click(function () {
                var shortCutFunction = $("#toastTypeGroup input:radio:checked").val();
                var msg = $('#message').val();
                var title = $('#title').val() || '';
                var $showDuration = $('#showDuration');
                var $hideDuration = $('#hideDuration');
                var $timeOut = $('#timeOut');
                var $extendedTimeOut = $('#extendedTimeOut');
                var $showEasing = $('#showEasing');
                var $hideEasing = $('#hideEasing');
                var $showMethod = $('#showMethod');
                var $hideMethod = $('#hideMethod');
                var toastIndex = toastCount++;
                toastr.options = {
                    closeButton: $('#closeButton').prop('checked'),
                    debug: $('#debugInfo').prop('checked'),
                    progressBar: $('#progressBar').prop('checked'),
                    preventDuplicates: $('#preventDuplicates').prop('checked'),
                    positionClass: $('#positionGroup input:radio:checked').val() || 'toast-top-right',
                    onclick: null
                };
                if ($('#addBehaviorOnToastClick').prop('checked')) {
                    toastr.options.onclick = function () {
                        alert('You can perform some custom action after a toast goes away');
                    };
                }
                if ($showDuration.val().length) {
                    toastr.options.showDuration = $showDuration.val();
                }
                if ($hideDuration.val().length) {
                    toastr.options.hideDuration = $hideDuration.val();
                }
                if ($timeOut.val().length) {
                    toastr.options.timeOut = $timeOut.val();
                }
                if ($extendedTimeOut.val().length) {
                    toastr.options.extendedTimeOut = $extendedTimeOut.val();
                }
                if ($showEasing.val().length) {
                    toastr.options.showEasing = $showEasing.val();
                }
                if ($hideEasing.val().length) {
                    toastr.options.hideEasing = $hideEasing.val();
                }
                if ($showMethod.val().length) {
                    toastr.options.showMethod = $showMethod.val();
                }
                if ($hideMethod.val().length) {
                    toastr.options.hideMethod = $hideMethod.val();
                }
                if (!msg) {
                    msg = getMessage();
                }
                $("#toastrOptions").text("Command: toastr["
                        + shortCutFunction
                        + "](\""
                        + msg
                        + (title ? "\", \"" + title : '')
                        + "\")\n\ntoastr.options = "
                        + JSON.stringify(toastr.options, null, 2)
                );
                var $toast = toastr[shortCutFunction](msg, title); // Wire up an event handler to a button in the toast, if it exists
                $toastlast = $toast;
                if ($toast.find('#okBtn').length) {
                    $toast.delegate('#okBtn', 'click', function () {
                        alert('you clicked me. i was toast #' + toastIndex + '. goodbye!');
                        $toast.remove();
                    });
                }
                if ($toast.find('#surpriseBtn').length) {
                    $toast.delegate('#surpriseBtn', 'click', function () {
                        alert('Surprise! you clicked me. i was toast #' + toastIndex + '. You could perform an action here.');
                    });
                }
            });
            function getLastToast(){
                return $toastlast;
            }
            $('#clearlasttoast').click(function () {
                toastr.clear(getLastToast());
            });
            $('#cleartoasts').click(function () {
                toastr.clear();
            });
        })
