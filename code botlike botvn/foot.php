<div class="footer">
            <div class="pull-right">
                Quản Trị Và Phát Triển Bởi <a href="https://www.facebook.com/BotVn.Me.Project">Phước Tâmm</a>
            </div>
            <div>
                <strong>Copyright</strong> &copy; 2016 BotVn.Me
            </div>
        </div>

        </div>
        </div>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-81702797-1', 'auto');
  ga('send', 'pageview');

</script>



    <!-- Mainly scripts -->
    <script src="https://<?php echo $_SERVER['HTTP_HOST']; ?>/skytamm/js/jquery-2.1.1.js"></script>
    <script src="https://<?php echo $_SERVER['HTTP_HOST']; ?>/skytamm/js/bootstrap.min.js"></script>
    <script src="https://<?php echo $_SERVER['HTTP_HOST']; ?>/skytamm/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="https://<?php echo $_SERVER['HTTP_HOST']; ?>/skytamm/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <!-- Custom and plugin javascript -->
    <script src="https://<?php echo $_SERVER['HTTP_HOST']; ?>/skytamm/js/plugins/pace/pace.min.js"></script>
        <script src="https://<?php echo $_SERVER['HTTP_HOST']; ?>/skytamm/inspinia.js"></script>


    <!-- Toastr script -->
    <script src="https://<?php echo $_SERVER['HTTP_HOST']; ?>/skytamm/js/plugins/toastr/toastr.min.js"></script>
    <script type="text/javascript">
  toastr.options = {
  "closeButton": true,
  "debug": true,
  "newestOnTop": true,
  "progressBar": true,
  "positionClass": "toast-top-right",
  "preventDuplicates": false,
  "onclick": null,
  "showDuration": "300",
  "hideDuration": "1000",
  "timeOut": "5000",
  "extendedTimeOut": "1000",
  "showEasing": "swing",
  "hideEasing": "linear",
  "showMethod": "fadeIn",
  "hideMethod": "fadeOut"
}
    </script>
<!--      
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
    <div class="modal-content animated bounceInRight">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div><center>
        <div class="modal-body" id="dich">
          <p><b>Please choose your language</b></p>
        </div></center>
      </div>
      </div>
    </div>
  </div>
<div id="google_translate_element"></div><script type="text/javascript">
					function googleTranslateElementInit() {
						new google.translate.TranslateElement({pageLanguage: 'vi'}, 'dich');
						}
					</script><script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
-->
<div class="modal fade" id="popup_id">
	<div class="modal-dialog">
	<div class="modal-content animated bounceInRight">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Lấy ID Status, Ảnh, Video</h4>
			</div>
			<div class="ibox-content">
			<div class="row">
			<div class="col-sm-10">
				<form id="get_id_stt_form" method="POST" onsubmit="return false;">
<input type="text" class="form-control" id="get_id_stt_input" placeholder="Nhập Link Status/Ảnh/Video cần lấy ID" required>
					</div>
	<div class="col-sm-2">
                    <span class="pull-right">
                        <button type="submit" class="btn btn-danger btn-block"> Lấy ID</button>
                    </span></div></div>
				</form><br>
				<div id="get_id_stt_result" style="display:none;"></div>
			</div></div>
		</div>
	</div>
</div>
<style>
@-webkit-keyframes ld {
  0%   { transform: rotate(90deg) scale(1); }
  50%  { transform: rotate(0deg) scale(1.1); }
  100% { transform: rotate(60deg) scale(1); }
}
@-moz-keyframes ld {
  0%   { transform: rotate(0deg) scale(1); }
  50%  { transform: rotate(180deg) scale(1.1); }
  100% { transform: rotate(360deg) scale(1); }
}
@-o-keyframes ld {
  0%   { transform: rotate(0deg) scale(1); }
  50%  { transform: rotate(180deg) scale(1.1); }
  100% { transform: rotate(360deg) scale(1); }
}
@keyframes ld {
  0%   { transform: rotate(0deg) scale(1); }
  50%  { transform: rotate(180deg) scale(1.1); }
  100% { transform: rotate(360deg) scale(1); }
}

.m-progress {
    position: relative;
    opacity: .8;
    color: transparent;
}

.m-progress:hover,
.m-progress:active,
.m-progress:focus {
    cursor: default;
    color: transparent;
    outline: none !important;
    box-shadow: none;
}

.m-progress:before {
    content: '';
    
    display: inline-block;
    
    position: absolute;
    background: transparent;
    border: 2px solid #fff;
    border-top-color: transparent;
    border-bottom-color: transparent;
    border-radius: 50%;
    
    box-sizing: border-box;
    
    top: 50%;
    left: 50%;
    margin-top: -12px;
    margin-left: -12px;
    
    width: 24px;
    height: 24px;
    
    -webkit-animation: ld 1s ease-in-out infinite;
    -moz-animation:    ld 1s ease-in-out infinite;
    -o-animation:      ld 1s ease-in-out infinite;
    animation:         ld 1s ease-in-out infinite;
}

.btn-default.m-progress:before {
    border-left-color: #333333;
    border-right-color: #333333;
}

.btn-lg.m-progress:before {
    margin-top: -16px;
    margin-left: -16px;
    
    width: 32px;
    height: 32px;
}

.btn-sm.m-progress:before {
    margin-top: -9px;
    margin-left: -9px;
    
    width: 18px;
    height: 18px;
}

.btn-xs.m-progress:before {
    margin-top: -7px;
    margin-left: -7px;
    
    width: 14px;
    height: 14px;
}
</style>
<!-- JavaScript -->
<script src="https://<?php echo $_SERVER['HTTP_HOST']; ?>/skytamm2/getid.js"></script>
<script  type="text/javascript" src="https://<?php echo $_SERVER['HTTP_HOST']; ?>/skytamm/viewscn.js"></script>
<style>
	/* Creat By Sky Tâmm's */
        .spinner{margin:0;width:70px;height:18px;margin:-35px 0 0 -9px;position:absolute;top:50%;left:50%;text-align:center}.spinner > div{width:18px;height:18px;background-color:#FFFFFF;border-radius:100%;display:inline-block;-webkit-animation:bouncedelay 1.4s infinite ease-in-out;animation:bouncedelay 1.4s infinite ease-in-out;-webkit-animation-fill-mode:both;animation-fill-mode:both}.spinner .bounce1{-webkit-animation-delay:-.32s;animation-delay:-.32s}.spinner .bounce2{-webkit-animation-delay:-.16s;animation-delay:-.16s}@-webkit-keyframes bouncedelay{0%,80%,100%{-webkit-transform:scale(0.0)}40%{-webkit-transform:scale(1.0)}}@keyframes bouncedelay{0%,80%,100%{transform:scale(0.0);-webkit-transform:scale(0.0)}40%{transform:scale(1.0);-webkit-transform:scale(1.0)}}
    </style>
    <script type="text/javascript">
        $(window).load(function(){
            setTimeout(function() {
                $('#loading').fadeOut( 400, "linear" );
            }, 300);
        });
    </script>
<style>
    #loading {position: fixed;width: 100%;height: 100%;left: 0;top: 0;right: 0;bottom: 0;display: block;background: #000000;z-index: 10000; opacity: 0.6;}
</style>
<div id="loading">
    <div class="spinner">
        <div class="bounce1"></div>
        <div class="bounce2"></div>
        <div class="bounce3"></div>
    </div>
</div>
</body>

</html>
